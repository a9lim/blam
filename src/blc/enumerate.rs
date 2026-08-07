//! Enumerate all closed terms of BLC size exactly n, as packed
//! (bits, length) pairs — a term ≤ 63 bits IS a u64, which makes
//! enumeration items trivially chunkable, hashable, and storable.
//!
//! Grammar mirrors BB.lhs `gen v n` (sizes: Var i = i+1 for our 1-based i,
//! Lam adds 2, App adds 2): at v enclosing binders,
//!   Var: size n ≥ 2 encodes index n−1, valid iff n−1 ≤ v;
//!   Lam: n ≥ 4, body (v+1, n−2);
//!   App: first (v, i) for i in 2..=n−4, second (v, n−2−i).
//!
//! Bits are accumulated left-to-right in the low end of the u64:
//! `acc = acc<<1 | bit`; decode reads from bit len−1 down.

/// Call `f(enc, len)` for every closed term of size exactly `n` bits.
///
/// # Panics
///
/// If `n > 63`. The whole enumeration is (bits, length) packed into a
/// `u64`, so 63 bits is the representation's ceiling, not a tunable.
pub fn for_each_closed(n: u32, f: &mut impl FnMut(u64, u8)) {
    assert!(n <= 63, "u64-packed enumeration caps at 63 bits");
    let mut pending: Vec<(u32, u32)> = vec![(0, n)];
    go(&mut pending, 0, 0, f);
}

fn go(pending: &mut Vec<(u32, u32)>, acc: u64, len: u8, f: &mut impl FnMut(u64, u8)) {
    let Some((v, n)) = pending.pop() else {
        f(acc, len);
        return;
    };
    // Variable: 1^(n-1) 0
    if n >= 2 && n - 1 <= v {
        let bits = ((1u64 << (n - 1)) - 1) << 1;
        go(pending, acc << n | bits, len + n as u8, f);
    }
    // Abstraction: 00 body
    if n >= 4 {
        pending.push((v + 1, n - 2));
        go(pending, acc << 2, len + 2, f);
        pending.pop();
    }
    // Application: 01 first second (obligations pushed in reverse)
    for i in 2..=n.saturating_sub(4) {
        pending.push((v, n - 2 - i));
        pending.push((v, i));
        go(pending, acc << 2 | 1, len + 2, f);
        pending.pop();
        pending.pop();
    }
    pending.push((v, n));
}

/// A suspended enumeration state: continue with `run_task` to produce the
/// subtree of terms under this prefix. Splitting the enumeration tree into
/// many tasks lets generation itself run fused with (and as parallel as)
/// whatever consumes the terms — no materialized item list.
#[derive(Debug, Clone)]
pub struct GenTask {
    pending: Vec<(u32, u32)>,
    acc: u64,
    len: u8,
}

/// Partition the size-n enumeration into at least `target` independent
/// tasks (or as many as the tree allows).
pub fn split_tasks(n: u32, target: usize) -> Vec<GenTask> {
    split_tasks_at(0, n, 0, 0, target)
}

/// `split_tasks` generalized to a seeded root: enumerate terms with `v`
/// enclosing binders and size exactly `n`, emitted under an already-fixed
/// bit prefix. The λ⁵-idiom sweeps seed (v=5, n−10) under the ten prefix
/// bits of five abstractions; emitted (enc, len) pairs are then complete
/// closed programs, directly runnable by the packed-term engines.
///
/// # Panics
///
/// If `n + prefix_len > 63` — prefix bits and body bits share the one
/// `u64`, so the seeded form's ceiling counts both.
pub fn split_tasks_at(v: u32, n: u32, prefix: u64, prefix_len: u8, target: usize) -> Vec<GenTask> {
    assert!(
        n + prefix_len as u32 <= 63,
        "u64-packed enumeration caps at 63 bits: {n} body + {prefix_len} prefix"
    );
    let mut cur = vec![GenTask {
        pending: vec![(v, n)],
        acc: prefix,
        len: prefix_len,
    }];
    while cur.len() < target {
        let mut next = Vec::new();
        let mut expanded = false;
        for t in cur.drain(..) {
            let mut pending = t.pending;
            let Some((v, n)) = pending.pop() else {
                next.push(GenTask {
                    pending,
                    acc: t.acc,
                    len: t.len,
                });
                continue;
            };
            expanded = true;
            if n >= 2 && n - 1 <= v {
                let bits = ((1u64 << (n - 1)) - 1) << 1;
                next.push(GenTask {
                    pending: pending.clone(),
                    acc: t.acc << n | bits,
                    len: t.len + n as u8,
                });
            }
            if n >= 4 {
                let mut p = pending.clone();
                p.push((v + 1, n - 2));
                next.push(GenTask {
                    pending: p,
                    acc: t.acc << 2,
                    len: t.len + 2,
                });
            }
            for i in 2..=n.saturating_sub(4) {
                let mut p = pending.clone();
                p.push((v, n - 2 - i));
                p.push((v, i));
                next.push(GenTask {
                    pending: p,
                    acc: t.acc << 2 | 1,
                    len: t.len + 2,
                });
            }
        }
        cur = next;
        if !expanded {
            break;
        }
    }
    cur
}

