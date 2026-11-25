import Blc.SelfintSaturatedShell

namespace Blc.SelfintSingleObject.Saturated
open Term SelfintLowerBound SelfintFloor SelfintWireCost SelfintNonlinearChain OperandGrammar
open SourceRefutations SelfintCapture

private theorem word_info (t : Term) : (indices t).length = leafCount t ∧
    (indices t).sum = indexSum t := by induction t <;> simp_all [indices,leafCount,indexSum]

private theorem zero_word (t : Term) (hx : indexSum t = 0) :
    indices t = List.replicate (leafCount t) 0 := by
  induction t with
  | var n => change n = 0 at hx; subst n; rfl
  | lam b ih => exact ih hx
  | app f a hf ha =>
    change indexSum f + indexSum a = 0 at hx
    rw [indices,hf (by omega),ha (by omega),leafCount,List.replicate_append_replicate]

def frames : Nat → Nat → Nat → Nat → List Shell
  | 0, _, l, v => if l = 0 ∧ v = 0 then [.hole] else []
  | n+1, d, l, v =>
    (if l = 0 ∧ v = 0 then [.hole] else []) ++
    (List.range v).flatMap fun r => (List.range (l+1)).flatMap fun m =>
      let sides := layouts (m+(r+1)) d m (List.replicate (r+1) 0)
      let ks := frames n d (l-m) (v-(r+1))
      ks.flatMap fun k => sides.flatMap fun t => [.left k t,.right t k]

theorem frames_complete (k : Shell) (n d : Nat) (hs : k.scope d) (hx : k.mass indexSum = 0)
    (hn : k.mass leafCount ≤ n) : k ∈ frames n d (k.mass lamCount) (k.mass leafCount) := by
  induction k generalizing n with
  | hole => cases n <;> simp [frames,Shell.mass]
  | left k a ih =>
    have hp := leafCount_pos a
    simp only [Shell.mass] at hx hn
    cases n with
    | zero => omega
    | succ n =>
      apply List.mem_append_right
      apply List.mem_flatMap.mpr
      refine ⟨leafCount a - 1,List.mem_range.mpr (by simp only [Shell.mass]; omega),?_⟩
      apply List.mem_flatMap.mpr
      refine ⟨lamCount a,List.mem_range.mpr (by simp only [Shell.mass]; omega),?_⟩
      rw [show leafCount a - 1 + 1 = leafCount a by omega]
      simp only [Shell.mass,Nat.add_sub_cancel]
      apply List.mem_flatMap.mpr
      refine ⟨k,ih n hs.1 (by omega) (by omega),List.mem_flatMap.mpr ⟨a,?_,by simp⟩⟩
      rw [← zero_word a (by omega)]; exact layouts_complete a d _ hs.2 (Nat.le_refl _)
  | right a k ih =>
    have hp := leafCount_pos a
    simp only [Shell.mass] at hx hn
    cases n with
    | zero => omega
    | succ n =>
      apply List.mem_append_right
      apply List.mem_flatMap.mpr
      refine ⟨leafCount a - 1,List.mem_range.mpr (by simp only [Shell.mass]; omega),?_⟩
      apply List.mem_flatMap.mpr
      refine ⟨lamCount a,List.mem_range.mpr (by simp only [Shell.mass]; omega),?_⟩
      rw [show leafCount a - 1 + 1 = leafCount a by omega]
      simp only [Shell.mass,Nat.add_sub_cancel_left]
      apply List.mem_flatMap.mpr
      refine ⟨k,ih n hs.2 (by omega) (by omega),List.mem_flatMap.mpr ⟨a,?_,by simp⟩⟩
      rw [← zero_word a (by omega)]; exact layouts_complete a d _ hs.1 (Nat.le_refl _)

def atoms (l v : Nat) (w : List Nat) :=
  (layouts (l+v) 1 l w).filter fun b =>
    spans 1 b && live (.lam b) == l+1 && Layouts.nonshrinking b

private theorem subfacts (k : Shell) (s : Term)
    (hn : Layouts.nonshrinking (k.fill s) = true) : Layouts.nonshrinking s = true := by
  induction k with
  | hole => exact hn
  | left _ _ ih => exact ih (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp hn).1).1
  | right _ _ ih => exact ih (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp hn).1).2

private theorem sublive (k : Shell) (s : Term) (h : live (k.fill s) = lamCount (k.fill s)) :
    live s = lamCount s := by
  have := k.additive live s (fun _ _ => rfl)
  have := k.additive lamCount s (fun _ _ => rfl)
  have := live_le_lamCount s
  have := Shell.lam_mass_le k
  omega

