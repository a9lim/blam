import Blc.SelfintSingleObjectDiagonal

/-! Four-leaf layout classification. Follow the path to the distinguished
lambda. At most one leaf can sit off that path outside its body. At the
body, first choose the three required external labels, then parenthesize
the resulting leaf word. Index 0 in a word marks an internally bound
leaf, and a positive label names an external slot plus one. -/
namespace Blc.SelfintSingleObject.Layouts
open Term SelfintFloor SelfintCapture SelfintWireCost

private def labels (k : Nat) : Term → List Nat
  | .var n => [if n < k then 0 else n-k+1]
  | .lam b => labels (k+1) b
  | .app f a => labels k f ++ labels k a

private theorem labels_length (t : Term) (k : Nat) : (labels k t).length = leafCount t := by
  induction t generalizing k with
  | var => rfl
  | lam b ih => exact ih _
  | app f a ihf iha => simp [labels, leafCount, ihf, iha]

private theorem label_mem (t : Term) (k i : Nat) (h : 0 < occ (i+k) t) :
    i+1 ∈ labels k t := by
  induction t generalizing k with
  | var n =>
    simp only [occ] at h
    split at h
    · rename_i eq
      simp [labels, eq, show ¬ i+k < k by omega]
    · omega
  | lam b ih => exact ih (k+1) h
  | app f a ihf iha =>
    simp only [occ] at h
    by_cases hp : 0 < occ (i+k) f
    · exact List.mem_append_left _ (ihf k hp)
    · exact List.mem_append_right _ (iha k (by omega))

private theorem labels_bounded (t : Term) (k d : Nat) (hc : FreeUnder (d+k) t) :
    ∀ x ∈ labels k t, x ≤ d := by
  induction t generalizing k with
  | var n =>
    have he : n < d+k := hc
    simp only [labels, List.mem_singleton]
    intro x hx; subst x; split <;> omega
  | lam b ih => exact ih (k+1) hc
  | app f a ihf iha =>
    intro x hx
    rcases List.mem_append.mp hx with h | h
    · exact ihf k hc.1 x h
    · exact iha k hc.2 x h

private def words (alphabet : Nat) : Nat → List (List Nat)
  | 0 => [[]]
  | n+1 => (List.range alphabet).flatMap fun x => (words alphabet n).map (x :: ·)

private theorem word_mem (xs : List Nat) (a : Nat) (h : ∀ x ∈ xs, x < a) :
    xs ∈ words a xs.length := by
  induction xs with
  | nil => simp [words]
  | cons x xs ih =>
    apply List.mem_flatMap.mpr
    exact ⟨x, List.mem_range.mpr (h x (by simp)),
      List.mem_map.mpr ⟨xs, ih (fun y hy => h y (by simp [hy])), rfl⟩⟩

private def combine (fs as : List Term) : List Term :=
  fs.flatMap fun f => as.map (.app f)

private theorem combine_mem {f a fs as} (hf : f ∈ fs) (ha : a ∈ as) :
    Term.app f a ∈ combine fs as :=
  List.mem_flatMap.mpr ⟨f, hf, List.mem_map.mpr ⟨a, ha, rfl⟩⟩

/-- Place exactly l lambdas on a fixed leaf word, distributing lambda
budgets over the two subtrees at each split between adjacent letters. -/
private def realize : Nat → Nat → Nat → List Nat → List Term
  | 0, _, _, _ => []
  | fuel+1, k, l, xs =>
    (match l, xs with
      | 0, [0] => (List.range k).map Term.var
      | 0, [i+1] => [.var (i+k)]
      | _, _ => []) ++
    (if l = 0 then [] else (realize fuel (k+1) (l-1) xs).map Term.lam) ++
    ((List.range (xs.length-1)).flatMap fun j =>
      (List.range (l+1)).flatMap fun h =>
        combine (realize fuel k h (xs.take (j+1)))
          (realize fuel k (l-h) (xs.drop (j+1))))

