import Blc.Selfint40Evidence.Indexed
import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Blc.Floor44.Packed
open Certgen Certgen.FloorIndex SelfintRegularSoundness WeakHeadClock
structure Vec where
  width : Nat
  bits : Nat
def Vec.atN (v : Vec) (i : Nat) : Nat := (v.bits >>> (v.width*i)) % (2^v.width)
structure Rows where
  start : Vec
  lens : Vec
  xs : Vec
def Rows.map (s : Rows) (f : Nat → α) (i : Nat) : List α :=
  (List.range (s.lens.atN i)).map fun j => f (s.xs.atN (s.start.atN i+j))
structure Data where
  statePC : Vec
  stateEnv : Vec
  stateSP : Vec
  envs : Rows
  clPC : Vec
  clEnv : Vec
  frC : Vec
  frRest : Vec
  vals : Rows
  konts : Rows
  hints : Rows
def Data.cl (d : Data) (i : Nat) : AClo := ⟨d.clPC.atN i,d.envs.map id (d.clEnv.atN i)⟩
def Data.fr (d : Data) (i : Nat) : Frame := ⟨d.cl (d.frC.atN i),d.frRest.atN i⟩
def Data.v (d : Data) : Values := d.vals.map d.cl
def Data.k (d : Data) : Konts := d.konts.map d.fr
def Data.st (d : Data) (i : Nat) : AState :=
  ⟨⟨d.statePC.atN i,d.envs.map id (d.stateEnv.atN i)⟩,d.stateSP.atN i⟩
def Data.valid (d : Data) (P : Nat → Code) (i : Nat) : Bool :=
  FloorIndex.check P d.v d.k d.st i (d.hints.map id i)
theorem Data.excludes (d : Data) (m : Model P) (N : Nat)
    (h0 : d.st 0 = entry) (hv : ∀ i<N, d.valid P i = true) (pos : 0<N)
    (hout : ∀ i, N≤i → d.st i = entry) (n : Nat) : ¬ Count (m.term 0) n := by
  apply FloorIndex.sound m d.st h0
  intro i
  by_cases hi : i<N
  · exact ⟨_,hv i hi⟩
  · refine ⟨d.hints.map id 0,?_⟩
    unfold FloorIndex.check
    rw [hout _ (by omega),←h0]
    exact hv 0 pos
-- Defaulting the total state lookup outside the checked table avoids a
-- handwritten bit-length bound on a particular numeral.
def get (d : Data) (N i : Nat) := if i<N then d.st i else entry
def valid (d : Data) (P : Nat → Code) (N i : Nat) :=
  FloorIndex.check P d.v d.k (get d N) i (d.hints.map id i)
theorem excludes (d : Data) (m : Model P) (N : Nat)
    (h0 : get d N 0 = entry) (hv : ∀ i<N, valid d P N i = true) (pos : 0<N)
    (n : Nat) : ¬ Count (m.term 0) n := by
  apply FloorIndex.sound m (get d N) h0
  intro i
  by_cases hi : i<N
  · exact ⟨_,hv i hi⟩
  · refine ⟨d.hints.map id 0,?_⟩
    unfold FloorIndex.check
    rw [show get d N i = entry by simp [get,hi],←h0]
    exact hv 0 pos
end Blc.Floor44.Packed
