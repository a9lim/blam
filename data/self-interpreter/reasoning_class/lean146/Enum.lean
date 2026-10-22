import Blc.SelfintClass

namespace Blc.Lean146Enum
open Term SelfintClass SelfintClassNext SelfintWireCost SelfintLowerBound SelfintFloor
set_option maxRecDepth 8000
set_option maxHeartbeats 2000000

/-- Inclusive natural budget splits. -/
def splits (n : Nat) : List Nat := List.range (n+1)

/-- Exact-count beta-normal source enumeration. d is the sum of *relative*
    hole depths; h is the ambient number of reader binders. The frame is
    bound variables <h, c=h, j=h+1. Fuel bounds L+V, not reduction time. -/
def layouts : Nat → Nat → Nat → Nat → Nat → Nat → Nat → Nat → List Term
  | 0, _, _, _, _, _, _, _ => []
  | n+1, l, v, x, h, j, c, d =>
    if v = 0 ∨ v < j+c ∨ 1 < j ∨ (j = 0 ∧ d ≠ 0) ∨ x < c*h ∨ (l = 0 ∧ (h-1)*v+c < x+(h-1)*j) then [] else
    let vars := if l = 0 ∧ v = 1 ∧ d = 0 then
      if j = 1 ∧ c = 0 ∧ x = 0 then [.var (h+1)] else
      if j = 0 ∧ c = 1 ∧ x = h then [.var h] else
      if j = 0 ∧ c = 0 ∧ x < h then [.var x] else []
      else []
    let lams := if 0 < l ∧ j ≤ d then
      (layouts n (l-1) v x (h+1) j c (d-j)).map .lam else []
    let apps := (splits l).flatMap fun ll =>
      (List.range v).flatMap fun vl =>
      if vl = 0 then [] else
      (splits x).flatMap fun xl =>
      (splits j).flatMap fun jl =>
      (splits c).flatMap fun cl =>
      (splits d).flatMap fun dl =>
      (layouts n ll vl xl h jl cl dl).flatMap fun f =>
      if IsLam f then [] else
      (layouts n (l-ll) (v-vl) (x-xl) h (j-jl) (c-cl) (d-dl)).map (.app f)
    vars ++ lams ++ apps

def Valid (l v x h j c d : Nat) : Prop :=
  ¬ (v = 0 ∨ v < j+c ∨ 1 < j ∨ (j = 0 ∧ d ≠ 0) ∨ x < c*h ∨ (l = 0 ∧ (h-1)*v+c < x+(h-1)*j))

theorem occ_pair_le_leaves (t : Term) (j k : Nat) (hne : j ≠ k) :
    occ j t + occ k t ≤ leafCount t := by
  induction t generalizing j k with
  | var n => simp only [occ, leafCount]; split <;> split <;> omega
  | lam b ih => exact ih (j+1) (k+1) (by omega)
  | app f a ihf iha =>
    have hf := ihf j k hne
    have ha := iha j k hne
    simp only [occ, leafCount]; omega

theorem lamfree_tax_bound (t : Term) (h : Nat) (hs : FreeUnder (h+2) t)
    (hl : lamCount t = 0) :
    tax (h+1) t + (h-1) * occ (h+1) t ≤ (h-1) * leafCount t + occ h t := by
  induction t with
  | var k =>
    have hk : k < h+2 := hs
    simp only [tax, occ, leafCount]
    split <;> split <;> simp_all <;> omega
  | lam b => simp [lamCount] at hl
  | app f a ihf iha =>
    have hf := ihf hs.1 (by simp only [lamCount] at hl; omega)
    have ha := iha hs.2 (by simp only [lamCount] at hl; omega)
    simp only [tax,occ,leafCount,Nat.mul_add]; omega

theorem valid_source (t : Term) (h : Nat) (hs : FreeUnder (h+2) t) (hj : occ (h+1) t ≤ 1) :
    Valid (lamCount t) (leafCount t) (tax (h+1) t) h (occ (h+1) t) (occ h t) (occDepth (h+1) t) := by
  have hv := leafCount_pos t
  have hc := occ_pair_le_leaves t (h+1) h (by omega)
  have hd : occ (h+1) t = 0 → occDepth (h+1) t = 0 := fun hz => occDepth_zero hz
  have hx := tax_occ t (h+1) h (by omega)
  have hu := lamfree_tax_bound t h hs
  unfold Valid; omega

theorem mem_lam {n l v x h j c d : Nat} {b : Term}
    (hv : Valid l v x h j c d) (hl : 0 < l) (hd : j ≤ d)
    (hb : b ∈ layouts n (l-1) v x (h+1) j c (d-j)) :
    .lam b ∈ layouts (n+1) l v x h j c d := by
  simp only [layouts, if_neg hv, List.mem_append]
  apply Or.inl
  apply Or.inr
  rw [if_pos (And.intro hl hd)]
  exact List.mem_map.mpr ⟨b,hb,rfl⟩

