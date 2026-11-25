import Blc.SelfintSmallOperandShell
import Blc.SelfintFactorFilter
namespace Blc.SelfintSingleObject.SharedShell
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintWireCost SelfintNonlinearChain
open OperandGrammar FiveLive Saturated SourceRefutations

def frames (L X : Nat) (lit : Bool) (x l v : Nat) : List Shell :=
  (shells (7-v) (if lit then 1 else 0) (L-(l+1)-(if lit then 1 else 0)) (7-v) (X-x)).filter
    fun k => 0 < k.mass nonlinear && k.mass lamCount ≤ k.mass live + (L-5)

def atoms (L : Nat) (lit : Bool) (x l v : Nat) (w : List Nat) : List Term :=
  (marked (l+v) 1 (atomScope lit x) l w).filter fun b =>
    3 ≤ live (.lam b) && l+1 ≤ live (.lam b) + (L-5) && Layouts.nonshrinking b

def row (L X : Nat) (lit : Bool) (x l v : Nat) (w : List Nat) : List Term :=
  let ks := frames L X lit x l v
  if ks.isEmpty then [] else
    (atoms L lit x l v w).flatMap fun b =>
      (ks.map (fun k => wrap lit (k.fill (.lam b)))).filter fun e =>
        live e == 5 && !chainB e

