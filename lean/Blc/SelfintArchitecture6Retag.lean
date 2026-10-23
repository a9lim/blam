/-
The Boolean service correction s |-> s I s has a source-domain cost:
it drops a constructor's initial zero but retains a variable's first one.
The resulting open grammar is not prefix-decodable, already under depth 2.

This does not forbid dropping the known initial zero of a closed source
at the public entry. It excludes a uniform recursive preprocessor with an
exact open-program suffix contract; the missing tag needs separate state.
-/
import Blc.SelfintArchitecture5BundleCost

namespace Blc.SelfintArchitecture6Retag
open Term SelfintControl SelfintClass SelfintLowerBound SelfintWireCost
set_option maxRecDepth 8192

/-- The cheap Boolean correction used to turn K/F into I/F. -/
def retag : Term := .lam (.app (.app (.var 0) idT) (.var 0))

theorem retag_closed : Closed retag := by decide
theorem retag_size : wire retag = 14 := by decide

theorem run_true : spineSteps 3 (.app retag churchTrue) = some idT := by decide
theorem run_false : spineSteps 3 (.app retag churchFalse) = some churchFalse := by decide
theorem run_zero :
    spineSteps 5 (.app retag (streamOf [false] (.var 0))) = some (.var 0) := by decide
theorem run_one :
    spineSteps 5 (.app retag (streamOf [true] (.var 0))) =
      some (streamOf [true] (.var 0)) := by decide

/-- On a source zero, the correction deletes the cell. -/
theorem zero (R : Term) :
    Betas (.app retag (streamOf [false] R)) R := by
  have h := betas_inst [R] 0 (betas_of_spineReds (spineReds_of_spineSteps _ run_zero))
  simpa only [instN, shift_zero, substDec, subst_streamOf,
    substDec_closed _ _ retag_closed, if_true] using h

/-- On a source one, it retains the whole cell. -/
theorem one (R : Term) :
    Betas (.app retag (streamOf [true] R)) (streamOf [true] R) := by
  have h := betas_inst [R] 0 (betas_of_spineReds (spineReds_of_spineSteps _ run_one))
  simpa only [instN, shift_zero, substDec, subst_streamOf,
    substDec_closed _ _ retag_closed, if_true] using h

def leftSource : Term := .app (.var 0) (.var 0)
def rightSource : Term := .var 1
def extraSource : Term := .var 0
def commonStream (R : Term) : Term := streamOf [true, true, false, true, false] R

theorem sources_scoped : FreeUnder 2 leftSource ∧ FreeUnder 2 rightSource := by decide

/-- APP(0,0) has code 011010; its leading zero is removed. -/
theorem left_collision (R : Term) :
    Betas (.app retag (streamOf (blcCode leftSource) R)) (commonStream R) := by
  exact zero (commonStream R)

/-- Var 1 has code 110 and is followed by code 10 for Var 0. The same
stream 11010 ++ R is retained instead of shortened. -/
theorem right_collision (R : Term) :
    Betas (.app retag (streamOf (blcCode rightSource)
      (streamOf (blcCode extraSource) R))) (commonStream R) := by
  exact one (streamOf [true, false, true, false] R)

/-- No fixed consumer can recover both intended suffixes from these two
colliding inputs. It may be arbitrary, open, nonnormal, and recursive. -/
theorem collision_no_suffix_consumer (D : Term) :
    ¬ (BetaJoin (.app D (.app retag (streamOf (blcCode leftSource) (.var 0)))) (.var 0) ∧
      BetaJoin (.app D (.app retag (streamOf (blcCode rightSource)
        (streamOf (blcCode extraSource) (.var 0)))))
          (streamOf (blcCode extraSource) (.var 0))) := by
  rintro ⟨hleft, hright⟩
  have hl := join_of_betas (betas_appR D (left_collision (.var 0)))
  have hr := join_of_betas (betas_appR D (right_collision (.var 0)))
  have hbad : BetaJoin (.var 0) (streamOf (blcCode extraSource) (.var 0)) :=
    join_trans (join_symm hleft)
      (join_trans hl (join_trans (join_symm hr) hright))
  obtain ⟨w, hw0, hw1⟩ := hbad
  have he0 := normalForm_betas_eq (fun _ h => by cases h) hw0
  have he1 := normalForm_betas_eq
    (fun _ h => nft_no_beta (by decide : NFt (streamOf (blcCode extraSource) (.var 0))) h) hw1
  have he := he0.symm.trans he1
  cases he

/-- A full exact open-parser law would supply the impossible suffix
consumer by taking the continuation F. Semantic value representations are
unrestricted and may depend on the source, continuation, and suffix. -/
theorem no_uniform_open_parser (P : Term) :
    ¬ (∀ M, FreeUnder 2 M → ∀ C R, ∃ V,
      BetaJoin (.app (.app P C) (.app retag (streamOf (blcCode M) R)))
        (.app (.app C V) R)) := by
  intro hP
  obtain ⟨V, hV⟩ := hP leftSource sources_scoped.1 churchFalse (.var 0)
  obtain ⟨W, hW⟩ := hP rightSource sources_scoped.2 churchFalse
    (streamOf (blcCode extraSource) (.var 0))
  apply collision_no_suffix_consumer (.app P churchFalse)
  exact ⟨join_trans hV (join_of_betas (betas_of_spineReds (spine_false2 V (.var 0)))),
    join_trans hW (join_of_betas (betas_of_spineReds
      (spine_false2 W (streamOf (blcCode extraSource) (.var 0)))))⟩

/-- The same collision also obstructs an actual closed-source architecture
when its identical two-ABS prefix leaves one common residual consumer D.
Only the suffix continuation F is used. The state and value protocol may
otherwise be arbitrary, and D is not assumed closed or normal. -/
theorem no_shared_closed_prefix_state {E : Term} (hE : IsSelfInterpreter E)
    (D : Term) :
    ¬ (∀ M, FreeUnder 2 M → ∀ R,
      BetaJoin (.app (.app E churchFalse)
        (streamOf (blcCode (.lam (.lam M))) R))
        (.app D (.app retag (streamOf (blcCode M) R)))) := by
  intro hFactor
  have hsuffix (M : Term) (hM : FreeUnder 2 M) (R : Term) :
      BetaJoin (.app D (.app retag (streamOf (blcCode M) R))) R := by
    have hclosed : Closed (.lam (.lam M)) := hM
    exact join_trans (join_symm (hFactor M hM R))
      (join_trans (contract_join hE hclosed churchFalse R)
        (join_of_betas (betas_of_spineReds (spine_false2 (.lam (.lam (.lam M))) R))))
  exact collision_no_suffix_consumer D
    ⟨hsuffix leftSource sources_scoped.1 (.var 0),
      hsuffix rightSource sources_scoped.2 (streamOf (blcCode extraSource) (.var 0))⟩

#print axioms left_collision
#print axioms collision_no_suffix_consumer
#print axioms no_uniform_open_parser
#print axioms no_shared_closed_prefix_state

end Blc.SelfintArchitecture6Retag