/// Bit-reversal interleave of a task list. Expensive terms cluster by
/// enumeration prefix, and adjacent tasks are adjacent prefixes; rayon
/// splits `par_iter` by index range, so a contiguous expensive family
/// lands in one leaf and serializes its whole tail. Reordering by
/// reversed index scatters each prefix family across the index space.
/// Values are unaffected; only reduce order (and thus which witness
/// wins a tie, absent a total tie-break) changes.
pub fn interleave_tasks(tasks: Vec<GenTask>) -> Vec<GenTask> {
    let m = tasks.len();
    if m < 2 {
        return tasks;
    }
    let bits = usize::BITS - (m - 1).leading_zeros();
    let mut order: Vec<usize> = (0..m).collect();
    order.sort_unstable_by_key(|&i| i.reverse_bits() >> (usize::BITS - bits));
    // Move each task to its new slot instead of cloning it — a `GenTask`
    // owns a heap `pending`, so the old `tasks[i].clone()` allocated once
    // per task and dropped the originals immediately after. The key is
    // injective on 0..m (it is a bit-reversal of the low `bits` bits, and
    // m ≤ 2^bits), so `order` is a permutation and every `take` finds its
    // task present exactly once — pinned by `interleave_is_a_permutation`.
    // Output order is unchanged, which `interleave_order_is_pinned`
    // holds to the pre-refactor goldens.
    let mut slots: Vec<Option<GenTask>> = tasks.into_iter().map(Some).collect();
    order
        .into_iter()
        .map(|i| {
            slots[i]
                .take()
                .expect("bit-reversal order is a permutation")
        })
        .collect()
}