theorem mem_app {n l v x h j c d ll vl xl jl cl dl : Nat} {f a : Term}
    (hv : Valid l v x h j c d) (hll : ll ≤ l) (hvl : 0 < vl ∧ vl < v)
    (hxl : xl ≤ x) (hjl : jl ≤ j) (hcl : cl ≤ c) (hdl : dl ≤ d)
    (hf : f ∈ layouts n ll vl xl h jl cl dl) (hnf : ¬ IsLam f)
    (ha : a ∈ layouts n (l-ll) (v-vl) (x-xl) h (j-jl) (c-cl) (d-dl)) :
    .app f a ∈ layouts (n+1) l v x h j c d := by
  simp only [layouts, if_neg hv, List.mem_append]
  apply Or.inr
  refine List.mem_flatMap.mpr ⟨ll, by simp [splits]; omega, ?_⟩
  refine List.mem_flatMap.mpr ⟨vl, List.mem_range.mpr hvl.2, ?_⟩
  rw [if_neg (show vl ≠ 0 by omega)]
  refine List.mem_flatMap.mpr ⟨xl, by simp [splits]; omega, ?_⟩
  refine List.mem_flatMap.mpr ⟨jl, by simp [splits]; omega, ?_⟩
  refine List.mem_flatMap.mpr ⟨cl, by simp [splits]; omega, ?_⟩
  refine List.mem_flatMap.mpr ⟨dl, by simp [splits]; omega, ?_⟩
  refine List.mem_flatMap.mpr ⟨f,hf,?_⟩
  rw [if_neg hnf]
  exact List.mem_map.mpr ⟨a,ha,rfl⟩

/-- Complete for all scoped normal source trees with at most one hole,
    at arbitrary count budgets. No property of the Python generator is assumed. -/
theorem layouts_complete (n : Nat) (t : Term) (h : Nat)
    (hn : lamCount t + leafCount t ≤ n) (hs : FreeUnder (h+2) t)
    (hnf : NFt t) (hj : occ (h+1) t ≤ 1) :
    t ∈ layouts n (lamCount t) (leafCount t) (tax (h+1) t) h
      (occ (h+1) t) (occ h t) (occDepth (h+1) t) := by
  induction n generalizing t h with
  | zero => have hp := leafCount_pos t; omega
  | succ n ih =>
    have hvalid := valid_source t h hs hj
    cases t with
    | var k =>
      have hk : k < h+2 := hs
      by_cases he : k = h+1
      · subst k
        simp [layouts, lamCount, leafCount, tax, occ, occDepth] <;> omega
      · by_cases hc : k = h
        · subst k
          simp [layouts, lamCount, leafCount, tax, occ, occDepth] <;> omega
        · have hb : k < h := by omega
          simp [layouts, lamCount, leafCount, tax, occ, occDepth, he, hc, hb] <;> omega
    | lam b =>
      apply mem_lam hvalid (by simp [lamCount]) (by simp [occDepth, occ])
      have hb : lamCount b + leafCount b ≤ n := by simp only [lamCount, leafCount] at hn; omega
      simpa only [lamCount, leafCount, tax, occ, occDepth, Nat.add_sub_cancel_right]
        using ih b (h+1) hb hs hnf hj
    | app f a =>
      have hfp := leafCount_pos f
      have hap := leafCount_pos a
      have hfn : lamCount f + leafCount f ≤ n := by simp only [lamCount, leafCount] at hn; omega
      have han : lamCount a + leafCount a ≤ n := by simp only [lamCount, leafCount] at hn; omega
      have hfj : occ (h+1) f ≤ 1 := by simp only [occ] at hj; omega
      have haj : occ (h+1) a ≤ 1 := by simp only [occ] at hj; omega
      have hf := ih f h hfn hs.1 hnf.2.1 hfj
      have ha := ih a h han hs.2 hnf.2.2 haj
      apply mem_app hvalid (ll := lamCount f) (vl := leafCount f)
        (xl := tax (h+1) f) (jl := occ (h+1) f) (cl := occ h f) (dl := occDepth (h+1) f)
      · simp only [lamCount]; omega
      · simp only [leafCount]; omega
      · simp only [tax]; omega
      · simp only [occ]; omega
      · simp only [occ]; omega
      · simp only [occDepth]; omega
      · exact hf
      · exact hnf.1
      · simpa only [lamCount, leafCount, tax, occ, occDepth, Nat.add_sub_cancel_left] using ha

def streamHead : Term → Bool
  | .var n => n == 0
  | .lam _ => false
  | .app f _ => streamHead f

def survives (b : Term) : Bool := streamHead b && decide (2 ≤ live (.lam b)) &&
  decide (1 ≤ nonlinear (.lam b))

def rowExact (l v x d : Nat) : List Term :=
  ((layouts (l-1+v) (l-1) v x 1 1 1 (d-1)).filter survives).map .lam

def row (l v x d : Nat) : List Term :=
  (splits x).flatMap fun xi => rowExact l v xi d

#print axioms layouts_complete
end Blc.Lean146Enum
