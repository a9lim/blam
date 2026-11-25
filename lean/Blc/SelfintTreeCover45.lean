import Blc.SelfintTreeWords45

namespace Blc.SelfintSingleObject.TreeWords
open Term SelfintFloor SelfintLowerBound OperandGrammar SourceRefutations Grammar43 FiveLive Saturated Fast45 RowReplay

/-- Select the lambda allocation at the root before constructing either subtree. -/
def part (n j : Nat) (s : Tree) (d l : Nat) (w : List Nat) : List Term :=
  match s with
  | .leaf => if j = 0 then layoutsFor .leaf d l w else []
  | .node f a =>
    (List.range (l+1)).flatMap fun h => (List.range (l-h+1)).flatMap fun m =>
      if (h*(l+1)+m) % n = j then
        (layoutsFor f (d+h) m (w.take (leaves f))).flatMap fun fn =>
          (layoutsFor a (d+h) (l-h-m) (w.drop (leaves f))).map fun arg => wrapN h (.app fn arg)
      else []

private theorem marked_part (n : Nat) (hn : 0 < n) {t u d sc l w} (h : t ∈ marked u d sc l w) :
    ∃ s ∈ trees w.length w.length, ∃ j ∈ List.range n, t ∈ part n j s sc l w := by
  obtain ⟨hl,hv⟩ := marked_measures h
  obtain ⟨hw,hsc⟩ := marked_word h
  have tmem := term_mem t sc hsc
  rw [hl,hw] at tmem
  let s := shape t
  have vs : leaves s = w.length := (leaves_shape t).trans hv
  refine ⟨s,by rw [← vs]; exact trees_mem s _ (Nat.le_refl _),?_⟩
  change t ∈ layoutsFor s sc l w at tmem
  generalize hs : s = sh at tmem ⊢
  cases sh with
  | leaf => exact ⟨0,List.mem_range.mpr hn,by simpa [part] using tmem⟩
  | node f a =>
    obtain ⟨k,hk,m,hm,fn,hf,arg,ha,ht⟩ := by simpa only [layoutsFor,List.mem_flatMap,List.mem_map] using tmem
    refine ⟨(k*(l+1)+m)%n,List.mem_range.mpr (Nat.mod_lt _ hn),?_⟩
    apply List.mem_flatMap.mpr
    refine ⟨k,hk,List.mem_flatMap.mpr ⟨m,hm,?_⟩⟩
    simp only [if_pos rfl]
    exact List.mem_flatMap.mpr ⟨fn,hf,List.mem_map.mpr ⟨arg,ha,ht⟩⟩

def forFrame (n j : Nat) (s : Tree) (both lit : Bool) (ks : List Shell) (L x l v : Nat) (w : List Nat) :=
  ((part n j s (atomScope lit x) l w).filter fun b =>
    (3 ≤ live (.lam b) && l+1 ≤ live (.lam b)+(L-5) && Layouts.nonshrinking b) && FactorFilter.markedHere 0 (.lam b)
  ).flatMap (useAtom both lit ks)

theorem frame_cover (n : Nat) (hn : 0 < n) (both lit : Bool) (ks : List Shell) (L x l v : Nat) (w : List Nat)
    (bad : Every (fun s => Every (fun j => BadRow (forFrame n j s both lit ks L x l v w)) (List.range n))
      (trees w.length w.length)) : BadRow (row both lit ks L x l v w) := by
  apply row_of_forall
  intro e he
  obtain ⟨t,ht,he⟩ := List.mem_flatMap.mp he
  obtain ⟨ht,hf⟩ := List.mem_filter.mp ht
  obtain ⟨hm,ok⟩ := List.mem_filter.mp ht
  obtain ⟨s,hs,j,hj,ht⟩ := marked_part n hn hm
  exact ((bad.get hs).get hj).get (List.mem_flatMap.mpr
    ⟨t,List.mem_filter.mpr ⟨ht,Bool.and_eq_true_iff.mpr ⟨ok,hf⟩⟩,he⟩)

def forFour (n j : Nat) (s : Tree) (c : Cell) (fw aw : List Nat) :=
  let fs := (layouts (c.lf+c.vf) 1 c.lf fw).filter fun b =>
    live b == 0 && decide (NFt b) && spineHead b == .var 0 && nonlinear (.lam b) == 1
  let as := (part n j s 1 c.la aw).filter fun a =>
    live (.lam a) == 3 && 1 ≤ nonlinear (.lam a) && FactorFilter.markedHere 0 (.lam a) && Layouts.nonshrinking a
  fs.flatMap fun b => as.map fun a => Term.app (.lam b) (.lam a)

theorem four_cover (n : Nat) (hn : 0 < n) (c : Cell) (f w : List Nat)
    (bad : Every (fun s => Every (fun j => BadRow (forFour n j s c f w)) (List.range n))
      (trees w.length w.length)) : BadRow (fourRow c f w) := by
  apply row_of_forall
  intro e he
  obtain ⟨t,ht,he⟩ := List.mem_flatMap.mp he
  obtain ⟨a,ha,rfl⟩ := List.mem_map.mp he
  obtain ⟨ha,ok⟩ := List.mem_filter.mp ha
  obtain ⟨s,hs,j,hj,ha⟩ := marked_part n hn ha
  exact ((bad.get hs).get hj).get (List.mem_flatMap.mpr
    ⟨t,ht,List.mem_map.mpr ⟨a,List.mem_filter.mpr ⟨ha,ok⟩,rfl⟩⟩)

end Blc.SelfintSingleObject.TreeWords
