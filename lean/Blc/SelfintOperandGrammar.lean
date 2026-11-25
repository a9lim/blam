import Blc.SelfintFourLive
import Blc.SelfintSingleObjectChecks

namespace Blc.SelfintSingleObject.OperandGrammar
open Term SelfintFloor SelfintWireCost SelfintCapture SelfintLowerBound SelfintNonlinearChain

private def usesThree (d : Nat) (b : Term) : Bool :=
  0 < occ 0 b && (List.range d).any fun j =>
    0 < occ (j+1) b && (List.range j).any fun i => 0 < occ (i+1) b

private def apps (fs as : List Term) : List Term :=
  fs.flatMap fun f => as.map (.app f)

/-- Exact lambda, leaf and index budgets. In search mode, follow one path
to a lambda that sees its own binder and two surrounding binders. -/
def terms : Nat → Nat → Nat → Nat → Nat → Bool → List Term
  | 0, _, _, _, _, _ => []
  | n+1, d, l, v, x, w =>
    if w && (l+d < 3 || x < 3) then [] else
    (if !w && l == 0 && v == 1 && x < d then [.var x] else []) ++
    (if l == 0 then [] else
      let more := terms n (d+1) (l-1) v x w
      let here := if w && 2 ≤ d then
        (terms n (d+1) (l-1) v x false).filter (usesThree d) else []
      (more ++ here).map Term.lam) ++
    (List.range (v-1)).flatMap fun k =>
      (List.range (l+1)).flatMap fun m =>
        (List.range (x+1)).flatMap fun y =>
          let pair := fun wf wa =>
            apps (terms n d m (k+1) y wf) (terms n d (l-m) (v-(k+1)) (x-y) wa)
          pair w false ++ (if w then pair false true else [])

private theorem app_mem {f a fs as} (hf : f ∈ fs) (ha : a ∈ as) :
    Term.app f a ∈ apps fs as :=
  List.mem_flatMap.mpr ⟨f,hf,List.mem_map.mpr ⟨a,ha,rfl⟩⟩

private theorem outerLive_le (d : Nat) (t : Term) : outerLive d t ≤ d := by
  induction d with
  | zero => exact Nat.le_refl 0
  | succ d ih => simp only [outerLive]; split <;> omega

theorem terms_complete (t : Term) (d n : Nat) (w : Bool) (hc : FreeUnder d t)
    (hw : w = true → Witness d t) (hf : lamCount t + leafCount t ≤ n) :
    t ∈ terms n d (lamCount t) (leafCount t) (indexSum t) w := by
  induction t generalizing d n w with
  | var i =>
    have hn : i < d := hc
    have hf' : 1 ≤ n := hf
    cases n with
    | zero => omega
    | succ n =>
      cases w with
      | true => exact (hw rfl).elim
      | false => simp [terms,lamCount,leafCount,indexSum,hn]
  | lam b ih =>
    cases n with
    | zero => simp [lamCount] at hf
    | succ n =>
      have hg : ¬ (w && (lamCount (.lam b)+d < 3 || indexSum (.lam b) < 3)) = true := by
        cases w with
        | false => simp
        | true =>
          have h := hw rfl
          have := width_live (.lam b) d h
          have := live_le_lamCount (.lam b)
          have := outerLive_le d (.lam b)
          have := width_price (.lam b) d h
          simp; omega
      simp only [terms,hg,↓reduceIte]
      apply List.mem_append_left
      apply List.mem_append_right
      simp only [lamCount, leafCount,indexSum,Nat.add_one_sub_one, show ((lamCount b + 1) == 0) = false by simp, Bool.false_eq_true,↓reduceIte]
      apply List.mem_map.mpr
      refine ⟨b, ?_,rfl⟩
      have hfb : lamCount b + leafCount b ≤ n := by simp only [lamCount,leafCount] at hf; omega
      cases w with
      | false => exact List.mem_append_left _ (ih (d+1) n false hc (by simp) hfb)
      | true =>
        rcases hw rfl with h | ⟨h0,i,j,hij,hj,hi',hj',_⟩
        · exact List.mem_append_left _ (ih (d+1) n true hc (fun _ => h) hfb)
        · apply List.mem_append_right
          simp only [Bool.true_and, decide_eq_true_eq, if_pos (by omega : 2 ≤ d)]
          apply List.mem_filter.mpr
          refine ⟨ih (d+1) n false hc (by simp) hfb, ?_⟩
          simpa only [usesThree, Bool.and_eq_true, decide_eq_true_eq, List.any_eq_true,
            List.mem_range] using And.intro h0 (Exists.intro j ⟨hj,hj',i,hij,hi'⟩)
  | app f a ihf iha =>
    have hp := leafCount_pos f
    have hq := leafCount_pos a
    cases n with
    | zero => simp only [lamCount,leafCount] at hf; omega
    | succ n =>
      have hg : ¬ (w && (lamCount (.app f a)+d < 3 || indexSum (.app f a) < 3)) = true := by
        cases w with
        | false => simp
        | true =>
          have h := hw rfl
          have := width_live (.app f a) d h
          have := live_le_lamCount (.app f a)
          have := outerLive_le d (.app f a)
          have := width_price (.app f a) d h
          simp; omega
      simp only [terms,hg,↓reduceIte]
      apply List.mem_append_right
      apply List.mem_flatMap.mpr
      refine ⟨leafCount f-1, List.mem_range.mpr (by simp [leafCount]; omega), ?_⟩
      apply List.mem_flatMap.mpr
      refine ⟨lamCount f, List.mem_range.mpr (by simp [lamCount]; omega), ?_⟩
      apply List.mem_flatMap.mpr
      refine ⟨indexSum f, List.mem_range.mpr (by simp [indexSum]; omega), ?_⟩
      simp only [show leafCount f - 1 + 1 = leafCount f by omega, lamCount,leafCount,indexSum,
        Nat.add_sub_cancel_left]
      simp only [lamCount,leafCount] at hf
      have ih1 := ihf d n
      have ih2 := iha d n
      cases w with
      | false => exact List.mem_append_left _ (app_mem (ih1 false hc.1 (by simp) (by omega))
          (ih2 false hc.2 (by simp) (by omega)))
      | true =>
        rcases hw rfl with h | h
        · exact List.mem_append_left _ (app_mem (ih1 true hc.1 (fun _ => h) (by omega))
            (ih2 false hc.2 (by simp) (by omega)))
        · exact List.mem_append_right _ (app_mem (ih1 false hc.1 (by simp) (by omega))
            (ih2 true hc.2 (fun _ => h) (by omega)))

end Blc.SelfintSingleObject.OperandGrammar
