import Blc.SelfintSaturatedEight

namespace Blc.SelfintSingleObject.Size45
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintWireCost SelfintNonlinearChain
open SourceRefutations OperandGrammar FiveLive Saturated Grammar43 ProfileGrid

def oldProfiles : List (Nat × Nat × Nat) := [(7,5,9),(7,6,7),(7,7,5),(7,8,3),(8,5,5)]

theorem resources {e} (he : IsSelfInterpreter e) (hw : wire e = 45) :
    live e = 4 ∨ (live e = 5 ∧ (leafCount e,lamCount e,indexSum e) ∈ oldProfiles) ∨
      ((live e = 5 ∨ live e = 6) ∧ leafCount e = 8 ∧ lamCount e = 6 ∧ indexSum e = 3) := by
  have ⟨_,_,_⟩ := interpreter_counts he
  have := leaves_bound e; have := live_le_lamCount e
  have := selfInterpreter_two_nonlinear he; have := wire_identity e
  by_cases h4 : live e = 4
  · exact .inl h4
  right
  by_cases new : leafCount e = 8 ∧ lamCount e = 6
  · exact .inr ⟨by omega, new.1,new.2,by omega⟩
  refine .inl ⟨by omega,?_⟩
  simp only [oldProfiles,List.mem_cons,List.not_mem_nil,or_false,Prod.mk.injEq]
  by_cases v : leafCount e = 8
  · exact .inr (.inr (.inr (.inr ⟨v,by omega,by omega⟩)))
  have eq : leafCount e = 7 := by omega
  by_cases h : lamCount e = 5
  · exact .inl ⟨eq,h,by omega⟩
  by_cases h : lamCount e = 6
  · exact .inr (.inl ⟨eq,h,by omega⟩)
  by_cases h : lamCount e = 7
  · exact .inr (.inr (.inl ⟨eq,h,by omega⟩))
  exact .inr (.inr (.inr (.inl ⟨eq,by omega,by omega⟩)))


theorem expose_eight {e : Term} (hm : MinimalInterpreter e) (hl : 5 ≤ live e)
    (hv : leafCount e = 8) (hL : lamCount e = 6) (hX : indexSum e = 3) (hp : ∀ q, e ≠ .lam (.lam q)) :
    ∃ (lit : Bool) (k : Shell) (b : Term), e = wrap lit (k.fill (.lam b)) ∧
      Witness 0 (.lam b) ∧ k.scope (if lit then 1 else 0) ∧
      FreeUnder (if lit then 1 else 0) (.lam b) ∧ leafCount b ≤ 6 := by
  obtain ⟨lit,t,rfl,hw,rt⟩ : ∃ (lit : Bool) (t : Term), e = wrap lit t ∧ Witness 0 t ∧
      (lit = false → ∃ f a, t = .app f a) := by
    cases e with
    | var i => exact (Nat.not_lt_zero i hm.1.1).elim
    | lam b => exact ⟨true,b,rfl,one_lambda_width hm.1,by simp⟩
    | app f a => exact ⟨false,.app f a,rfl,selfInterpreter_width hm.1,fun _ => ⟨_,_,rfl⟩⟩
  have sc : FreeUnder (if lit then 1 else 0) t := by cases lit <;> exact hm.1.1
  have vt : leafCount t = 8 := by cases lit <;> exact hv
  obtain ⟨k,b,rfl,wb,ks,bs⟩ := expose t _ hw sc
  have ne : k ≠ .hole := by
    rintro rfl
    cases lit with
    | false => obtain ⟨_,_,eq⟩ := rt rfl; cases eq
    | true => exact hp b rfl

  have two := SaturatedEight.exterior hm ne wb hl hL hv hX
  have add := k.additive leafCount (.lam b) (fun _ _ => rfl)
  change _ = k.mass leafCount + leafCount b at add
  exact ⟨lit,k,b,rfl,wb,ks,bs,by omega⟩

