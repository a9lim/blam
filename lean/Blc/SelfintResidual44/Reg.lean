import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44
open Term SelfintSharp WeakHeadClock SelfintRegularSoundness
def regAt (ts : Array Term) (i : Nat) := ts[i]?.getD (.var 0)
def regNode (cs : Array Certgen.Code) (i : Nat) := cs[i]?.getD .opaque
def aligns (cs : Array Certgen.Code) (ts : Array Term) (i : Nat) : Bool :=
  match regNode cs i with
  | .opaque => true
  | .var j => decide (regAt ts i = Term.var j)
  | .lam j => decide (regAt ts i = Term.lam (regAt ts j))
  | .app j k => decide (regAt ts i = Term.app (regAt ts j) (regAt ts k))
def regModel {cs ts} (h : (List.range cs.size).all (aligns cs ts) = true) : Model (regNode cs) where
  term := regAt ts
  var_eq := by
    intro i j hj
    by_cases hi : i < cs.size
    · simpa [aligns,hj] using List.all_eq_true.mp h i (List.mem_range.mpr hi)
    · simp [regNode,Array.getElem?_eq_none (by omega : cs.size ≤ i)] at hj
  lam_eq := by
    intro i j hj
    by_cases hi : i < cs.size
    · simpa [aligns,hj] using List.all_eq_true.mp h i (List.mem_range.mpr hi)
    · simp [regNode,Array.getElem?_eq_none (by omega : cs.size ≤ i)] at hj
  app_eq := by
    intro i j k hj
    by_cases hi : i < cs.size
    · simpa [aligns,hj] using List.all_eq_true.mp h i (List.mem_range.mpr hi)
    · simp [regNode,Array.getElem?_eq_none (by omega : cs.size ≤ i)] at hj
end Blc.Floor44
namespace Blc.Floor44
open SelfintRegularSoundness
theorem opaqueTerm {P : Nat → Certgen.Code} (r : CodeRank P) (fill : Nat → Term) {p}
    (h : P p = .opaque) : (codeModel r fill).term p = fill p := by
 change decode r fill p = _
 rw [decode]
 split <;> simp_all
end Blc.Floor44
