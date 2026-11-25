import Blc.SelfintPositiveWord45

namespace Blc.SelfintSingleObject.TreeWords
open Term SelfintFloor SelfintLowerBound OperandGrammar

/-- The full binary application tree, before inserting lambdas and writing variable indices. -/
inductive Tree where
  | leaf
  | node (f a : Tree)
  deriving Repr, Inhabited

def leaves : Tree → Nat
  | .leaf => 1
  | .node f a => leaves f + leaves a

def shape : Term → Tree
  | .var _ => .leaf
  | .lam b => shape b
  | .app f a => .node (shape f) (shape a)

theorem leaves_shape (t : Term) : leaves (shape t) = leafCount t := by
  induction t <;> simp_all [leaves,shape,leafCount]

def trees : Nat → Nat → List Tree
  | 0,_ => []
  | n+1,v => (if v = 1 then [.leaf] else []) ++
    (List.range (v-1)).flatMap fun i => (trees n (i+1)).flatMap fun f =>
      (trees n (v-(i+1))).map (Tree.node f)

private theorem pos (s : Tree) : 0 < leaves s := by
  induction s with
  | leaf => decide
  | node f a hf ha => simp only [leaves]; omega

theorem trees_mem (s : Tree) (n : Nat) (h : leaves s ≤ n) : s ∈ trees n (leaves s) := by
  induction s generalizing n with
  | leaf => cases n <;> simp_all [leaves,trees]
  | node f a ihf iha =>
    have hf := pos f; have ha := pos a
    change leaves f + leaves a ≤ n at h
    cases n with
    | zero => omega
    | succ n =>
      apply List.mem_append_right
      apply List.mem_flatMap.mpr
      refine ⟨leaves f-1,List.mem_range.mpr (by simp only [leaves]; omega),?_⟩
      simp only [leaves,show leaves f-1+1 = leaves f by omega,Nat.add_sub_cancel_left]
      exact List.mem_flatMap.mpr ⟨f,ihf n (by omega),List.mem_map.mpr ⟨a,iha n (by omega),rfl⟩⟩

def wrapN : Nat → Term → Term
  | 0,t => t
  | n+1,t => .lam (wrapN n t)

/-- For a fixed tree, distribute the lambda budget over its nodes in preorder. -/
def layoutsFor : Tree → Nat → Nat → List Nat → List Term
  | .leaf,d,l,[i] => if i < d+l then [wrapN l (.var i)] else []
  | .leaf,_,_,_ => []
  | .node f a,d,l,w =>
    (List.range (l+1)).flatMap fun h => (List.range (l-h+1)).flatMap fun m =>
      (layoutsFor f (d+h) m (w.take (leaves f))).flatMap fun fn =>
        (layoutsFor a (d+h) (l-h-m) (w.drop (leaves f))).map fun arg => wrapN h (.app fn arg)

private theorem lam_mem (s : Tree) {d l w b} (h : b ∈ layoutsFor s (d+1) l w) :
    .lam b ∈ layoutsFor s d (l+1) w := by
  cases s with
  | leaf =>
    cases w with
    | nil => cases h
    | cons i w =>
      cases w with
      | nil =>
        simp only [layoutsFor] at h ⊢
        rw [show d+(l+1)=d+1+l by omega]
        split at h <;> rename_i hc <;> simp_all [wrapN]
      | cons j w => cases h
  | node f a =>
    obtain ⟨k,hk,m,hm,fn,hf,arg,ha,rfl⟩ := by
      simpa only [layoutsFor,List.mem_flatMap,List.mem_map] using h
    simp only [layoutsFor,List.mem_flatMap,List.mem_map]
    simp only [List.mem_range] at hk hm
    refine ⟨k+1,List.mem_range.mpr (by omega),m,?_,fn,?_,arg,?_,rfl⟩
    · apply List.mem_range.mpr; omega
    · simpa only [show d+(k+1)=d+1+k by omega] using hf
    · simpa only [show d+(k+1)=d+1+k by omega,show l+1-(k+1)=l-k by omega] using ha

theorem term_mem (t : Term) (d : Nat) (hc : FreeUnder d t) :
    t ∈ layoutsFor (shape t) d (lamCount t) (indices t) := by
  induction t generalizing d with
  | var i => exact by simpa [shape,layoutsFor,indices,lamCount,show i < d from hc,wrapN]
  | lam b ih => exact lam_mem (shape b) (ih (d+1) hc)
  | app f a ihf iha =>
    simp only [shape,layoutsFor,indices,lamCount,List.mem_flatMap,List.mem_map]
    refine ⟨0,List.mem_range.mpr (by omega),lamCount f,List.mem_range.mpr (by omega),f,?_,a,?_,rfl⟩
    · simpa only [Nat.add_zero,leaves_shape,← (FiveLive.index_word f).1,List.take_left] using ihf d hc.1
    · simpa only [Nat.add_zero,Nat.sub_zero,Nat.add_sub_cancel_left,leaves_shape,
        ← (FiveLive.index_word f).1,List.drop_left] using iha d hc.2

private theorem layouts_scope {t : Term} {n d l : Nat} {w : List Nat}
    (h : t ∈ layouts n d l w) : FreeUnder d t := by
  induction n generalizing t d l w with
  | zero => cases h
  | succ n ih =>
    simp only [layouts,List.mem_append] at h
    rcases h with (v|a)|p
    · split at v
      · split at v
        · simp only [List.mem_singleton] at v; subst t; assumption
        · cases v
      · cases v
    · split at a
      · cases a
      · obtain ⟨b,hb,rfl⟩ := List.mem_map.mp a; change FreeUnder (d+1) b; exact ih hb
    · obtain ⟨_,_,_,_,p⟩ := by simpa only [List.mem_flatMap] using p
      obtain ⟨f,hf,h⟩ := List.mem_flatMap.mp p
      obtain ⟨a,ha,rfl⟩ := List.mem_map.mp h
      exact ⟨ih hf, ih ha⟩

theorem marked_word {t : Term} {n d s l : Nat} {w : List Nat} (h : t ∈ marked n d s l w) :
    indices t = w ∧ FreeUnder s t := by
  induction n generalizing t d s l w with
  | zero => cases h
  | succ n ih =>
    simp only [marked] at h
    split at h
    · cases h
    · rcases List.mem_append.mp h with a|p
      · obtain ⟨b,hb,rfl⟩ := List.mem_map.mp a
        rcases List.mem_append.mp hb with down|here
        · have h := ih down; exact ⟨h.1,h.2⟩
        · split at here
          · cases here
          · have hb := (List.mem_filter.mp here).1
            change indices b = w ∧ FreeUnder (s+1) b
            exact ⟨layouts_indices hb,layouts_scope hb⟩
      · obtain ⟨k,_,m,_,hh⟩ := by simpa only [List.mem_flatMap] using p
        rcases List.mem_append.mp hh with left|right
        · obtain ⟨f,hf,ha⟩ := List.mem_flatMap.mp left
          obtain ⟨a,hq,rfl⟩ := List.mem_map.mp ha
          exact ⟨by simp only [indices,(ih hf).1,layouts_indices hq,List.take_append_drop],(ih hf).2,layouts_scope hq⟩
        · obtain ⟨a,ha,hf⟩ := List.mem_flatMap.mp right
          obtain ⟨f,hq,rfl⟩ := List.mem_map.mp hf
          exact ⟨by simp only [indices,layouts_indices hq,(ih ha).1,List.take_append_drop],layouts_scope hq,(ih ha).2⟩

end Blc.SelfintSingleObject.TreeWords
