/-
Small exact applications of the regular-certificate semantic bridge.
One checked cyclic closure/stack store handles a self-feeding source with
an arbitrary scoped payload. A cyclic source graph is separately rejected:
source acyclicity and cyclic abstract stores are different requirements.
-/
import Blc.SelfintRegularSoundness

namespace Blc.SelfintRegularExamples
open Term SelfintProbe SelfintRegularSoundness Certgen

def code : Array Code := #[.app 1 1,.lam 2,.app 3 5,.app 4 4,.var 0,.opaque]
def values : Values
  | 1 => [⟨1,[]⟩,⟨4,[1]⟩]
  | _ => []
def konts : Konts
  | 1 => [⟨⟨1,[]⟩,0⟩]
  | 2 => [⟨⟨4,[1]⟩,3⟩]
  | 3 => [⟨⟨5,[1]⟩,0⟩,⟨⟨5,[1]⟩,3⟩]
  | _ => []
def states : Array AState := #[
  ⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[1]⟩,0⟩,⟨⟨2,[1]⟩,3⟩,
  ⟨⟨3,[1]⟩,3⟩,⟨⟨4,[1]⟩,2⟩,⟨⟨1,[]⟩,2⟩]
def hints : Array (List Nat) := #[[1],[2],[4],[4],[5],[6,5],[3]]

theorem source_ordered : ordered code=true := by decide
theorem certificate : checkAll (codeAt code) values konts states hints=true := by decide
theorem entry_present : entry∈states :=
  Array.mem_of_getElem? (show states[0]?=some entry from rfl)

def helper (u : Term) : Term := .lam (.app (.app (.var 0) (.var 0)) u)
def source (u : Term) : Term := .app (helper u) (helper u)

theorem decode_source (u : Term) :
    decode (rankedCode code source_ordered) (fun _ => u) 0 = source u := by
  simp [decode,codeAt,code,source,helper]

/-- The hole may use the helper's x binder or any outer variables. The
certificate proves that it is never forced, for every such filling. -/
theorem source_unsolvable (u : Term) : ¬ Solvable (source u) := by
  have hh := checked_source_unsolvable source_ordered certificate entry_present (fun _ => u)
  simpa only [decode_source] using hh

def cyclicCode : Array Code := #[.app 0 0]

theorem cyclic_source_rejected : ordered cyclicCode=false := by decide

theorem cyclic_source_has_no_rank : ¬ Nonempty (CodeRank (codeAt cyclicCode)) := by
  rintro ⟨r⟩
  have hh := r.app_left_lt 0 0 0 rfl
  exact Nat.lt_irrefl _ hh

#print axioms source_unsolvable
#print axioms cyclic_source_has_no_rank
end Blc.SelfintRegularExamples
