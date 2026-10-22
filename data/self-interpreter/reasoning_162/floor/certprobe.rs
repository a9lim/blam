extern crate blam;
pub use blam::blc;
#[path = "/Users/a9lim/Work/blam/src/classical/certificate/mod.rs"]
mod certificate;
use certificate::{CertBudgets,search::{try_kill,Kill}};
fn main() {
 let path=std::env::args().nth(1).unwrap();
 let input=std::fs::read_to_string(path).unwrap();
 let budget=CertBudgets {steps:200,nodes:20000,lemma_steps:500};
 for line in input.lines() {
  let mut cols=line.split('\t'); let id=cols.next().unwrap();let bits=cols.next().unwrap();
  let t=blc::wire::parse_all(bits).unwrap();
  match try_kill(&t,&budget) {
   Some(Kill::V1(c,_))=>println!("{id}\tRATCHET\t{bits}\thead={}\tw={}\tc0={}",c.a.to_bits(),c.w,c.c0.to_bits()),
   Some(Kill::Htr(c,_))=>println!("{id}\tRATCHET2\t{bits}\thead={}\tw={}\tc0={}\ti={}",c.a.to_bits(),c.w,c.c0.to_bits(),c.i.to_bits()),
   Some(Kill::Selector(c,_))=>println!("{id}\tSELECTOR\t{bits}\thead={}\tw={}\tp={}\tc0={}",c.a.to_bits(),c.w,c.p,c.c0.to_bits()),
   Some(Kill::Pdr(c,_))=>println!("{id}\tPDR\t{bits}\thead={}\tw={}\tp={}\tc0={}",c.a.to_bits(),c.w,c.p,c.c0.to_bits()),
   None=>println!("{id}\tnone\t{bits}")
  }
 }
}
