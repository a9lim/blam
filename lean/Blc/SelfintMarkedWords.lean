import Blc.SelfintOperandWords

namespace Blc.SelfintSingleObject.OperandGrammar
open Term SelfintFloor SelfintLowerBound SelfintWireCost SelfintCapture

private theorem word_size (t : Term) : (indices t).length = leafCount t ∧ (indices t).sum = indexSum t := by
  induction t <;> simp_all [indices,leafCount,indexSum]

private def uses (d : Nat) (b : Term) : Bool :=
  0 < occ 0 b && (List.range d).any fun j =>
    0 < occ (j+1) b && (List.range j).any fun i => 0 < occ (i+1) b

private theorem at_least (t : Term) (j i : Nat) (hi : i ≤ j) (ho : 0 < occ j t) :
    (indices t).any (fun n => i ≤ n) = true := by
  induction t generalizing j with
  | var n => simp only [occ] at ho; split at ho <;> simp_all [indices]
  | lam b ih => exact ih (j+1) (by omega) ho
  | app f a hf ha =>
    simp only [occ] at ho
    by_cases z : 0 < occ j f
    · simp [indices,hf j hi z]
    · simp [indices,ha j hi (by omega)]

private theorem price_word (t : Term) (d : Nat) (h : Witness d t) :
    (indices t).any (fun n => 2 ≤ n) = true ∧ 0 < lamCount t := by
  induction t generalizing d with
  | var => cases h
  | lam b ih =>
    rcases h with h | ⟨_,i,j,hij,_,_,hj,_⟩
    · exact ⟨(ih _ h).1,Nat.succ_pos _⟩
    · exact ⟨at_least b (j+1) 2 (by omega) hj,Nat.succ_pos _⟩
  | app f a hf ha =>
    rcases h with h | h
    · obtain ⟨hh,hl⟩ := hf d h; simp [indices,hh,lamCount]; omega
    · obtain ⟨hh,hl⟩ := ha d h; simp [indices,hh,lamCount]; omega

private theorem outer_bound (d : Nat) (t : Term) : outerLive d t ≤ d := by
  induction d with
  | zero => exact Nat.le_refl 0
  | succ d ih => simp only [outerLive]; split <;> omega

private def joinPairs (fs as : List Term) := fs.flatMap fun f => as.map (Term.app f)

private theorem pair_mem {f a fs as} (hf : f ∈ fs) (ha : a ∈ as) :
    Term.app f a ∈ joinPairs fs as :=
  List.mem_flatMap.mpr ⟨f,hf,List.mem_map.mpr ⟨a,ha,rfl⟩⟩

/-- Follow the witness path before realizing a plain subtree. Its raw word
must pay the width charge and contain a leaf of index at least two.
Scope counts every binder, while d counts only the chosen local binders. -/
def marked : Nat → Nat → Nat → Nat → List Nat → List Term
  | 0, _, _, _, _ => []
  | fuel+1, d, scope, l, xs =>
    if l = 0 ∨ l+d < 3 ∨ xs.sum < 3 ∨ !(xs.any fun n => 2 ≤ n) then [] else
    let below := marked fuel (d+1) (scope+1) (l-1) xs
    let here := if d < 2 then [] else
      (layouts (l-1+xs.length) (scope+1) (l-1) xs).filter (uses d)
    (below ++ here).map Term.lam ++
    (List.range (xs.length-1)).flatMap fun k =>
      (List.range (l+1)).flatMap fun m =>
        let f := xs.take (k+1)
        let a := xs.drop (k+1)
        joinPairs (marked fuel d scope m f) (layouts (l-m+a.length) scope (l-m) a) ++
        (marked fuel d scope (l-m) a).flatMap fun arg =>
          (layouts (m+f.length) scope m f).map (fun fn => .app fn arg)

theorem marked_complete (t : Term) (fuel d scope : Nat) (hw : Witness d t)
    (hc : FreeUnder scope t) (hn : lamCount t + leafCount t ≤ fuel) :
    t ∈ marked fuel d scope (lamCount t) (indices t) := by
  induction t generalizing fuel d scope with
  | var => cases hw
  | lam b ih =>
    cases fuel with
    | zero => simp [lamCount] at hn
    | succ fuel =>
      have ⟨hp,hl⟩ := price_word _ d hw
      have hx := width_price _ _ hw
      have ha := width_live _ _ hw
      have := outer_bound d (.lam b); have := live_le_lamCount (.lam b)
      have hg : ¬ (lamCount (.lam b) = 0 ∨ lamCount (.lam b)+d < 3 ∨
          (indices (.lam b)).sum < 3 ∨ (!(indices (.lam b)).any fun n => 2 ≤ n) = true) := by
        rw [(word_size _).2,hp]; simp; omega
      simp only [marked,if_neg hg]
      apply List.mem_append_left
      apply List.mem_map.mpr
      refine ⟨b,?_,rfl⟩
      simp only [indices,lamCount,Nat.add_one_sub_one]
      rcases hw with h | ⟨h0,i,j,hij,hj,hi',hj',_⟩
      · exact List.mem_append_left _ (ih fuel (d+1) (scope+1) h hc (by simp only [lamCount,leafCount] at hn; omega))
      · apply List.mem_append_right; rw [if_neg (by omega : ¬ d < 2)]
        apply List.mem_filter.mpr
        refine ⟨layouts_complete b _ _ hc (by rw [(word_size b).1]; exact Nat.le_refl _),?_⟩
        simp only [uses,Bool.and_eq_true,decide_eq_true_eq,List.any_eq_true,List.mem_range]
        exact ⟨h0,j,hj,hj',i,hij,hi'⟩
  | app f a hf ha =>
    have fp := leafCount_pos f; have ap := leafCount_pos a
    cases fuel with
    | zero => simp only [lamCount,leafCount] at hn; omega
    | succ fuel =>
      have ⟨hp,hl⟩ := price_word _ d hw
      have hx := width_price _ _ hw
      have hv := width_live _ _ hw
      have := outer_bound d (.app f a); have := live_le_lamCount (.app f a)
      have hg : ¬ (lamCount (.app f a) = 0 ∨ lamCount (.app f a)+d < 3 ∨
          (indices (.app f a)).sum < 3 ∨ (!(indices (.app f a)).any fun n => 2 ≤ n) = true) := by
        rw [(word_size _).2,hp]; simp; omega
      simp only [marked,if_neg hg]
      apply List.mem_append_right
      apply List.mem_flatMap.mpr
      refine ⟨leafCount f-1,List.mem_range.mpr (by rw [(word_size _).1]; simp [leafCount]; omega),?_⟩
      apply List.mem_flatMap.mpr
      refine ⟨lamCount f,List.mem_range.mpr (by simp [lamCount]; omega),?_⟩
      have len : leafCount f-1+1 = (indices f).length := by rw [(word_size _).1]; omega
      simp only [len,indices,List.take_left,List.drop_left,lamCount,Nat.add_sub_cancel_left]
      simp only [lamCount,leafCount] at hn
      rcases hw with h | h
      · exact List.mem_append_left _ (pair_mem (hf fuel d scope h hc.1 (by omega))
          (layouts_complete a scope _ hc.2 (by rw [(word_size _).1]; exact Nat.le_refl _)))
      · exact List.mem_append_right _ (List.mem_flatMap.mpr ⟨a,ha fuel d scope h hc.2 (by omega),
          List.mem_map.mpr ⟨f,layouts_complete f scope _ hc.1
            (by rw [(word_size _).1]; exact Nat.le_refl _),rfl⟩⟩)

end Blc.SelfintSingleObject.OperandGrammar
