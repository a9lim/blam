import Blc.SelfintFiveLiveAtom
import Blc.SelfintSaturatedRows

namespace Blc.SelfintSingleObject.FiveLive
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintNonlinearChain SelfintWireCost
open Saturated SourceRefutations OperandGrammar

theorem index_word (t : Term) : (indices t).length = leafCount t ∧ (indices t).sum = indexSum t := by
  induction t <;> simp_all [indices,leafCount,indexSum]

theorem words_self (w : List Nat) (d : Nat) (hs : w.sum < d) : w ∈ words d w.length w.sum := by
  induction w with
  | nil => simp [words]
  | cons i is ih =>
    simp only [List.sum_cons] at hs
    apply List.mem_flatMap.mpr
    refine ⟨i,List.mem_range.mpr (Nat.lt_min.mpr ⟨by omega,by simp; omega⟩),?_⟩
    simp only [List.sum_cons,Nat.add_sub_cancel_left]
    exact List.mem_map.mpr ⟨_,ih (by omega),rfl⟩

/-- Shells with designated lambda, leaf and raw-index totals. Every
recursive step removes a nonempty sibling and its index charge. -/
def shells : Nat → Nat → Nat → Nat → Nat → List Shell
  | 0, _, l, v, x => if l = 0 ∧ v = 0 ∧ x = 0 then [.hole] else []
  | n+1, d, l, v, x =>
    (if l = 0 ∧ v = 0 ∧ x = 0 then [.hole] else []) ++
    (List.range v).flatMap fun r => (List.range (l+1)).flatMap fun m =>
      (List.range (x+1)).flatMap fun y =>
        let sides := (words (y+1) (r+1) y).flatMap (layouts (m+(r+1)) d m)
        (shells n d (l-m) (v-(r+1)) (x-y)).flatMap fun k =>
          sides.flatMap fun s => [.left k s,.right s k]

theorem shells_complete (k : Shell) (n d : Nat) (hs : k.scope d) (hn : k.mass leafCount ≤ n) :
    k ∈ shells n d (k.mass lamCount) (k.mass leafCount) (k.mass indexSum) := by
  have side (a : Term) (sc : FreeUnder d a) : a ∈ (words (indexSum a + 1) (leafCount a) (indexSum a)).flatMap
      (layouts (lamCount a + leafCount a) d (lamCount a)) := by
    apply List.mem_flatMap.mpr
    refine ⟨indices a,?_,layouts_complete a d _ sc (Nat.le_refl _)⟩
    simpa only [(index_word a).1,(index_word a).2] using
      words_self (indices a) (indexSum a + 1) (by rw [(index_word a).2]; omega)
  induction k generalizing n with
  | hole => cases n <;> simp [shells,Shell.mass]
  | left k a ih =>
    have hp := leafCount_pos a
    simp only [Shell.mass] at hn
    cases n with
    | zero => omega
    | succ n =>
      apply List.mem_append_right
      apply List.mem_flatMap.mpr
      refine ⟨leafCount a - 1,List.mem_range.mpr (by simp only [Shell.mass]; omega),?_⟩
      apply List.mem_flatMap.mpr
      refine ⟨lamCount a,List.mem_range.mpr (by simp only [Shell.mass]; omega),?_⟩
      apply List.mem_flatMap.mpr
      refine ⟨indexSum a,List.mem_range.mpr (by simp only [Shell.mass]; omega),?_⟩
      rw [show leafCount a - 1 + 1 = leafCount a by omega]
      simp only [Shell.mass,Nat.add_sub_cancel]
      exact List.mem_flatMap.mpr ⟨k,ih n hs.1 (by omega),List.mem_flatMap.mpr ⟨a,side a hs.2,by simp⟩⟩
  | right a k ih =>
    have hp := leafCount_pos a
    simp only [Shell.mass] at hn
    cases n with
    | zero => omega
    | succ n =>
      apply List.mem_append_right
      apply List.mem_flatMap.mpr
      refine ⟨leafCount a - 1,List.mem_range.mpr (by simp only [Shell.mass]; omega),?_⟩
      apply List.mem_flatMap.mpr
      refine ⟨lamCount a,List.mem_range.mpr (by simp only [Shell.mass]; omega),?_⟩
      apply List.mem_flatMap.mpr
      refine ⟨indexSum a,List.mem_range.mpr (by simp only [Shell.mass]; omega),?_⟩
      rw [show leafCount a - 1 + 1 = leafCount a by omega]
      simp only [Shell.mass,Nat.add_sub_cancel_left]
      exact List.mem_flatMap.mpr ⟨k,ih n hs.2 (by omega),List.mem_flatMap.mpr ⟨a,side a hs.1,by simp⟩⟩

def atomScope (lit : Bool) (x : Nat) : Nat := if x = 3 then 1 else if lit then 2 else 1

def markedAtoms (lit : Bool) (x l v : Nat) (w : List Nat) : List Term :=
  (marked (l+v) 1 (atomScope lit x) l w).filter fun b =>
    live (.lam b) == l+1 && Layouts.nonshrinking b

/-- An internally width-bearing term on at most five leaves cannot also
contain two incomparable nonlinear binders. -/
theorem chain_of_small_width {p} (hw : Witness 0 p) (hv : leafCount p ≤ 5) : Chain p := by
  by_cases hc : Chain p
  · exact hc
  exfalso
  have hn := hc
  have h := width_split_live p 0 hn hw
  simp only [outerLive,Nat.add_zero] at h
  have := not_chain_two_nonlinear _ hn
  have := leaves_bound p
  omega

