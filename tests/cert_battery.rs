//! Certificate soundness battery (SPEC.md §6): run discovery and both
//! trusted verifiers over every closed term of 4..=28 bits that
//! provably HALTS, and assert no certificate ever fires. This tests the
//! implementation, not the math — a certificate on a halter would mean
//! a checker bug, since both glue theorems conclude "no normal form".
//!
//! The halt probe is the KN machine (any sound engine works — Ok means
//! a real normal form was reached), and terms fan out over rayon via
//! the enumerator's subtree tasks; both are why the full ≤28 sweep is a
//! default test rather than a nightly. Terms whose probe runs out of
//! fuel are skipped: not proven halters, nothing to assert.

use blc::cert::{discover, try_htr, verify};
use blc::enumerate::{enc_to_string, run_task, split_tasks};
use blc::parse_all;
use blc::vm::{Machine, SizeSink, TermPool};
use rayon::prelude::*;

#[test]
fn no_certificate_fires_on_any_small_halter() {
    let mut tasks = Vec::new();
    for n in 4..=28 {
        tasks.extend(split_tasks(n, 64));
    }
    let (halters, certified) = tasks
        .par_iter()
        .map(|task| {
            let mut pool = TermPool::new();
            let mut vm = Machine::new();
            let mut halters = 0u64;
            let mut certified = Vec::new();
            run_task(task, &mut |enc, len| {
                pool.clear();
                let root = pool.decode_u64(enc, len).unwrap();
                let mut sink = SizeSink::default();
                if vm.normalize(&pool, root, 100_000, &mut sink).is_err() {
                    return; // not a proven halter; out of scope
                }
                halters += 1;
                let bits = enc_to_string(enc, len);
                let t = parse_all(&bits).unwrap();
                if let Some(cert) = discover(&t, 2000, 200_000) {
                    if verify(&t, &cert, 4096, 2000, 200_000).is_ok() {
                        certified.push(format!("v1 certified halter {bits}"));
                    } else if try_htr(&t, &cert, 4096, 2000, 200_000).is_some() {
                        certified.push(format!("htr certified halter {bits}"));
                    }
                }
            });
            (halters, certified)
        })
        .reduce(
            || (0, Vec::new()),
            |(h1, mut c1), (h2, c2)| {
                c1.extend(c2);
                (h1 + h2, c1)
            },
        );
    assert!(halters > 150_000, "battery under-populated: {halters}");
    assert!(certified.is_empty(), "{certified:?}");
}