/// Produce every term in a task's subtree.
pub fn run_task(task: &GenTask, f: &mut impl FnMut(u64, u8)) {
    let mut pending = task.pending.clone();
    go(&mut pending, task.acc, task.len, f);
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::blc::wire::{enc_to_string, parse_all};

    /// Count closed terms of size exactly n (OEIS A114852).
    fn count_closed(n: u32) -> u64 {
        let mut c = 0u64;
        for_each_closed(n, &mut |_, _| c += 1);
        c
    }

    #[test]
    fn counts_match_a114852() {
        // Spot values confirmed three independent ways during research
        // (own enumerator, Tromp's BB.txt, OEIS b-file).
        assert_eq!(count_closed(4), 1); // \1
        assert_eq!(count_closed(5), 0);
        assert_eq!(count_closed(6), 1); // \\1
        assert_eq!(count_closed(20), 883);
        assert_eq!(count_closed(24), 8574);
    }

    #[test]
    fn emitted_terms_are_wellformed() {
        for n in 4..=20 {
            for_each_closed(n, &mut |enc, len| {
                assert_eq!(len as u32, n);
                let t = parse_all(&enc_to_string(enc, len)).unwrap();
                assert!(t.is_closed());
                assert_eq!(t.bit_size(), n as u64);
            });
        }
    }

    #[test]
    fn split_tasks_cover_exactly() {
        for n in [10u32, 17, 22] {
            let mut direct = Vec::new();
            for_each_closed(n, &mut |e, l| direct.push((e, l)));
            direct.sort_unstable();
            for target in [1usize, 7, 64, 1000] {
                let mut via = Vec::new();
                for t in split_tasks(n, target) {
                    run_task(&t, &mut |e, l| via.push((e, l)));
                }
                via.sort_unstable();
                assert_eq!(via, direct, "n={n} target={target}");
            }
        }
    }

    #[test]
    fn seeded_tasks_are_the_lambda5_slice() {
        // The λ⁵-idiom seed must produce exactly the closed size-n programs
        // whose wire code starts with five abstractions.
        for n in [16u32, 20, 24] {
            let mut direct = Vec::new();
            for_each_closed(n, &mut |e, l| {
                if enc_to_string(e, l).starts_with("0000000000") {
                    direct.push((e, l));
                }
            });
            direct.sort_unstable();
            for target in [1usize, 13, 200] {
                let mut via = Vec::new();
                for t in split_tasks_at(5, n - 10, 0, 10, target) {
                    run_task(&t, &mut |e, l| via.push((e, l)));
                }
                via.sort_unstable();
                assert_eq!(via, direct, "n={n} target={target}");
            }
        }
    }

    /// Tasks distinguishable by `acc`, so a permutation is readable off
    /// the result.
    fn numbered_tasks(m: usize) -> Vec<GenTask> {
        (0..m)
            .map(|i| GenTask {
                pending: vec![(i as u32, 0)],
                acc: i as u64,
                len: 0,
            })
            .collect()
    }

    fn interleaved_order(m: usize) -> Vec<usize> {
        interleave_tasks(numbered_tasks(m))
            .iter()
            .map(|t| t.acc as usize)
            .collect()
    }

    /// AGENTS.md pins the bit-reversal interleave: "tasks are
    /// bit-reversal-interleaved on purpose ... do not simplify the order
    /// back". This is the guard that makes that pin mechanical. Goldens
    /// are the orders the pre-refactor implementation produced.
    #[test]
    fn interleave_order_is_pinned() {
        assert_eq!(interleaved_order(8), vec![0, 4, 2, 6, 1, 5, 3, 7]);
        assert_eq!(interleaved_order(5), vec![0, 4, 2, 1, 3]);
        assert_eq!(
            interleaved_order(12),
            vec![0, 8, 4, 2, 10, 6, 1, 9, 5, 3, 11, 7]
        );
        assert_eq!(interleaved_order(1), vec![0]);
        assert_eq!(interleaved_order(2), vec![0, 1]);
        assert_eq!(interleaved_order(3), vec![0, 2, 1]);
    }

    /// The same order, characterized independently of the implementation:
    /// walk 0..2^bits in bit-reversed order and keep the indices that
    /// exist. Ties cannot arise — the key is injective on 0..m — so the
    /// order does not depend on sort stability.
    #[test]
    fn interleave_matches_bit_reversal_formula() {
        // m < 2 short-circuits in the implementation and has no `bits`.
        assert_eq!(interleaved_order(1), vec![0]);
        for m in 2usize..=300 {
            let bits = usize::BITS - (m - 1).leading_zeros();
            let expect: Vec<usize> = (0..(1usize << bits))
                .map(|j| j.reverse_bits() >> (usize::BITS - bits))
                .filter(|&i| i < m)
                .collect();
            assert_eq!(interleaved_order(m), expect, "m={m}");
        }
    }

    /// Whatever the order, it must move every task exactly once — no
    /// drop, no duplicate. The refactor away from per-task cloning is
    /// only safe if this holds.
    #[test]
    fn interleave_is_a_permutation() {
        for m in [1usize, 2, 3, 7, 64, 100, 1024, 1153] {
            let mut got = interleaved_order(m);
            assert_eq!(got.len(), m, "m={m}");
            got.sort_unstable();
            assert_eq!(got, (0..m).collect::<Vec<_>>(), "m={m}");
        }
    }

    /// The payload travels with the index: interleaving must not shear
    /// `pending` off the `acc` it belongs to.
    #[test]
    fn interleave_keeps_task_fields_together() {
        for t in interleave_tasks(numbered_tasks(37)) {
            assert_eq!(t.pending, vec![(t.acc as u32, 0)]);
        }
    }

    #[test]
    fn no_duplicates_small() {
        use std::collections::HashSet;
        for n in 4..=22 {
            let mut seen = HashSet::new();
            for_each_closed(n, &mut |enc, len| {
                assert!(seen.insert((enc, len)));
            });
        }
    }
}
