//! Prepare a Bell pair in qBLC and inspect the exact leaf.
//!
//! Usage: cargo run --release --example bell

use blam::qeval::{apply_signature, run, Fate, Prim, QBudget};
use blam::term::{app, lam, var};

fn main() {
    // The five-λ idiom binds the signature; under `p h meas new cnot t`
    // the binders are h=5, meas=4, new=3, cnot=2, t=1 (1-indexed de
    // Bruijn, innermost = 1). Body: cnot (h (new t)) (new t).
    let body = app(
        app(var(2), app(var(5), app(var(3), var(1)))),
        app(var(3), var(1)),
    );
    let p = (0..5).fold(body, |b, _| lam(b));
    println!("program: {} bits  {}", p.bit_size(), p.to_bits());

    let order = [Prim::H, Prim::Meas, Prim::New, Prim::Cnot, Prim::T];
    let leaves = run(apply_signature(&p, &order), &QBudget::default());

    for leaf in &leaves {
        match &leaf.fate {
            Fate::Halt(store) => println!(
                "Halt: {} live qubits, amps {:?}, mass {:?}, {} contractions",
                store.live_count(),
                store.amps,
                leaf.mass,
                leaf.steps
            ),
            other => println!("{other:?}: mass {:?}", leaf.mass),
        }
    }
}
