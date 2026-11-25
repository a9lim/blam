import Blc.SelfintSmallOperandShell

namespace Blc.SelfintSingleObject.FiveLive
open Term SelfintFloor SelfintLowerBound SelfintNonlinearChain SelfintWireCost Saturated

private def prefixContext (lit : Bool) : Context := if lit then .lam .hole else .hole

/-- With at most two nonlinear sites, a head redex must have a nonlinear
operand whenever that operand contains at most one free occurrence. -/
theorem nonlinear_operand {lit : Bool} {b a : Term}
    (hm : MinimalInterpreter (wrap lit (.app (.lam b) a)))
    (hf : freeLeaves 0 a ≤ 1) (hn : nonlinear (.app (.lam b) a) ≤ 2) : 0 < nonlinear a := by
  have hm' : MinimalInterpreter ((prefixContext lit).fill (.app (.lam b) a)) := by cases lit <;> exact hm
  have hpos := minimal_no_erasing (prefixContext lit) b a hm'
  have dup : 1 < occ 0 b := by
    apply Classical.byContradiction; intro h
    have := minimal_linear_free_count (prefixContext lit) b a hm' (by omega); omega
  simp only [nonlinear,if_pos dup] at hn
  apply Classical.byContradiction; intro h
  have ha : nonlinear a = 0 := by omega
  have cb : Chain b := by
    apply Classical.byContradiction; intro bad
    have := not_chain_two_nonlinear b bad; omega
  have ct : Chain (.app (.lam b) a) := ⟨cb,chain_of_affine a ha,.inr ha⟩
  exact selfInterpreter_not_chain hm.1 (by cases lit <;> exact ct)

/-- A nonempty application context outside an abstraction in a minimum has
at least two leaves if the exposed term has at most two nonlinear binders
and one free occurrence. Dead lambdas may occur anywhere. -/
theorem two_exterior_leaves {lit : Bool} (k : Shell) {b : Term}
    (hm : MinimalInterpreter (wrap lit (k.fill (.lam b)))) (hk : k ≠ .hole)
    (hs : k.scope (if lit then 1 else 0)) (hf : freeLeaves 0 (k.fill (.lam b)) ≤ 1)
    (hn : nonlinear (k.fill (.lam b)) ≤ 2) : 2 ≤ k.mass leafCount := by
  apply Classical.byContradiction; intro low
  have empty (s : Shell) (h : s.mass leafCount = 0) : s = .hole := by
    cases s with
    | hole => rfl
    | left _ a | right a _ => have := leafCount_pos a; simp only [Shell.mass] at h; omega
  cases k with
  | hole => exact hk rfl
  | left k a =>
    have := leafCount_pos a
    simp only [Shell.mass] at low
    have vs : leafCount a = 1 := by omega
    have eq := empty k (by omega); subst k
    have ha := leaves_bound a; have aa := nonlinear_le_live a
    change freeLeaves 0 (.lam b) + freeLeaves 0 a ≤ 1 at hf
    have := nonlinear_operand hm (by omega) hn
    omega
  | right s k =>
    have := leafCount_pos s
    simp only [Shell.mass] at low
    have vs : leafCount s = 1 := by omega
    have eq := empty k (by omega); subst k
    cases s with
    | var i =>
      cases lit with
      | false => exact Nat.not_lt_zero _ hm.1.1.1
      | true =>
        have hi : i < 1 := hs.1
        have hi' : i = 0 := by omega
        subst i
        exact SelfintRound8GlobalOuterSpine.prestream_rigid_not_selfInterpreter
          (v := contract (.app (.var 0) (.lam b)) (.var 0))
          (.head (.beta _ _) (.refl _)) (.app _ (.var 0)) hm.1
    | app f a =>
      have := leafCount_pos f; have := leafCount_pos a
      simp only [leafCount] at vs; omega
    | lam p =>
      have hh : MinimalInterpreter ((prefixContext lit).fill (.app (.lam p) (.lam b))) := by cases lit <;> exact hm
      have := leaves_bound p; have := freeLeaves_split p 0
      change leafCount p = 1 at vs
      have := minimal_no_erasing (prefixContext lit) p (.lam b) hh
      have := minimal_linear_free_count (prefixContext lit) p (.lam b) hh (by omega)
      change freeLeaves 0 (.lam p) + freeLeaves 0 (.lam b) ≤ 1 at hf
      omega