def sources (lit : Bool) (l v : Nat) (b : Term) : List Term :=
  (frames (7-v) (if lit then 1 else 0) (5-(l+1)-(if lit then 1 else 0)) (7-v)).map
    (fun k => wrap lit (k.fill (.lam b))) |>.filter fun e =>
      live e == 5 && !chainB e && Layouts.nonshrinking e

private theorem not_chainB {e} (he : MinimalInterpreter e) : chainB e = false := by
  cases h : chainB e with
  | false => rfl
  | true => exact (chain_cut (e := e) false 0 h he).elim

/-- The atom word uses the full raw index budget, so a fixed alphabet of
four suffices for every marked lambda body. -/
private theorem mem_words_sum (w : List Nat) (n : Nat) (h : w.sum = n) :
    w ∈ words (n+1) w.length n := by
  have aux (xs : List Nat) (d : Nat) (hd : xs.sum < d) : xs ∈ words d xs.length xs.sum := by
    induction xs with
    | nil => simp [words]
    | cons i is ih =>
      simp only [List.sum_cons] at hd
      apply List.mem_flatMap.mpr
      refine ⟨i,List.mem_range.mpr (Nat.lt_min.mpr ⟨by omega,by simp; omega⟩),?_⟩
      simp only [List.sum_cons,Nat.add_sub_cancel_left]
      exact List.mem_map.mpr ⟨_,ih (by omega),rfl⟩
  subst n; exact aux w _ (Nat.lt_succ_self _)

theorem five_live_source {e} (hm : MinimalInterpreter e) (hn : wire e = 39) (h5 : live e = 5) :
    ∃ (lit : Bool) (l v : Nat), 2 ≤ l ∧ l ≤ 3 ∧ 0 < v ∧ v ≤ 5 ∧
      ∃ w ∈ words 4 v 3, ∃ b ∈ atoms l v w, e ∈ sources lit l v b := by
  obtain ⟨lit,k,b,rfl,hw,cw,xw,xk,lo,hi,vmax,kl,kv,ks⟩ := five_live_shell hm hn h5
  have hbody : Witness 1 b := by rcases hw with h | ⟨_,i,j,_,hj,_⟩; exact h; omega
  have hnsh := Layouts.minimum_passes hm (Nat.le_refl _)
  simp only [Layouts.passes,Bool.and_eq_true] at hnsh
  have hn0 := hnsh.1.1.2
  have hn1 : Layouts.nonshrinking (k.fill (.lam b)) = true := by cases lit <;> exact hn0
  have hb := subfacts k (.lam b) hn1
  have hL := k.additive lamCount (.lam b) (fun _ _ => rfl)
  have le := live_le_lamCount (k.fill (.lam b))
  have eq : live (k.fill (.lam b)) = lamCount (k.fill (.lam b)) := by
    change lamCount (k.fill (.lam b)) = k.mass lamCount + (lamCount b+1) at hL
    cases lit with
    | false => change live (k.fill (.lam b)) = 5 at h5; simp at kl; omega
    | true =>
      change live (k.fill (.lam b)) + (if 0 < occ 0 (k.fill (.lam b)) then 1 else 0) = 5 at h5
      simp at kl; split at h5 <;> omega
  have heq := sublive k (.lam b) eq
  refine ⟨lit,lamCount b,leafCount b,lo,hi,leafCount_pos _,vmax,indices b,?_,b,?_,?_⟩
  · simpa only [(word_info b).1] using mem_words_sum (indices b) 3 ((word_info b).2.trans xw)
  · exact List.mem_filter.mpr ⟨layouts_complete b 1 _ cw (Nat.le_refl _),by
      simp [spans_of_witness b 1 hbody,heq,lamCount,show Layouts.nonshrinking b = true from hb]⟩
  · apply List.mem_filter.mpr
    refine ⟨List.mem_map.mpr ⟨k,?_,rfl⟩,by simp [h5,not_chainB hm,hn0]⟩
    have h1 : 7 - leafCount b = k.mass leafCount := by omega
    have h2 : 5 - (lamCount b + 1) - (if lit then 1 else 0) = k.mass lamCount := by omega
    rw [h1,h2]
    exact frames_complete _ _ _ ks xk (Nat.le_refl _)

end Blc.SelfintSingleObject.Saturated
