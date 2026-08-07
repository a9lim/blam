//! oddmin prototype driver — the SPEC-ODDMIN §8 gated growth run.
//!
//! Builds the weighted summary DP bottom-up (bases are VARIABLES
//! ONLY — primitive axioms live exclusively in the closing
//! environment) and reports, per weight: unique
//! canonical summaries, node/edge totals, app-pair volume, ⊤ cells
//! (growth-gate aborts inside one splice), and closed-acceptance
//! results at depth 0. Stop rule: > 10⁶ summaries at any weight.
//!
//! Usage: `oddminproto [max_weight]` (default 24; report printed per
//! completed weight so a stop loses nothing).

use blam::oddmin::{app_ref, closed_accepts, lam_ref, var_ref, MaskAutomaton, Summary};
use std::collections::BTreeSet;
use std::time::Instant;

fn main() {
    let max_w: u32 = std::env::args()
        .nth(1)
        .map(|s| s.parse().expect("max weight"))
        .unwrap_or(24);
    let ma = MaskAutomaton::build();
    // cells[w][d] = canonical summaries of weight-w terms with free
    // vars ≤ d; d is capped by the enclosing-lambda budget
    // (W - w)/2 so every cell can still appear inside a closed
    // max_w-bit program.
    let dmax = |w: u32| ((max_w - w) / 2) as usize;
    let mut cells: Vec<Vec<BTreeSet<Summary>>> = vec![Vec::new(); max_w as usize + 1];
    let t0 = Instant::now();
    let mut top_cells = 0u64;
    for w in 2..=max_w {
        let tw = Instant::now();
        let d_hi = dmax(w);
        let mut per_d: Vec<BTreeSet<Summary>> = vec![BTreeSet::new(); d_hi + 1];
        // Variable bases (no primitive axioms — gate 15).
        if w >= 2 {
            let i = w - 1; // weight(Var i) = i + 1
            if i <= 63 {
                for (d, set) in per_d.iter_mut().enumerate() {
                    if i as usize <= d {
                        set.insert(var_ref(i as u8));
                    }
                }
            }
        }
        // Lambda closures over the previous layer.
        if w >= 4 {
            for (d, set) in per_d.iter_mut().enumerate() {
                let inner = &cells[(w - 2) as usize];
                if let Some(src) = inner.get(d + 1) {
                    for s in src {
                        set.insert(lam_ref(s));
                    }
                }
            }
        }
        // Applications.
        let mut app_pairs = 0u64;
        if w >= 6 {
            for w1 in 2..=(w - 4) {
                let w2 = w - 2 - w1;
                for (d, set) in per_d.iter_mut().enumerate() {
                    let (fs, as_) = (&cells[w1 as usize], &cells[w2 as usize]);
                    let (Some(fs), Some(as_)) = (fs.get(d), as_.get(d)) else {
                        continue;
                    };
                    for f in fs {
                        for a in as_ {
                            app_pairs += 1;
                            match app_ref(f, a) {
                                Ok(s) => {
                                    set.insert(s);
                                }
                                Err(_) => top_cells += 1,
                            }
                        }
                    }
                }
            }
        }
        // Depth-monotone closure: cell(w, d) ⊆ cell(w, d+1).
        for d in 1..=d_hi {
            let lower: Vec<Summary> = per_d[d - 1].iter().cloned().collect();
            per_d[d].extend(lower);
        }
        let uniq: BTreeSet<&Summary> = per_d.iter().flatten().collect();
        let nodes: u64 = uniq.iter().map(|s| s.node_count as u64).sum();
        let edges: u64 = uniq.iter().map(|s| s.edges.len() as u64).sum();
        // Closed acceptance at depth 0.
        let mut accepts = Vec::new();
        let mut closed_top = 0u64;
        if let Some(closed) = per_d.first() {
            for s in closed {
                match closed_accepts(s, &ma) {
                    Ok(true) => accepts.push(s.node_count),
                    Ok(false) => {}
                    Err(_) => closed_top += 1,
                }
            }
        }
        println!(
            "w={w:2}  uniq {:6}  (closed {:5})  nodes {nodes:7}  edges {edges:8}  \
             app-pairs {app_pairs:9}  splice-top {top_cells:3}  closed-top {closed_top:2}  \
             accepts {:?}  [{:.2?} / {:.2?}]",
            uniq.len(),
            per_d.first().map_or(0, |s| s.len()),
            accepts,
            tw.elapsed(),
            t0.elapsed(),
        );
        if uniq.len() > 1_000_000 {
            println!("STOP RULE: >10^6 summaries at weight {w}");
            return;
        }
        cells[w as usize] = per_d;
    }
}
