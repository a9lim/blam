import Blc.SelfintOperandCells

namespace Blc.SelfintSingleObject.OperandGrammar
open Term SelfintFloor SelfintWireCost SelfintCapture SelfintLowerBound SelfintNonlinearChain

def indices : Term → List Nat
  | .var i => [i]
  | .lam b => indices b
  | .app f a => indices f ++ indices a

private theorem measures (t : Term) :
    (indices t).length = leafCount t ∧ (indices t).sum = indexSum t := by
  induction t <;> simp_all [indices,leafCount,indexSum]

private def pairs (fs as : List Term) : List Term := fs.flatMap fun f => as.map (.app f)

/-- Realize one raw index word at a fixed depth with exactly l lambdas.
At an application the left subtree consumes a nonempty proper prefix. -/
def layouts : Nat → Nat → Nat → List Nat → List Term
  | 0, _, _, _ => []
  | n+1, d, l, xs =>
    (match l, xs with
      | 0, [i] => if i < d then [.var i] else []
      | _, _ => []) ++
    (if l = 0 then [] else (layouts n (d+1) (l-1) xs).map Term.lam) ++
    ((List.range (xs.length-1)).flatMap fun k =>
      (List.range (l+1)).flatMap fun m =>
        pairs (layouts n d m (xs.take (k+1))) (layouts n d (l-m) (xs.drop (k+1))))

theorem layouts_complete (t : Term) (d n : Nat) (hc : FreeUnder d t)
    (hf : lamCount t + leafCount t ≤ n) :
    t ∈ layouts n d (lamCount t) (indices t) := by
  induction t generalizing d n with
  | var i =>
    have hi : i < d := hc
    cases n with
    | zero => simp [leafCount,lamCount] at hf
    | succ => simp [layouts,indices,lamCount,hi]
  | lam b ih =>
    cases n with
    | zero => simp [lamCount] at hf
    | succ n =>
      apply List.mem_append_left
      apply List.mem_append_right
      simp only [lamCount,indices,Nat.add_one_ne_zero,↓reduceIte,Nat.add_one_sub_one]
      exact List.mem_map.mpr ⟨b,ih _ n hc (by simp only [lamCount,leafCount] at hf; omega),rfl⟩
  | app f a ihf iha =>
    have hp := leafCount_pos f
    have hq := leafCount_pos a
    cases n with
    | zero => simp only [lamCount,leafCount] at hf; omega
    | succ n =>
      apply List.mem_append_right
      apply List.mem_flatMap.mpr
      refine ⟨leafCount f-1, List.mem_range.mpr (by rw [(measures _).1]; simp [leafCount]; omega), ?_⟩
      apply List.mem_flatMap.mpr
      refine ⟨lamCount f, List.mem_range.mpr (by simp [lamCount]; omega), ?_⟩
      have he : leafCount f - 1 + 1 = (indices f).length := by rw [(measures f).1]; omega
      simp only [he,indices,List.take_left,List.drop_left,lamCount,Nat.add_sub_cancel_left]
      simp only [lamCount,leafCount] at hf
      exact List.mem_flatMap.mpr ⟨f,ihf _ n hc.1 (by omega),List.mem_map.mpr
        ⟨a,iha _ n hc.2 (by omega),rfl⟩⟩

/-- Finite overapproximation of the nonfactoring witness by its three used slots. -/
def spans : Nat → Term → Bool
  | _, .var _ => false
  | d, .app f a => spans d f || spans d a
  | d, .lam b => spans (d+1) b || (0 < occ 0 b && (List.range d).any fun j =>
      0 < occ (j+1) b && (List.range j).any fun i => 0 < occ (i+1) b)

theorem spans_of_witness (t : Term) (d : Nat) (hw : Witness d t) : spans d t = true := by
  induction t generalizing d with
  | var => cases hw
  | app f a ihf iha =>
    rcases hw with h | h
    · simp [spans, ihf d h]
    · simp [spans, iha d h]
  | lam b ih =>
    rcases hw with h | ⟨h0,i,j,hij,hj,hi',hj',_⟩
    · simp [spans, ih _ h]
    · apply Bool.or_eq_true_iff.mpr
      right
      simp only [Bool.and_eq_true, decide_eq_true_eq, List.any_eq_true,List.mem_range]
      exact ⟨h0,j,hj,hj',i,hij,hi'⟩

/-- Words of length v and sum x with all indices less than d. -/
def words (d : Nat) : Nat → Nat → List (List Nat)
  | 0, x => if x = 0 then [[]] else []
  | v+1, x => (List.range (min d (x+1))).flatMap fun i =>
      (words d v (x-i)).map (i :: ·)

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

def row (c : Cell) (fw aw : List Nat) : List Term :=
  let fs := (layouts (c.lf+c.vf) 1 c.lf fw).filter fun b =>
    live (.lam b) == 1 && nonlinear (.lam b) == 1 && Layouts.nonshrinking b
  let as := (layouts (c.la+c.va) 1 c.la aw).filter fun a =>
    spans 1 a && live (.lam a) == 3 && 1 ≤ nonlinear (.lam a) && Layouts.nonshrinking a
  fs.flatMap fun b => as.map fun a => .app (.lam b) (.lam a)

theorem four_live_row {E} (hm : MinimalInterpreter E) (hl : live E = 4) :
    ∃ c : Cell, c.price = wire E ∧ 2 ≤ c.vf ∧ 4 ≤ c.va ∧ 2 ≤ c.la ∧ 3 ≤ c.xa ∧
      ∃ fw ∈ words (1+c.lf) c.vf c.xf, ∃ aw ∈ words (1+c.la) c.va c.xa,
        E ∈ row c fw aw := by
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
  · simpa only [(measures b).1,(measures b).2] using words_complete _ _ (bounded b 1 hm.1.1.1)
  · simpa only [(measures a).1,(measures a).2] using words_complete _ _ (bounded a 1 hm.1.1.2)
  · apply List.mem_flatMap.mpr
    refine ⟨b,List.mem_filter.mpr ⟨layouts_complete b 1 _ hm.1.1.1 (Nat.le_refl _),
      by simp [hlb,hnb,hs.1.1]⟩, List.mem_map.mpr ⟨a,?_,rfl⟩⟩
    exact List.mem_filter.mpr ⟨layouts_complete a 1 _ hm.1.1.2 (Nat.le_refl _),
      by simp [hla,hna,hs.1.2,spans_of_witness a 1 hbody]⟩

end Blc.SelfintSingleObject.OperandGrammar