/-- The same marked-shell shape covers seven-leaf, five-live minima with
arbitrarily many dead binders, once a double public prefix is excluded. -/
theorem seven_leaf_shell {e : Term} (hm : MinimalInterpreter e) (hl : live e = 5)
    (hv : leafCount e = 7) (hp : ∀ q, e ≠ .lam (.lam q)) :
    ∃ (lit : Bool) (k : Shell) (b : Term), e = wrap lit (k.fill (.lam b)) ∧
      Witness 0 (.lam b) ∧ k.scope (if lit then 1 else 0) ∧
      FreeUnder (if lit then 1 else 0) (.lam b) ∧
      leafCount b ≤ 5 ∧ 0 < k.mass nonlinear := by
  obtain ⟨lit,t,rfl,hw,rt⟩ : ∃ (lit : Bool) (t : Term), e = wrap lit t ∧ Witness 0 t ∧
      (lit = false → ∃ f a, t = .app f a) := by
    cases e with
    | var i => exact (Nat.not_lt_zero i hm.1.1).elim
    | lam b => exact ⟨true,b,rfl,one_lambda_width hm.1,by simp⟩
    | app f a => exact ⟨false,.app f a,rfl,selfInterpreter_width hm.1,fun _ => ⟨_,_,rfl⟩⟩
  have sc : FreeUnder (if lit then 1 else 0) t := by cases lit <;> exact hm.1.1
  have vt : leafCount t = 7 := by cases lit <;> exact hv
  have nc : ¬ Chain t := fun h => selfInterpreter_not_chain hm.1 (by cases lit <;> exact h)
  have aa : live t + (if lit then 1 else 0) = 5 := by
    cases lit with
    | false => exact hl
    | true =>
      have pos := SelfintRound6BoundLiteral.one_lambda_public_occ (B := t) hm.1
      change live t + (if 0 < occ 0 t then 1 else 0) = 5 at hl
      simp at ⊢; split at hl <;> omega
  have f : freeLeaves 0 t ≤ 1 := by
    have := leaves_bound t; have := not_chain_two_nonlinear t nc
    cases lit <;> simp at aa <;> omega
  have two : nonlinear t ≤ 2 := by
    have := leaves_bound (wrap lit t)
    cases lit with
    | false =>
      change leafCount t = 7 at hv; change live t = 5 at hl
      change nonlinear t + live t + freeLeaves 0 t ≤ leafCount t at this; omega
    | true =>
      change nonlinear (.lam t) + live (.lam t) + freeLeaves 0 (.lam t) ≤ leafCount (.lam t) at this
      change live (.lam t) = 5 at hl
      change leafCount (.lam t) = 7 at hv
      simp only [nonlinear] at this; omega
  obtain ⟨k,b,eq,wb,ks,bs⟩ := expose t _ hw sc
  subst t
  have nonempty : k ≠ .hole := by
    intro eq; subst k
    cases lit with
    | false => obtain ⟨_,_,h⟩ := rt rfl; cases h
    | true => exact hp b rfl
  have h2 := two_exterior_leaves k hm nonempty ks f two
  have add := k.additive leafCount (.lam b) (fun _ _ => rfl)
  change _ = k.mass leafCount + leafCount b at add
  have hb : leafCount b ≤ 5 := by omega
  refine ⟨lit,k,b,rfl,wb,ks,bs,hb,?_⟩
  by_cases h : k.mass nonlinear = 0
  · exact (nc (chain_shell k _ (chain_of_small_width wb hb) h)).elim
  · omega

#print axioms seven_leaf_shell
#print axioms two_exterior_leaves
end Blc.SelfintSingleObject.FiveLive
