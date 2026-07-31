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
#[derive(Clone)]
pub struct GenTask {
    pending: Vec<(u32, u32)>,
    acc: u64,
    len: u8,
}

/// Partition the size-n enumeration into at least `target` independent
/// tasks (or as many as the tree allows).
pub fn split_tasks(n: u32, target: usize) -> Vec<GenTask> {
    assert!(n <= 63);
    let mut cur = vec![GenTask {
        pending: vec![(0, n)],
        acc: 0,
        len: 0,
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

/// Produce every term in a task's subtree.
pub fn run_task(task: &GenTask, f: &mut impl FnMut(u64, u8)) {
    let mut pending = task.pending.clone();
    go(&mut pending, task.acc, task.len, f);
}

/// Count closed terms of size exactly n (OEIS A114852).
pub fn count_closed(n: u32) -> u64 {
    let mut c = 0u64;
    for_each_closed(n, &mut |_, _| c += 1);
    c
}

/// Render a packed term as a '0'/'1' string.
pub fn enc_to_string(enc: u64, len: u8) -> String {
    (0..len)
        .rev()
        .map(|j| if enc >> j & 1 == 1 { '1' } else { '0' })
        .collect()
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::parse_all;

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
