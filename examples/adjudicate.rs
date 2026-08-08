//! The halting ladder on two famous terms: a two-step halter and Ω.
//!
//! Usage: cargo run --release --example adjudicate

use blam::classical::ladder::{self, LadderCfg, Verdict};
use blam::classical::machine::{Machine, Pool, SizeSink};

fn main() {
    let cfg = LadderCfg::default(); // the canonical census budgets
    let mut pool = Pool::new();
    let mut vm = Machine::new();

    for bits in ["01000110100010", "010001101000011010"] {
        pool.clear();
        let root = pool.decode_str(bits).expect("closed term");
        let mut sink = SizeSink::default();
        let o = ladder::adjudicate(&cfg, &pool, &mut vm, root, &mut sink);
        match o.verdict {
            // Read |nf| through `resolve`, never off the sink alone: on a
            // pre-scan halt (the term is its own normal form) the ladder
            // skips readback and the sink stays empty.
            Verdict::Halt { nf, steps } => {
                println!("{bits}: HALT |nf|={} steps={steps:?}", nf.resolve(sink.0))
            }
            Verdict::Diverge => println!("{bits}: DIVERGE (rung {:?})", o.rung),
            Verdict::Unknown(why) => println!("{bits}: UNKNOWN ({why})"),
        }
    }
}
