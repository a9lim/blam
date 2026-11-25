import Blc.SelfintFiveLiveRows40

namespace Blc.SelfintSingleObject.OperandGrammar
open Term SelfintLowerBound SelfintFloor SelfintCapture SelfintWireCost

private theorem words_complete (is : List Nat) (d : Nat) (h : ∀ i ∈ is, i < d) :
    is ∈ words d is.length is.sum := by
  induction is with
  | nil => simp [words]
  | cons i is ih =>
    apply List.mem_flatMap.mpr
    refine ⟨i,List.mem_range.mpr (Nat.lt_min.mpr ⟨h i (by simp),by simp; omega⟩),?_⟩
    simp only [List.sum_cons,Nat.add_sub_cancel_left]
    exact List.mem_map.mpr ⟨is,ih (fun j hj => h j (by simp [hj])),rfl⟩

private theorem bounded (t : Term) (d : Nat) (hc : FreeUnder d t) :
    ∀ i ∈ indices t, i < d + lamCount t := by
  induction t generalizing d with
  | var j => simpa [indices,lamCount] using (show j < d from hc)
  | lam b ih =>
    intro i hi; have := ih (d+1) hc i hi; simp only [lamCount]; omega
  | app f a ihf iha =>
    intro i hi
    rcases List.mem_append.mp hi with h | h
    · have := ihf d hc.1 i h; simp only [lamCount]; omega
    · have := iha d hc.2 i h; simp only [lamCount]; omega

def markedRow (c : Cell) (fw aw : List Nat) : List Term :=
  let fs := (layouts (c.lf+c.vf) 1 c.lf fw).filter fun b =>
    live (.lam b) == 1 && nonlinear (.lam b) == 1 && Layouts.nonshrinking b
  let as := (marked (c.la+c.va) 1 1 c.la aw).filter fun a =>
    live (.lam a) == 3 && 1 ≤ nonlinear (.lam a) && Layouts.nonshrinking a
  fs.flatMap fun b => as.map fun a => .app (.lam b) (.lam a)

theorem four_live_marked_row {E} (hm : MinimalInterpreter E) (hl : live E = 4) :
    ∃ c : Cell, c.price = wire E ∧ 2 ≤ c.vf ∧ 4 ≤ c.va ∧ 2 ≤ c.la ∧ 3 ≤ c.xa ∧
      ∃ fw ∈ words (1+c.lf) c.vf c.xf, ∃ aw ∈ words (1+c.la) c.va c.xa,
        E ∈ markedRow c fw aw := by
  obtain ⟨b,a,rfl,hw,hvb,hva,hlb,hla,hnb,hna⟩ := four_live_minimum hm hl
  have hbody : Witness 1 a := by
    rcases hw with h | ⟨_,i,j,_,hj,_⟩
    · exact h
    · omega
  have hx := width_price a 1 hbody
  have hL := live_le_lamCount (.lam a)
  have hNs := Layouts.minimum_passes hm (Nat.le_refl _)
  simp only [Layouts.passes,Bool.and_eq_true] at hNs
  have hs := hNs.1.1.2
  simp only [Layouts.nonshrinking,Bool.and_eq_true] at hs
  refine ⟨⟨lamCount b,leafCount b,indexSum b,lamCount a,leafCount a,indexSum a⟩,
    ?_,hvb,hva,?_,hx,indices b,?_,indices a,?_,?_⟩
  · have := wire_identity (.app (.lam b) (.lam a))
    simp only [Cell.price,lamCount,leafCount,indexSum] at *
    omega
  · change 2 ≤ lamCount a; simp only [lamCount] at hL; omega
  · simpa only [(FiveLive.index_word b).1,(FiveLive.index_word b).2] using words_complete _ _ (bounded b 1 hm.1.1.1)
  · simpa only [(FiveLive.index_word a).1,(FiveLive.index_word a).2] using words_complete _ _ (bounded a 1 hm.1.1.2)
  · apply List.mem_flatMap.mpr
    refine ⟨b,List.mem_filter.mpr ⟨layouts_complete b 1 _ hm.1.1.1 (Nat.le_refl _),
      by simp [hlb,hnb,hs.1.1]⟩, List.mem_map.mpr ⟨a,?_,rfl⟩⟩
    exact List.mem_filter.mpr ⟨marked_complete a _ 1 1 hbody hm.1.1.2 (Nat.le_refl _),
      by simp [hla,hna,hs.1.2]⟩


end Blc.SelfintSingleObject.OperandGrammar

namespace Blc.SelfintSingleObject
open SelfintFloor SelfintLowerBound SelfintWireCost OperandGrammar FiveLive

/-- Complete resource and word decomposition of size-forty minima. -/
theorem minimum_rows40 {e} (hm : MinimalInterpreter e) (hn : wire e = 40) :
    (∃ c : Cell, c.price = 40 ∧ 2 ≤ c.vf ∧ 4 ≤ c.va ∧ 2 ≤ c.la ∧ 3 ≤ c.xa ∧
      ∃ fw ∈ words (1+c.lf) c.vf c.xf, ∃ aw ∈ words (1+c.la) c.va c.xa, e ∈ markedRow c fw aw) ∨
    (∃ (lit : Bool) (x l v : Nat), 3 ≤ x ∧ x ≤ 4 ∧ 2 ≤ l ∧ l ≤ 3 ∧ 0 < v ∧ v ≤ 5 ∧
      ∃ w ∈ words (x+1) v x, ∃ b ∈ markedAtoms lit x l v w, e ∈ candidates lit x l v b) := by
  have ⟨hl,_,hx⟩ := interpreter_counts hm.1
  have := leaves_bound e; have := live_le_lamCount e
  have := selfInterpreter_two_nonlinear hm.1; have := wire_identity e
  rcases (show live e = 4 ∨ live e = 5 by omega) with h | h
  · exact .inl (hn ▸ four_live_marked_row hm h)
  · exact .inr (five_live_row40 hm hn h)

#print axioms minimum_rows40
end Blc.SelfintSingleObject