private theorem realize_mem (t : Term) (k fuel : Nat)
    (hf : lamCount t + leafCount t ≤ fuel) :
    t ∈ realize fuel k (lamCount t) (labels k t) := by
  induction t generalizing k fuel with
  | var n =>
    cases fuel with
    | zero => simp [lamCount, leafCount] at hf
    | succ fuel =>
      apply List.mem_append_left
      apply List.mem_append_left
      by_cases hn : n < k
      · simp [labels, hn, lamCount]
      · simp [labels, hn, lamCount, Nat.sub_add_cancel (by omega : k ≤ n)]
  | lam b ih =>
    cases fuel with
    | zero => simp [lamCount] at hf
    | succ fuel =>
      apply List.mem_append_left
      apply List.mem_append_right
      exact List.mem_map.mpr ⟨b, ih (k+1) fuel (by simp only [lamCount,leafCount] at hf; omega), rfl⟩
  | app f a ihf iha =>
    have hfp := leafCount_pos f
    have hap := leafCount_pos a
    cases fuel with
    | zero => simp only [lamCount,leafCount] at hf; omega
    | succ fuel =>
      apply List.mem_append_right
      apply List.mem_flatMap.mpr
      refine ⟨leafCount f - 1, List.mem_range.mpr (by simp [labels, labels_length]; omega), ?_⟩
      apply List.mem_flatMap.mpr
      refine ⟨lamCount f, List.mem_range.mpr (by simp [lamCount]; omega), ?_⟩
      have hlen : leafCount f - 1 + 1 = (labels k f).length := by rw [labels_length]; omega
      simp only [labels, lamCount, hlen, List.take_left, List.drop_left, Nat.add_sub_cancel_left]
      exact combine_mem (ihf k fuel (by simp only [lamCount, leafCount] at hf; omega))
        (iha k fuel (by simp only [lamCount, leafCount] at hf; omega))

private def spans (d : Nat) (xs : List Nat) : Bool :=
  xs.contains 1 && (List.range d).any fun j =>
    xs.contains (j+2) && (List.range j).any fun i => xs.contains (i+2)

