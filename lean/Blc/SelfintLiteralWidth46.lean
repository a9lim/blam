import Blc.SelfintWidthSlack

namespace Blc.SelfintSingleObject
open Term SelfintFloor SelfintLowerBound SelfintNonlinearChain SelfintCapture SelfintControl SelfintProbe
open SelfintWireCost

/-- Substituting the two public arguments removes their binders in the
opposite order from the two head contractions. Both arguments are closed,
so the substitution interchange law restores the internal source witness. -/
theorem two_lambda_width {b : Term} (he : IsSelfInterpreter (.lam (.lam b))) : Witness 0 b := by
  let q := streamOf (blcCode pairCombinator) identity
  have hi : Closed identity := by decide
  have si : SO identity := so_closed_lam hi (.var 0)
  have hq : Closed q := streamOf_closed _ hi
  have sq : SO q := by
    dsimp [q, pairCombinator, blcCode, streamOf, pairT, churchBit, identity]
    repeat' first
      | apply so_closed_lam (by decide)
      | apply so_dead (by decide)
      | apply SO.app
      | exact SO.var _
  have hk : Closed churchTrue := by decide
  have sk : SO churchTrue := so_closed_lam hk (so_dead (by decide) (.var 1))
  let v := substDec 0 churchTrue (substDec 0 q b)
  have hv : Betas (.app (.app (.lam (.lam b)) churchTrue) q) v := by
    refine .head (.appL _ (.beta _ _)) ?_
    have hs := substDec_substDec b q churchTrue 0 0 (Nat.le_refl _)
    rw [substDec_closed _ _ hq] at hs
    change Betas (.app (.lam (substDec 1 (shift 1 0 churchTrue) b)) q) v
    rw [show v = substDec 0 q (substDec 1 (shift 1 0 churchTrue) b) from hs]
    exact .head (.beta _ _) (.refl _)
  have hj := join_appL identity (join_after_betas hv
    (contract_join he (M := pairCombinator) (by decide) churchTrue identity))
  have hp : BetaJoin (.app v identity) pairCombinator := join_trans hj
    (join_of_betas (betas_of_spineReds (spineReds_of_spineSteps 3 (by decide))))
  have hn : ¬ SO v := fun h => not_join_pair (.app h si) hp
  have cv := SelfintProbe.betas_scope hv 0 ⟨⟨he.1,hk⟩,hq⟩
  have hw := witness_of_not_so v 0 cv hn
  exact witness_subst_reflect hq sq b 0
    (witness_subst_reflect hk sk (substDec 0 q b) 0 hw)

/-- Two literal public binders cannot provide either of the two incomparable
nonlinear binders or any of the three locally captured witness slots. -/
theorem two_lambda_bound_46 {b : Term} (he : IsSelfInterpreter (.lam (.lam b))) :
    46 ≤ wire (.lam (.lam b)) := by
  have hw := two_lambda_width he
  have hn := selfInterpreter_body_not_chain he
  have hl := width_split_live b 0 hn hw
  simp only [outerLive,Nat.add_zero] at hl
  have nx := not_chain_two_nonlinear b hn
  have hx := width_external_charge b 0 1 (by decide) hw
  simp only [Nat.one_mul] at hx
  have hp := literal_public_occ he
  have hf0 := freeLeaves_split b 0
  simp only [Nat.zero_add] at hf0
  have hf1 := freeLeaves_split b 1
  have hv := leaves_bound b
  have hL := live_le_lamCount b
  have hi := wire_identity (.lam (.lam b))
  simp only [lamCount,leafCount,indexSum] at hi
  omega

#print axioms two_lambda_width
#print axioms two_lambda_bound_46
end Blc.SelfintSingleObject
