/-
The helper template with any specializer P built from g and s, including
lambdas, divergence and repeated uses. If λs. ((λg. s (g P) (g s)) A) j or
(λg s. s (g P) (g s) j) A satisfies `SelfintClass.Reader` with one source j,
its weight is at least 46, for an arbitrary helper A (`local_stream_floor`,
`root_stream_floor`). In the local placement A costs at least 10 bits
(`local_helper_ten`), and below weight 46 P is g, s, λu.u or λu.g
(`specializer_boundary`). `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based; at the root of a reader c=0 and j=1, with probe
suffix N=2 and zero tag r=3; beneath the stream binder s=0, c=1, j=2. In P,
g=0 and s=1 locally; s=0 and g=1 at the root.
-/
import Blc.SelfintSourceBody
import Blc.SelfintStreamHelpers
namespace Blc.SelfintStreamSpecializer
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintHelperPair SelfintClosedSpecializer SelfintStreamHelpers

set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

/-- Every returned object is an actual reduct, even on fuel exhaustion.
    Only a subsequently certified rigid c head gives an exclusion. -/
def advance : Nat → Term → Term
  | 0,t => t
  | n+1,t => match weakStep t with
    | none => t
    | some u => advance n u

theorem advance_sound (n : Nat) (t : Term) : Betas t (advance n t) := by
  induction n generalizing t with
  | zero => exact .refl _
  | succ n ih =>
    simp only [advance]
    cases hh : weakStep t with
    | none => exact .refl _
    | some u => exact .head (weakStep_beta hh) (ih u)

/-- P may contain g, s, c, or j and need not normalize. None of these
    eight helper shapes ever needs to inspect P before exposing c. -/
theorem smallC_anyP (a : Term) (hm : a ∈ smallC) (p : Term) :
    headIs 0 (advance 16 (.app (localWith a p) Z)) = true := by
  simp only [smallC,List.mem_cons,List.not_mem_nil,or_false] at hm
  rcases hm with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl

theorem local_price (a p : Term) (hp : FreeUnder 2 p) (ha : occ 2 a=0) :
    weight 0 (localWith a p) = 30 + wire p + wire a := by
  have hh := weight_no_hole p 2 (occ_of_freeUnder p 2 3 hp (by omega))
  have ht := weight_no_hole a 1 ha
  simp only [localWith,weight,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte,hh,ht]
  omega

theorem local_helper_ten {a p : Term} (hp : FreeUnder 2 p)
    (hr : Reader (localWith a p)) (hj : occ 1 (localWith a p)=1) : 10 ≤ wire a := by
  apply Classical.byContradiction
  intro hbad
  have hp2 := occ_of_freeUnder p 2 2 hp (by omega)
  have hp3 := occ_of_freeUnder p 2 3 hp (by omega)
  have ha : occ 2 a=0 := by simpa [localWith,occ,hp3] using hj
  have hc : 0<occ 1 a := by
    have hh := reader_c hr
    simp only [localWith,occ,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte,
      Nat.zero_add,Nat.add_zero,hp2] at hh
    omega
  have hm := nine_bit_capture a (by omega) hc ha
  have hh := headIs_sound _ 0 (smallC_anyP a hm p)
  exact c_head_contradiction hr (advance_sound 16 _) hh

def specializers : List Term := [.var 0,.var 1,.lam (.var 0),.lam (.var 1)]

theorem small_specializer (p : Term) (hp : FreeUnder 2 p) (hw : wire p ≤ 5) :
    p ∈ specializers := by
  cases p with
  | var n =>
    have hn : n=0 ∨ n=1 := by change n<2 at hp; omega
    rcases hn with rfl | rfl <;> simp [specializers]
  | lam b =>
    have hh := wire_three b (by simp only [wire_lam] at hw; omega)
    rcases hh with rfl | rfl <;> simp [specializers]
  | app f a =>
    have hf := wire_min f; have ha := wire_min a
    simp only [wire_app] at hw; omega

/-- All arbitrary syntax in P collapses to four literal source choices
    at the original budget, before P or A is reduced. -/
theorem specializer_boundary {a p : Term} (hp : FreeUnder 2 p)
    (hr : Reader (localWith a p)) (hj : occ 1 (localWith a p)=1)
    (hw : weight 0 (localWith a p) ≤ 45) :
    p ∈ specializers ∧ wire a ≤ 13 := by
  have hp3 := occ_of_freeUnder p 2 3 hp (by omega)
  have ha : occ 2 a=0 := by simpa [localWith,occ,hp3] using hj
  have hA := local_helper_ten hp hr hj
  have hP := wire_min p
  have he := local_price a p hp ha
  exact ⟨small_specializer p hp (by omega),by omega⟩

/-- Every surviving source case has a concrete wrong normal form on zero
    or the shortest unary stream. No exhausted trace is a certificate. -/
theorem capture13_reject : specializers.all (fun p => capture13.all (fun a =>
    !decide (weight 0 (localWith a p) ≤ 45) || rejectsProbes (localWith a p))) = true := by
  decide

/-- Arbitrary source helpers and arbitrary specializers built from g and
    s cannot beat 46 in this local sharing context. No minimum-reader or
    source-normal-form assumption is used. -/
theorem local_stream_floor {a p : Term} (hp : FreeUnder 2 p)
    (hr : Reader (localWith a p)) (hj : occ 1 (localWith a p)=1) :
    46 ≤ weight 0 (localWith a p) := by
  apply Classical.byContradiction
  intro hbad
  have hw : weight 0 (localWith a p) ≤ 45 := by omega
  have hb := specializer_boundary hp hr hj hw
  have hp2 := occ_of_freeUnder p 2 2 hp (by omega)
  have hp3 := occ_of_freeUnder p 2 3 hp (by omega)
  have ha : occ 2 a=0 := by simpa [localWith,occ,hp3] using hj
  have hc : 0<occ 1 a := by
    have hh := reader_c hr
    simp only [localWith,occ,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte,
      Nat.zero_add,Nat.add_zero,hp2] at hh
    omega
  have hm := capture_thirteen a hb.2 hc ha hr.scope.1.2
  have hh := List.all_eq_true.mp (List.all_eq_true.mp capture13_reject p hb.1) a hm
  have hh' : rejectsProbes (localWith a p)=true := by simpa [hw] using hh
  exact rejectsProbes_sound hh' hr

theorem root_price (a p : Term) (hp : FreeUnder 2 p) (ha : occ 1 a=0) :
    weight 0 (rootWith a p) = 34 + wire p + wire a := by
  have hh := weight_no_hole p 2 (occ_of_freeUnder p 2 3 hp (by omega))
  have ht := weight_no_hole a 0 ha
  simp only [rootWith,weight,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte,hh,ht]
  omega

theorem safeRoot_anyP (a : Term) (hm : a ∈ safeRoot) (p : Term) :
    headIs 0 (advance 16 (.app (rootWith a p) Z)) = true := by
  simp only [safeRoot,List.mem_cons,List.not_mem_nil,or_false] at hm
  rcases hm with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl

theorem root9_stream_reject :
    root9.all (fun a => rejectsProbes (rootWith a (.var 0)))=true := by decide

/-- The corresponding root let also costs at least46. Here P is scoped
    in [s,g], so its variable0 is the stream. -/
theorem root_stream_floor {a p : Term} (hp : FreeUnder 2 p)
    (hr : Reader (rootWith a p)) (hj : occ 1 (rootWith a p)=1) :
    46 ≤ weight 0 (rootWith a p) := by
  apply Classical.byContradiction
  intro hbad
  have hp2 := occ_of_freeUnder p 2 2 hp (by omega)
  have hp3 := occ_of_freeUnder p 2 3 hp (by omega)
  have ha : occ 1 a=0 := by simpa [rootWith,occ,hp3] using hj
  have hc : 0<occ 0 a := by
    have hh := reader_c hr
    simp only [rootWith,occ,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte,
      Nat.zero_add,Nat.add_zero,hp2] at hh
    omega
  have hw := root_price a p hp ha
  have hpw := wire_min p
  have hm := root_nine a (by omega) hc ha hr.scope.2
  have hm' := hm
  simp only [root9,List.mem_append,List.mem_cons,List.not_mem_nil,or_false] at hm
  rcases hm with hm | rfl | rfl
  · exact c_head_contradiction hr (advance_sound 16 _)
      (headIs_sound _ 0 (safeRoot_anyP a hm p))
  · have he := wire_two p (by simp only [wire_lam,wire_app,wire_var] at hw; omega)
    subst p
    exact rejectsProbes_sound (List.all_eq_true.mp root9_stream_reject _ hm') hr
  · have he := wire_two p (by simp only [wire_lam,wire_app,wire_var] at hw; omega)
    subst p
    exact rejectsProbes_sound (List.all_eq_true.mp root9_stream_reject _ hm') hr

#print axioms root_stream_floor
#print axioms local_stream_floor
#print axioms local_helper_ten
#print axioms specializer_boundary
end Blc.SelfintStreamSpecializer