private theorem spans_body {d b} (h : 0 < occ 0 b)
    {i j : Nat} (hij : i < j) (hj : j < d) (hi' : 0 < occ (i+1) b)
    (hj' : 0 < occ (j+1) b) : spans d (labels 0 b) = true := by
  simp only [spans, Bool.and_eq_true, List.contains_iff_mem, List.any_eq_true, List.mem_range]
  exact ⟨label_mem b 0 0 h, j, hj, label_mem b 0 (j+1) hj', i, hij, label_mem b 0 (i+1) hi'⟩

private theorem three_letters {xs : List Nat} {i j : Nat} (hij : i < j)
    (h : 1 ∈ xs) (hi : i+2 ∈ xs) (hj : j+2 ∈ xs) : 3 ≤ xs.length := by
  cases xs with
  | nil => simp at h
  | cons a xs =>
    cases xs with
    | nil => simp_all; omega
    | cons b xs =>
      cases xs with
      | nil => simp only [List.mem_cons, List.not_mem_nil, or_false] at h hi hj; omega
      | cons c xs => simp

private theorem width_leaves (t : Term) (d : Nat) (h : Witness d t) : 3 ≤ leafCount t := by
  induction t generalizing d with
  | var => cases h
  | lam b ih =>
    rcases h with h | ⟨hl,i,j,hij,_,hi,hj,_⟩
    · exact ih _ h
    · rw [leafCount, ← labels_length b 0]
      exact three_letters hij (label_mem b 0 0 hl) (label_mem b 0 (i+1) hi) (label_mem b 0 (j+1) hj)
  | app f a ihf iha =>
    rcases h with h | h
    · have := ihf _ h; simp only [leafCount]; omega
    · have := iha _ h; simp only [leafCount]; omega

private def side (d l : Nat) : List Term :=
  (words (d+1) 1).flatMap (realize (l+1) 0 l)

private theorem side_mem (t : Term) (d : Nat) (hc : FreeUnder d t) (hv : leafCount t = 1) :
    t ∈ side d (lamCount t) := by
  apply List.mem_flatMap.mpr
  refine ⟨labels 0 t, ?_, realize_mem t 0 _ (by omega)⟩
  have he : (labels 0 t).length = 1 := (labels_length t 0).trans hv
  simpa only [he] using word_mem (labels 0 t) (d+1) (fun x hx => Nat.lt_succ_of_le (labels_bounded t 0 d hc x hx))

/-- Enumerate width-witness paths in a four-leaf operand. A terminal
lambda uses the explicit three-slot leaf-word test before bracketing.
A branch off the path is necessarily one leaf with unary wrappers. -/
private def routesBy (bodyWords : Nat → Nat → List (List Nat)) : Nat → Nat → Nat → Nat → List Term
  | 0, _, _, _ => []
  | fuel+1, d, l, v =>
    (if l = 0 then [] else
      ((if d < 2 then [] else ((bodyWords (d+2) v).filter (spans d)).flatMap
        (realize (l-1+v) 0 (l-1))) ++ routesBy bodyWords fuel (d+1) (l-1) v).map Term.lam) ++
    (if v = 4 then (List.range (l+1)).flatMap fun h =>
      let w := routesBy bodyWords fuel d (l-h) 3
      let s := side d h
      combine w s ++ combine s w
     else [])

def routes := routesBy words

theorem routes_complete (t : Term) (d fuel : Nat) (hc : FreeUnder d t)
    (hw : Witness d t) (hv : leafCount t ≤ 4) (hf : lamCount t + leafCount t ≤ fuel) :
    t ∈ routes fuel d (lamCount t) (leafCount t) := by
  induction t generalizing d fuel with
  | var => cases hw
  | lam b ih =>
    cases fuel with
    | zero => simp [lamCount] at hf
    | succ fuel =>
      apply List.mem_append_left
      simp only [lamCount, Nat.add_one_ne_zero, ↓reduceIte, Nat.add_one_sub_one, leafCount]
      apply List.mem_map.mpr
      refine ⟨b, ?_, rfl⟩
      rcases hw with hw | ⟨hl,i,j,hij,hj,hi',hj',_⟩
      · exact List.mem_append_right _ (ih (d+1) fuel hc hw hv (by simp [lamCount, leafCount] at hf; omega))
      · apply List.mem_append_left
        rw [if_neg (by omega : ¬ d < 2)]
        apply List.mem_flatMap.mpr
        refine ⟨labels 0 b, List.mem_filter.mpr ⟨?_, spans_body hl hij hj hi' hj'⟩, realize_mem b 0 _ (by omega)⟩
        rw [← labels_length b 0]
        exact word_mem _ _ fun x hx => Nat.lt_succ_of_le (labels_bounded b 0 (d+1) hc x hx)
  | app f a ihf iha =>
    have hfp := leafCount_pos f
    have hap := leafCount_pos a
    simp only [leafCount,lamCount] at hf hv
    cases fuel with
    | zero => omega
    | succ fuel =>
      apply List.mem_append_right
      rcases hw with h | h
      · have := width_leaves f d h
        have h4 : leafCount (.app f a) = 4 := by simp [leafCount]; omega
        rw [if_pos h4]
        apply List.mem_flatMap.mpr
        refine ⟨lamCount a, List.mem_range.mpr (by simp [lamCount]; omega), List.mem_append_left _ ?_⟩
        have he : lamCount (.app f a) - lamCount a = lamCount f := by simp [lamCount]
        rw [he, ← show leafCount f = 3 by omega]
        exact combine_mem (ihf d fuel hc.1 h (by omega) (by omega)) (side_mem a d hc.2 (by omega))
      · have := width_leaves a d h
        have h4 : leafCount (.app f a) = 4 := by simp [leafCount]; omega
        rw [if_pos h4]
        apply List.mem_flatMap.mpr
        refine ⟨lamCount f, List.mem_range.mpr (by simp [lamCount]; omega), List.mem_append_right _ ?_⟩
        have he : lamCount (.app f a) - lamCount f = lamCount a := by simp [lamCount]
        rw [he, ← show leafCount a = 3 by omega]
        exact combine_mem (side_mem f d hc.1 (by omega)) (iha d fuel hc.2 h (by omega) (by omega))

/-- The two leaves of the closed copying operand are both locally bound. -/
def copierLayouts (l : Nat) : List Term := realize (l+2) 0 l [0,0]

private theorem copier_mem {t : Term} (hc : Closed t) (hv : leafCount t = 2) :
    t ∈ copierLayouts (lamCount t) := by
  have h := realize_mem t 0 (lamCount t+2) (by omega)
  have hl := (labels_length t 0).trans hv
  have hb := labels_bounded t 0 0 hc
  generalize labels 0 t = xs at hl hb h
  obtain ⟨a,b,he⟩ : ∃ a b, xs = [a,b] := by
    cases xs with
    | nil => cases hl
    | cons a xs => cases xs with
      | nil => cases hl
      | cons b xs => cases xs with
        | nil => exact ⟨_,_,rfl⟩
        | cons c xs => simp at hl
  subst xs
  have ha := hb a (by simp)
  have hc := hb b (by simp)
  have : a = 0 := by omega
  have : b = 0 := by omega
  simpa [copierLayouts, *] using h

private def prefixWords (x y alphabet v : Nat) : List (List Nat) :=
  if x < alphabet ∧ y < alphabet ∧ 2 ≤ v then
    (words alphabet (v-2)).map (fun tail => x :: y :: tail)
  else []

private theorem word_bounded {xs a n} (h : xs ∈ words a n) :
    xs.length = n ∧ ∀ x ∈ xs, x < a := by
  induction n generalizing xs with
  | zero => simp only [words, List.mem_singleton] at h; subst xs; simp
  | succ n ih =>
    obtain ⟨x,hx,hm⟩ := List.mem_flatMap.mp h
    obtain ⟨ys,hy,rfl⟩ := List.mem_map.mp hm
    obtain ⟨hl,ht⟩ := ih hy
    exact ⟨by simp [hl], by simpa using And.intro (List.mem_range.mp hx) ht⟩

/-- Partition the terminal leaf words before expanding any application
trees. This permits independent small kernel reductions for each pair
of initial labels. -/
private theorem split_routes (fuel d l v : Nat) (hv : 3 ≤ v) (hd : d+l ≤ 4)
    {t} (h : t ∈ routes fuel d l v) :
    ∃ x : Fin 5, ∃ y : Fin 5, t ∈ routesBy (prefixWords x y) fuel d l v := by
  induction fuel generalizing d l v t with
  | zero => cases h
  | succ fuel ih =>
    rcases List.mem_append.mp h with h | h
    · by_cases hl : l = 0
      · simp [hl] at h
      rw [if_neg hl] at h
      obtain ⟨b,hb,rfl⟩ := List.mem_map.mp h
      rcases List.mem_append.mp hb with hb | hb
      · by_cases hn : d < 2
        · simp [hn] at hb
        rw [if_neg hn] at hb
        obtain ⟨xs,hm,hr⟩ := List.mem_flatMap.mp hb
        obtain ⟨hm,hs⟩ := List.mem_filter.mp hm
        obtain ⟨hlen,hw⟩ := word_bounded hm
        cases xs with
        | nil => simp at hlen; omega
        | cons x xs =>
          cases xs with
          | nil => simp at hlen; omega
          | cons y xs =>
            have hx := hw x (by simp)
            have hy := hw y (by simp)
            refine ⟨⟨x,by omega⟩, ⟨y,by omega⟩, List.mem_append_left _ ?_⟩
            rw [if_neg hl]
            refine List.mem_map.mpr ⟨b,List.mem_append_left _ ?_, rfl⟩
            rw [if_neg hn]
            apply List.mem_flatMap.mpr
            refine ⟨x::y::xs, List.mem_filter.mpr ⟨?_,hs⟩, hr⟩
            simp only [prefixWords, if_pos (show x < d+2 ∧ y < d+2 ∧ 2 ≤ v from ⟨hx,hy,by omega⟩)]
            apply List.mem_map.mpr
            refine ⟨xs,?_,rfl⟩
            have hlen' : xs.length = v-2 := by simp at hlen; omega
            rw [← hlen']
            exact word_mem _ _ (fun z hz => hw z (by simp [hz]))
      · obtain ⟨x,y,hh⟩ := ih (d+1) (l-1) v hv (by omega) hb
        refine ⟨x,y,List.mem_append_left _ ?_⟩
        rw [if_neg hl]
        exact List.mem_map.mpr ⟨b,List.mem_append_right _ hh,rfl⟩
    · by_cases h4 : v = 4
      · rw [if_pos h4] at h
        obtain ⟨i,hi,h⟩ := List.mem_flatMap.mp h
        rcases List.mem_append.mp h with h | h
        all_goals
          obtain ⟨f,hf,hm⟩ := List.mem_flatMap.mp h
          obtain ⟨a,ha,rfl⟩ := List.mem_map.mp hm
        · obtain ⟨x,y,hh⟩ := ih d (l-i) 3 (by decide) (by omega) hf
          refine ⟨x,y,List.mem_append_right _ ?_⟩
          rw [if_pos h4]
          exact List.mem_flatMap.mpr ⟨i,hi,List.mem_append_left _ (combine_mem hh ha)⟩
        · obtain ⟨x,y,hh⟩ := ih d (l-i) 3 (by decide) (by omega) ha
          refine ⟨x,y,List.mem_append_right _ ?_⟩
          rw [if_pos h4]
          exact List.mem_flatMap.mpr ⟨i,hi,List.mem_append_right _ (combine_mem hf hh)⟩
      · simp [h4] at h

/-- Minimal sources in a single (copier lambdas, operand lambdas) cell. -/
def cell (c w : Nat) : List Term :=
  combine (copierLayouts c) (routes (w+4) 0 w 4)

def block (c w : Nat) (x y : Fin 5) : List Term :=
  combine (copierLayouts c) (routesBy (prefixWords x y) (w+4) 0 w 4)

theorem mem_block {E c w} (hw : w ≤ 4) (h : E ∈ cell c w) :
    ∃ x y, E ∈ block c w x y := by
  obtain ⟨f,hf,hm⟩ := List.mem_flatMap.mp h
  obtain ⟨a,ha,rfl⟩ := List.mem_map.mp hm
  obtain ⟨x,y,hh⟩ := split_routes _ 0 w 4 (by decide) (by omega) ha
  exact ⟨x,y,combine_mem hf hh⟩

theorem minimum_cells {E} (hm : MinimalInterpreter E) (hw : wire E ≤ 36) :
    E ∈ cell 1 3 ∨ (35 ≤ wire E ∧ (E ∈ cell 1 4 ∨ E ∈ cell 2 3)) := by
  obtain ⟨b,a,rfl,hwa,hvb,hva,hlb,hla,_,_⟩ := small_minimum_diagonal hm hw
  have hcb := live_le_lamCount (.lam b)
  have hca := live_le_lamCount (.lam a)
  have hx := width_price (.lam a) 0 hwa
  have hid := wire_identity (.app (.lam b) (.lam a))
  change leafCount (.lam b) = 2 at hvb
  change leafCount (.lam a) = 4 at hva
  simp only [leafCount,lamCount,indexSum] at hid hcb hca hx hvb hva
  have mem : Term.app (.lam b) (.lam a) ∈ cell (lamCount (.lam b)) (lamCount (.lam a)) := by
    apply combine_mem (copier_mem hm.1.1.1 hvb)
    have := routes_complete (.lam a) 0 (lamCount (.lam a)+4) hm.1.1.2 hwa (by change leafCount a ≤ 4; omega) (by change lamCount (.lam a)+leafCount a ≤ _; omega)
    simpa only [show leafCount (.lam a) = 4 from hva] using this
  change live (.lam b) = 1 at hlb
  change live (.lam a) = 3 at hla
  simp only [lamCount] at mem
  by_cases hc : lamCount b = 0
  · rw [hc] at mem
    by_cases h : lamCount a = 2
    · exact .inl (by simpa only [h] using mem)
    · have h : lamCount a = 3 := by omega
      exact .inr ⟨by omega, .inl (by simpa only [h] using mem)⟩
  · have he : lamCount b = 1 := by omega
    have h : lamCount a = 2 := by omega
    exact .inr ⟨by omega, .inr (by simpa only [h, he] using mem)⟩

end Blc.SelfintSingleObject.Layouts
