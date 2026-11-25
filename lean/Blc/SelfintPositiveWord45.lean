import Blc.SelfintCachedCover45

namespace Blc.SelfintSingleObject.OperandGrammar
open Term SelfintFloor SelfintLowerBound SelfintWireCost SourceRefutations

theorem layouts_indices {t : Term} {n d l : Nat} {w : List Nat} (h : t ∈ layouts n d l w) :
    indices t = w := by
  induction n generalizing t d l w with
  | zero => cases h
  | succ n ih =>
    simp only [layouts,List.mem_append] at h
    rcases h with (v | a) | p
    · split at v
      · split at v
        · simp only [List.mem_singleton] at v; subst t; rfl
        · cases v
      · cases v
    · split at a
      · cases a
      · obtain ⟨b,hb,rfl⟩ := List.mem_map.mp a; change indices b = w; exact ih hb
    · obtain ⟨_,_,_,_,hh⟩ := by simpa only [List.mem_flatMap] using p
      obtain ⟨f,hf,ha⟩ := List.mem_flatMap.mp hh
      obtain ⟨a,hq,rfl⟩ := List.mem_map.mp ha
      simp only [indices,ih hf,ih hq,List.take_append_drop]

def positiveIndices (w : List Nat) := w.countP (fun n => 0 < n)

private theorem count_slots (t : Term) (i j : Nat) (ip : 0 < i) (ij : i < j) :
    occ i t + occ j t ≤ positiveIndices (indices t) := by
  induction t generalizing i j with
  | var n =>
    simp only [occ,indices,positiveIndices,List.countP_cons,List.countP_nil]
    split <;> split <;> split <;> simp_all <;> omega
  | lam b ih => exact ih (i+1) (j+1) (by omega) (by omega)
  | app f a hf ha =>
    have h := hf i j ip ij; have k := ha i j ip ij
    simp only [occ,indices,positiveIndices,List.countP_append] at *; omega

/-- Two distinct positive external slots require two different positive raw leaves. -/
theorem marked_positive {t : Term} {n d s l : Nat} {w : List Nat}
    (h : t ∈ marked n d s l w) : 2 ≤ positiveIndices w := by
  induction n generalizing t d s l w with
  | zero => cases h
  | succ n ih =>
    simp only [marked] at h
    split at h
    · cases h
    · rcases List.mem_append.mp h with a|p
      · obtain ⟨b,hb,rfl⟩ := List.mem_map.mp a
        rcases List.mem_append.mp hb with down|here
        · exact ih down
        · split at here
          · cases here
          · obtain ⟨hb,hu⟩ := List.mem_filter.mp here
            change (decide (0 < occ 0 b) && (List.range d).any (fun j =>
              decide (0 < occ (j+1) b) && (List.range j).any (fun i => decide (0 < occ (i+1) b)))) = true at hu
            simp only [Bool.and_eq_true,List.any_eq_true,List.mem_range,decide_eq_true_eq] at hu
            obtain ⟨_,j,_,hj,i,ij,hi⟩ := hu
            have ch := count_slots b (i+1) (j+1) (by omega) (by omega)
            rw [layouts_indices hb] at ch; omega
      · obtain ⟨k,_,m,_,hh⟩ := by simpa only [List.mem_flatMap] using p
        have hw : positiveIndices (w.take (k+1)) + positiveIndices (w.drop (k+1)) = positiveIndices w := by
          simp only [positiveIndices,← List.countP_append,List.take_append_drop]
        rcases List.mem_append.mp hh with left|right
        · obtain ⟨f,hf,_⟩ := List.mem_flatMap.mp left
          have := ih hf; omega
        · obtain ⟨a,ha,_⟩ := List.mem_flatMap.mp right
          have := ih ha; omega

private theorem sparse {n d s l : Nat} {w : List Nat}
    (h : positiveIndices w < 2 ∨ (w.any (fun i => 2 ≤ i)) = false) : marked n d s l w = [] := by
  rcases h with h|h
  · apply List.eq_nil_iff_forall_not_mem.mpr
    intro t ht; have := marked_positive ht; omega
  · cases n <;> simp [marked,h]

theorem sparse_four (c : Cell) (f w : List Nat)
    (h : positiveIndices w < 2 ∨ (w.any (fun i => 2 ≤ i)) = false) :
    BadRow (Grammar43.fourRow c f w) := by
  apply RowReplay.row_of_forall
  intro e he
  obtain ⟨b,_,he⟩ := List.mem_flatMap.mp he
  obtain ⟨a,ha,_⟩ := List.mem_map.mp he
  simp [sparse h] at ha

theorem sparse_row (both lit : Bool) (ks : List Saturated.Shell) (L x l v : Nat) (w : List Nat)
    (h : positiveIndices w < 2 ∨ (w.any (fun i => 2 ≤ i)) = false) :
    BadRow (Fast45.row both lit ks L x l v w) := by
  simp only [Fast45.row,Fast45.atoms,SharedShell.atoms,sparse h,List.filter_nil,List.flatMap_nil]
  exact .nil

end Blc.SelfintSingleObject.OperandGrammar