theorem chain_shell (k : Shell) (s : Term) (hs : Chain s) (hk : k.mass nonlinear = 0) : Chain (k.fill s) := by
  induction k with
  | hole => exact hs
  | left k a ih =>
    change k.mass nonlinear + nonlinear a = 0 at hk
    exact ⟨ih (by omega),chain_of_affine _ (by omega),.inr (by omega)⟩
  | right a k ih =>
    change nonlinear a + k.mass nonlinear = 0 at hk
    exact ⟨chain_of_affine _ (by omega),ih (by omega),.inl (by omega)⟩

/-- Realize a shell once for its entire resource class before forming
the marked atom. A small width atom forces a distinct nonlinear binder
in the surrounding shell. -/
def supportedShells (lit : Bool) (x l v : Nat) :=
  (shells (7-v) (if lit then 1 else 0) (5-(l+1)-(if lit then 1 else 0)) (7-v) (4-x)).filter
    (fun k => 0 < k.mass nonlinear && k.mass live == k.mass lamCount)

def candidates (lit : Bool) (x l v : Nat) (b : Term) : List Term :=
  (supportedShells lit x l v).map
    (fun k => wrap lit (k.fill (.lam b))) |>.filter fun e =>
      live e == 5 && !chainB e && Layouts.nonshrinking e

theorem five_live_row40 {e} (hm : MinimalInterpreter e) (hn : wire e = 40) (hl : live e = 5) :
    ∃ (lit : Bool) (x l v : Nat), 3 ≤ x ∧ x ≤ 4 ∧ 2 ≤ l ∧ l ≤ 3 ∧ 0 < v ∧ v ≤ 5 ∧
      ∃ w ∈ words (x+1) v x, ∃ b ∈ markedAtoms lit x l v w, e ∈ candidates lit x l v b := by
  obtain ⟨lit,k,b,rfl,hw,lo,hi,vmax,xlo,xk,cw,_,sc,ks,kl,kv⟩ := shell40 hm hn hl
  have hb : Witness 1 b := by rcases hw with h | ⟨_,i,j,_,hj,_⟩; exact h; omega
  have headScope : FreeUnder (atomScope lit (indexSum b)) b := by
    unfold atomScope; split
    · exact cw (by assumption)
    · cases lit <;> exact sc
  have eq := (five_live_resources hm.1 hl hn).1
  have hL := k.additive lamCount (.lam b) (fun _ _ => rfl)
  have ha := k.additive live (.lam b) (fun _ _ => rfl)
  have le := live_le_lamCount (.lam b)
  have leK := Shell.lam_mass_le k
  have al : live (.lam b) = lamCount b + 1 := by
    change _ ≤ lamCount b + 1 at le
    cases lit with
    | false => change live (k.fill (.lam b)) = 5 at hl; simp at kl; omega
    | true =>
      change live (k.fill (.lam b)) + (if 0 < occ 0 (k.fill (.lam b)) then 1 else 0) = 5 at hl
      simp at kl; split at hl <;> omega
  have hp := Layouts.minimum_passes hm (Nat.le_refl _)
  simp only [Layouts.passes,Bool.and_eq_true] at hp
  have hn0 := hp.1.1.2
  have nst : Layouts.nonshrinking (k.fill (.lam b)) = true := by cases lit <;> exact hn0
  have sub (k : Shell) (s : Term) (h : Layouts.nonshrinking (k.fill s) = true) : Layouts.nonshrinking s = true := by
    induction k with
    | hole => exact h
    | left _ _ ih => simp only [Shell.fill,Layouts.nonshrinking,Bool.and_eq_true] at h; exact ih h.1.1
    | right _ _ ih => simp only [Shell.fill,Layouts.nonshrinking,Bool.and_eq_true] at h; exact ih h.1.2
  have nc : chainB (wrap lit (k.fill (.lam b))) = false := by
    cases h : chainB (wrap lit (k.fill (.lam b))) with
    | false => rfl
    | true => exact (chain_cut false 0 h hm).elim
  refine ⟨lit,indexSum b,lamCount b,leafCount b,xlo,by omega,lo,hi,leafCount_pos _,vmax,indices b,?_,b,?_,?_⟩
  · simpa only [(index_word b).1,(index_word b).2] using words_self (indices b) (indexSum b+1)
      (by rw [(index_word b).2]; omega)
  · exact List.mem_filter.mpr ⟨marked_complete _ _ 1 _ hb headScope (Nat.le_refl _),by
      simp [al,show Layouts.nonshrinking b = true from sub k (.lam b) nst]⟩
  · apply List.mem_filter.mpr
    refine ⟨List.mem_map.mpr ⟨k,?_,rfl⟩,by simp [hl,nc,hn0]⟩
    apply List.mem_filter.mpr
    have hchain : Chain (.lam b) := chain_of_small_width hw vmax
    have outside : 0 < k.mass nonlinear := by
      by_cases h : k.mass nonlinear = 0
      · have hh := chain_shell k _ hchain h
        exact (selfInterpreter_not_chain hm.1 (by cases lit <;> exact hh)).elim
      · omega
    have ka : k.mass live = k.mass lamCount := by
      cases lit with
      | false => change live (k.fill (.lam b)) = 5 at hl; simp at kl; omega
      | true =>
        change live (k.fill (.lam b)) + (if 0 < occ 0 (k.fill (.lam b)) then 1 else 0) = 5 at hl
        simp at kl; split at hl <;> omega
    refine ⟨?_,by simp [outside,ka]⟩
    rw [show 7 - leafCount b = k.mass leafCount by omega,
      show 5 - (lamCount b+1) - (if lit then 1 else 0) = k.mass lamCount by omega,
      show 4 - indexSum b = k.mass indexSum by omega]
    exact shells_complete _ _ _ ks (Nat.le_refl _)

#print axioms five_live_row40
end Blc.SelfintSingleObject.FiveLive