/-- Both five-live profiles through 42 bits have the same marked shell
grammar. The single possible dead lambda can lie on either side. -/
theorem complete {e} (hm : MinimalInterpreter e) (hn : wire e ≤ 42) (hl : live e = 5) :
    ∃ (L X : Nat) (lit : Bool) (x l v : Nat),
      ((L = 5 ∧ X+36 = wire e) ∨ (L = 6 ∧ X+38 = wire e)) ∧
      3 ≤ x ∧ x ≤ X ∧ 2 ≤ l ∧ l+2 ≤ L ∧ 3 ≤ v ∧ v ≤ 5 ∧
      ∃ w ∈ words (x+1) v x, e ∈ row L X lit x l v w := by
  obtain ⟨hV,_,hB,pf⟩ := five_live_through_42 hm.1 hl hn
  obtain ⟨lit,t,rfl,hw,rt⟩ : ∃ (lit : Bool) (t : Term), e = wrap lit t ∧ Witness 0 t ∧
      (lit = false → ∃ f a, t = .app f a) := by
    cases e with
    | var i => exact (Nat.not_lt_zero i hm.1.1).elim
    | lam b => exact ⟨true,b,rfl,one_lambda_width hm.1,by simp⟩
    | app f a => exact ⟨false,.app f a,rfl,selfInterpreter_width hm.1,fun _ => ⟨_,_,rfl⟩⟩
  let L := lamCount (wrap lit t)
  let X := indexSum (wrap lit t)
  have hi : L = 5 ∨ L = 6 := pf.imp And.left And.left
  have sc : FreeUnder (if lit then 1 else 0) t := by cases lit <;> exact hm.1.1
  have bt : AtMostTwo t := by cases lit with | false => exact hB | true => exact hB.2
  have vt : leafCount t = 7 := by cases lit <;> exact hV
  have xt : indexSum t = X := by cases lit <;> rfl
  have lt : lamCount t + (if lit then 1 else 0) = L := by cases lit <;> rfl
  have at' : live t + (if lit then 1 else 0) = 5 := by
    cases lit with
    | false => exact hl
    | true =>
      have pos := SelfintRound6BoundLiteral.one_lambda_public_occ (B := t) hm.1
      change live t + (if 0 < occ 0 t then 1 else 0) = 5 at hl
      simp at ⊢; split at hl <;> omega
  have ft : freeLeaves 0 t ≤ 1 := by
    cases lit with
    | false => rw [SelfintFloor.freeLeaves_closed t 0 hm.1.1]; decide
    | true =>
      have hc : ¬ Chain t := selfInterpreter_not_chain (E := .lam t) hm.1
      have := not_chain_two_nonlinear _ hc; have := leaves_bound t
      simp at at'; omega
  have nt : Layouts.nonshrinking t = true := by
    have p := Layouts.minimum_passes hm (Nat.le_refl _)
    simp only [Layouts.passes,Bool.and_eq_true] at p
    cases lit <;> exact p.1.1.2
  obtain ⟨k,b,ht,wb,ks,bs⟩ := FiveLive.expose t _ hw sc
  rw [ht] at vt xt lt at' ft bt nt hm hn hl rt
  have vb := small_atom hm (by omega) rt ks (by omega) vt ft bt
  have sx := k.additive indexSum (.lam b) (fun _ _ => rfl)
  have sl := k.additive lamCount (.lam b) (fun _ _ => rfl)
  have sv := k.additive leafCount (.lam b) (fun _ _ => rfl)
  have sa := k.additive live (.lam b) (fun _ _ => rfl)
  change _ = k.mass indexSum + indexSum b at sx
  change _ = k.mass lamCount + (lamCount b+1) at sl
  change _ = k.mass leafCount + leafCount b at sv
  have lk := k.lam_mass_le
  have lb := live_le_lamCount (.lam b)
  change _ ≤ lamCount b+1 at lb
  have width := width_live _ _ wb
  simp only [outerLive,Nat.add_zero] at width
  have vle := leaves_bound (.lam b)
  change _ ≤ leafCount b at vle
  have outside : 0 < k.mass nonlinear := by
    by_cases z : k.mass nonlinear = 0
    · have hh := chain_shell k _ (chain_of_small_width wb vb) z
      exact (selfInterpreter_not_chain hm.1 (by cases lit <;> exact hh)).elim
    · omega
  have nonlin_le (a : Shell) : a.mass nonlinear ≤ a.mass lamCount := by
    induction a with
    | hole => exact Nat.le_refl _
    | left _ s ih => exact Nat.add_le_add ih (Nat.le_trans (nonlinear_le_live s) (live_le_lamCount s))
    | right s _ ih => exact Nat.add_le_add (Nat.le_trans (nonlinear_le_live s) (live_le_lamCount s)) ih
  have kl := nonlin_le k
  have hx := width_price _ _ wb
  change 3 ≤ indexSum b at hx
  have bodyW : Witness 1 b := by rcases wb with h | ⟨_,i,j,_,hj,_⟩; exact h; omega
  have scopeB : FreeUnder (atomScope lit (indexSum b)) b := by
    unfold atomScope; split
    · exact closed_of_saturated_width wb (by assumption)
    · cases lit <;> exact bs
  have sub (a : Shell) (s : Term) (h : Layouts.nonshrinking (a.fill s) = true) :
      Layouts.nonshrinking s = true := by
    induction a with
    | hole => exact h
    | left _ _ ih => exact ih (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp h).1).1
    | right _ _ ih => exact ih (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp h).1).2
  have kk : k ∈ frames L X lit (indexSum b) (lamCount b) (leafCount b) := by
    apply List.mem_filter.mpr
    refine ⟨?_,by simp [outside,show k.mass lamCount ≤ k.mass live + (L-5) by omega]⟩
    rw [show 7 - leafCount b = k.mass leafCount by omega,
      show L - (lamCount b+1) - (if lit then 1 else 0) = k.mass lamCount by omega,
      show X - indexSum b = k.mass indexSum by omega]
    exact shells_complete _ _ _ ks (Nat.le_refl _)
  have nc : chainB (wrap lit (k.fill (.lam b))) = false := by
    cases h : chainB (wrap lit (k.fill (.lam b))) with
    | false => rfl
    | true => exact (chain_cut false 0 h hm).elim
  refine ⟨L,X,lit,indexSum b,lamCount b,leafCount b,pf,hx,by omega,by omega,by omega,by omega,vb,indices b,?_,?_⟩
  · simpa only [(index_word b).1,(index_word b).2] using words_self (indices b) (indexSum b+1)
      (by rw [(index_word b).2]; omega)
  rw [ht]
  simp only [row]
  split
  · rename_i h; simp only [List.isEmpty_iff] at h; rw [h] at kk; cases kk
  · apply List.mem_flatMap.mpr
    refine ⟨b,List.mem_filter.mpr ⟨marked_complete _ _ 1 _ bodyW scopeB (Nat.le_refl _),?_⟩,?_⟩
    · simp [width,show lamCount b+1 ≤ live (.lam b)+(L-5) by omega,
        show Layouts.nonshrinking b = true from sub k (.lam b) nt]
    · exact List.mem_filter.mpr ⟨List.mem_map.mpr ⟨k,kk,rfl⟩,by simp [hl,nc]⟩

#print axioms complete
end Blc.SelfintSingleObject.SharedShell