def eightRow (V L X : Nat) (lit : Bool) (x l v : Nat) (w : List Nat) : List Term :=
  let ks := frames V L X lit x l v
  if ks.isEmpty then [] else
    let bs := (SharedShell.atoms L lit x l v w).filter fun b => FactorFilter.markedHere 0 (.lam b)
    bs.flatMap fun b => ks.flatMap fun k =>
      let t := k.fill (.lam b)
      let e := wrap lit t
      if (live e == 5 || live e == 6) && !chainB e && (!lit || 0 < occ 0 t) then [e] else []

def Eight (c : Params) := Every (fun w => BadRow (eightRow c.V c.L c.X c.lit c.x c.l c.v w))
    (words (c.x+1) c.v c.x)

theorem eight_mem_grid {e : Term} (hm : MinimalInterpreter e) (hl : live e = 5 ∨ live e = 6)
    (hv : leafCount e = 8) (hL : lamCount e = 6) (hX : indexSum e = 3) (hp : ∀ q, e ≠ .lam (.lam q)) :
    ∃ c ∈ gridFor [(8,6,3)], ∃ w ∈ words (c.x+1) c.v c.x, e ∈ eightRow c.V c.L c.X c.lit c.x c.l c.v w := by
  have pf : (leafCount e,lamCount e,indexSum e) ∈ [(8,6,3)] := by simp [hv,hL,hX]
  obtain ⟨lit,k,b,rfl,wb,ks,bs,vb⟩ := expose_eight hm (by omega) hv hL hX hp
  let t := k.fill (.lam b)
  let e := wrap lit t
  let V := leafCount e
  let L := lamCount e
  let X := indexSum e
  have vt : leafCount t = V := by cases lit <;> rfl
  have xt : indexSum t = X := by cases lit <;> rfl
  have lt : lamCount t + (if lit then 1 else 0) = L := by cases lit <;> rfl
  have at' : 5 ≤ live t + (if lit then 1 else 0) := by
    cases lit with
    | false => change live t = 5 ∨ live t = 6 at hl; change 5 ≤ live t; omega
    | true =>
      have pos := SelfintRound6BoundLiteral.one_lambda_public_occ hm.1
      change (live t + (if 0 < occ 0 t then 1 else 0) = 5 ∨ live t + (if 0 < occ 0 t then 1 else 0) = 6) at hl
      change 0 < occ 0 t at pos
      simp [if_pos pos] at hl ⊢; omega
  have sx := k.additive indexSum (.lam b) (fun _ _ => rfl)
  have sl := k.additive lamCount (.lam b) (fun _ _ => rfl)
  have sv := k.additive leafCount (.lam b) (fun _ _ => rfl)
  have sa := k.additive live (.lam b) (fun _ _ => rfl)
  change indexSum t = k.mass indexSum + indexSum b at sx
  change lamCount t = k.mass lamCount + (lamCount b+1) at sl
  change leafCount t = k.mass leafCount + leafCount b at sv
  change live t = k.mass live + live (.lam b) at sa
  have lk := k.lam_mass_le
  have lb := live_le_lamCount (.lam b)
  change _ ≤ lamCount b+1 at lb
  have width := width_live _ _ wb
  simp only [outerLive,Nat.add_zero] at width
  have vle := leaves_bound (.lam b)
  change _ ≤ leafCount b at vle
  have smallOut (h : leafCount b ≤ 5) : 0 < k.mass nonlinear := by
    by_cases z : k.mass nonlinear = 0
    · have hh := chain_shell k _ (chain_of_small_width wb h) z
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
  have nt : Layouts.nonshrinking t = true := by
    have p := Layouts.minimum_passes hm (Nat.le_refl _)
    simp only [Layouts.passes,Bool.and_eq_true] at p
    cases lit <;> exact p.1.1.2
  have sub (a : Shell) (s : Term) (h : Layouts.nonshrinking (a.fill s) = true) :
      Layouts.nonshrinking s = true := by
    induction a with
    | hole => exact h
    | left _ _ ih => exact ih (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp h).1).1
    | right _ _ ih => exact ih (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp h).1).2
  have kk : k ∈ frames V L X lit (indexSum b) (lamCount b) (leafCount b) := by
    apply List.mem_filter.mpr
    refine ⟨?_,?_⟩
    · rw [show V - leafCount b = k.mass leafCount by omega,
        show L - (lamCount b+1) - (if lit then 1 else 0) = k.mass lamCount by omega,
        show X - indexSum b = k.mass indexSum by omega]
      exact shells_complete _ _ _ ks (Nat.le_refl _)
    · simp only [Bool.and_eq_true,Bool.or_eq_true,decide_eq_true_eq]
      exact ⟨by by_cases h : 5 < leafCount b; exact .inl h; exact .inr (smallOut (by omega)),by omega⟩
  have nc : chainB e = false := by
    cases h : chainB e with
    | false => rfl
    | true => exact (chain_cut false 0 h hm).elim
  let c : Params := ⟨V,L,X,lit,indexSum b,lamCount b,leafCount b⟩
  refine ⟨c,?_,indices b,?_,?_⟩
  · apply List.mem_flatMap.mpr
    refine ⟨(V,L,X),pf,List.mem_flatMap.mpr ⟨lit,by cases lit <;> simp,?_⟩⟩
    apply List.mem_flatMap.mpr
    refine ⟨indexSum b-3,List.mem_range.mpr (by omega),List.mem_flatMap.mpr ⟨lamCount b-2,?_,?_⟩⟩
    · apply List.mem_range.mpr
      have veq : V = 8 := hv
      
      cases lit with
      | true => simp at lt; omega
      | false =>
        have exterior : 0 < k.mass lamCount := by
          cases k with
          | hole => change leafCount b = V at vt; omega
          | left k s =>
            have hh := closed_lamCount_pos s ks.2
            simp only [Shell.mass]; omega
          | right s k =>
            have hh := closed_lamCount_pos s ks.1
            simp only [Shell.mass]; omega
        omega
    · apply List.mem_map.mpr
      have veq : V = 8 := hv
      refine ⟨leafCount b-3,List.mem_range.mpr (by omega),?_⟩
      dsimp [c]; congr 1 <;> omega
  · simpa only [c,(index_word b).1,(index_word b).2] using words_self (indices b) (indexSum b+1)
      (by rw [(index_word b).2]; omega)
  · change _ ∈ eightRow V L X lit (indexSum b) (lamCount b) (leafCount b) (indices b)
    simp only [eightRow]
    split
    · rename_i he; simp only [List.isEmpty_iff] at he; rw [he] at kk; cases kk
    · apply List.mem_flatMap.mpr
      refine ⟨b,List.mem_filter.mpr ⟨List.mem_filter.mpr ⟨marked_complete _ _ 1 _ bodyW scopeB (Nat.le_refl _),?_⟩,
        FactorFilter.markedHere_of_witness _ _ wb⟩,List.mem_flatMap.mpr ⟨k,kk,?_⟩⟩
      · simp [width,show lamCount b+1 ≤ live (.lam b)+(L-5) by omega,
          show Layouts.nonshrinking b = true from sub k (.lam b) nt]
      · have pub : (!lit || decide (0 < occ 0 t)) = true := by
          cases lit with
          | false => rfl
          | true =>
            have h : 0 < occ 0 t := SelfintRound6BoundLiteral.one_lambda_public_occ hm.1
            simp [h]
        change e ∈ (if (live e == 5 || live e == 6) && !chainB e && (!lit || decide (0 < occ 0 t)) then [e] else [])
        change live e = 5 ∨ live e = 6 at hl
        rcases hl with h|h <;> simp [h,nc,pub]

end Blc.SelfintSingleObject.Size45
