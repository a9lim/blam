import Blc.SelfintMarkedWords

namespace Blc.SelfintSingleObject.OperandGrammar
open Term SelfintFloor

theorem layouts_measures {t : Term} {n d l : Nat} {w : List Nat} (h : t ∈ layouts n d l w) :
    lamCount t = l ∧ leafCount t = w.length := by
  induction n generalizing t d l w with
  | zero => cases h
  | succ n ih =>
    simp only [layouts,List.mem_append] at h
    rcases h with (v | a) | p
    · split at v
      · split at v
        · simp only [List.mem_singleton] at v; subst t; exact ⟨rfl,rfl⟩
        · cases v
      · cases v
    · split at a
      · cases a
      · obtain ⟨b,hb,rfl⟩ := List.mem_map.mp a
        obtain ⟨hl,hv⟩ := ih hb
        exact ⟨by simp only [lamCount,hl]; omega,hv⟩
    · obtain ⟨k,hk,m,hm,hh⟩ := by simpa only [List.mem_flatMap] using p
      obtain ⟨f,hf,ha⟩ := List.mem_flatMap.mp hh
      obtain ⟨a,hq,rfl⟩ := List.mem_map.mp ha
      have ⟨lf,vf⟩ := ih hf
      have ⟨la,va⟩ := ih hq
      simp only [List.mem_range] at hk hm
      simp only [lamCount,leafCount,lf,la,vf,va,List.length_take,List.length_drop]; omega

theorem marked_measures {t : Term} {n d s l : Nat} {w : List Nat} (h : t ∈ marked n d s l w) :
    lamCount t = l ∧ leafCount t = w.length := by
  induction n generalizing t d s l w with
  | zero => cases h
  | succ n ih =>
    simp only [marked] at h
    split at h
    · cases h
    · rcases List.mem_append.mp h with a|p
      · obtain ⟨b,hb,rfl⟩ := List.mem_map.mp a
        have shape : lamCount b = l-1 ∧ leafCount b = w.length := by
          rcases List.mem_append.mp hb with down|here
          · exact ih down
          · split at here
            · cases here
            · exact layouts_measures (List.mem_filter.mp here).1
        exact ⟨by simp only [lamCount,shape.1]; omega,shape.2⟩
      · obtain ⟨k,hk,m,hm,hh⟩ := by simpa only [List.mem_flatMap] using p
        simp only [List.mem_range] at hm hk
        rcases List.mem_append.mp hh with left|right
        · obtain ⟨f,hf,ha⟩ := List.mem_flatMap.mp left
          obtain ⟨a,hq,rfl⟩ := List.mem_map.mp ha
          have ⟨lf,vf⟩ := ih hf
          have ⟨la,va⟩ := layouts_measures hq
          simp only [lamCount,leafCount,lf,la,vf,va,List.length_take,List.length_drop]; omega
        · obtain ⟨a,ha,hf⟩ := List.mem_flatMap.mp right
          obtain ⟨f,hq,rfl⟩ := List.mem_map.mp hf
          have ⟨la,va⟩ := ih ha
          have ⟨lf,vf⟩ := layouts_measures hq
          simp only [lamCount,leafCount,lf,la,vf,va,List.length_take,List.length_drop]; omega

theorem word_length {w : List Nat} {d v x : Nat} (h : w ∈ words d v x) : w.length = v := by
  induction v generalizing w x with
  | zero => simp only [words] at h; split at h <;> simp_all
  | succ v ih =>
    obtain ⟨i,_,u,hu,rfl⟩ := by simpa only [words,List.mem_flatMap,List.mem_map] using h
    simp [ih hu]

end Blc.SelfintSingleObject.OperandGrammar
