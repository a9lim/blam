import Blc.SelfintSourceCost
import Blc.SelfintControl

namespace Blc.JEraseWitnesses
open Term SelfintClass SelfintSourceCost
set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

/- (\n s. s (\b. b (\u t. t n) c) (s s n)) j -/
def mixed50 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 4))))) (.var 3)))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1))
theorem mixed50_price : cost mixed50 = 50 ∧ depth mixed50 = 0 ∧ occ 1 mixed50 = 1 ∧ FreeUnder 2 mixed50 := by decide

/- \s. s (\b t n. b (t n) (c t (t t n))) j -/
def mixed58 : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.app (.var 4) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0)))))))) (.var 2)))
theorem mixed58_price : cost mixed58 = 54 ∧ depth mixed58 = 1 ∧ occ 1 mixed58 = 1 ∧ FreeUnder 2 mixed58 := by decide

/- \s. s (\b. b I c) (s (\b t. b I (\u. t t t)) j) -/
def local_absorber : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))))) (.var 2))))
theorem local_absorber_price : cost local_absorber = 60 ∧ depth local_absorber = 1 ∧ occ 1 local_absorber = 1 ∧ FreeUnder 2 local_absorber := by decide

/- \s. s I (s (\q. c)) (s (\b t. b K F) j (s s s)) -/
def sourceF : Term := (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 2)))) (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 0))))))) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0)))))
theorem sourceF_price : cost sourceF = 66 ∧ depth sourceF = 1 ∧ occ 1 sourceF = 1 ∧ FreeUnder 2 sourceF := by decide

/- \s. s ((\n b. b (\u t. t n) c) j) (s s s) -/
def F52 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 3))))) (.var 3)))) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 0))))
theorem F52_price : cost F52 = 48 ∧ depth F52 = 1 ∧ occ 1 F52 = 1 ∧ FreeUnder 2 F52 := by decide

theorem mixed58_normal : NormalForm mixed58 := fun _ hb => nft_no_beta (by decide) hb
theorem local_absorber_normal : NormalForm local_absorber := fun _ hb => nft_no_beta (by decide) hb
theorem sourceF_normal : NormalForm sourceF := fun _ hb => nft_no_beta (by decide) hb

/-- A unary stream's self-skip discards ANY final operand. -/
theorem skip_argument (n : Nat) (N a : Term) :
    Betas (.app (.app (streamOf (vbits n) N) (streamOf (vbits n) N)) a) N := by
  refine betas_trans (betas_of_spineReds (spineReds_appL a (skip_self n N))) ?_
  have h : Beta (.app (.lam (shift 1 0 N)) a) N := by
    simpa only [contract, substDec_shift] using (Beta.beta (shift 1 0 N) a)
  exact .head h (.refl _)

theorem mixed58_head : spineSteps 7 (.app mixed58 (pairT churchFalse (.var 3))) =
    some (.app (.app (.var 0) (.var 3)) (.app (.app (.var 3) (.var 3)) (.var 1))) := by decide

theorem mixed58_run (r : Term) :
    Betas (.app mixed58 (pairT churchFalse r))
      (.app (.app (.var 0) r) (.app (.app r r) (.var 1))) := by
  have h := spineReds_substDec (spineReds_of_spineSteps _ mixed58_head) 3 r
  have hR := substDec_of_freeUnder mixed58 3 r
    (freeUnder_mono (by decide : 2 ≤ 3) mixed58_price.2.2.2)
  simpa [substDec, hR, pairT, shift, substDec_shift0, shift_zero,
    substDec_churchFalse, shift_churchFalse] using (betas_of_spineReds h)

theorem mixed58_laws : ReaderLaws mixed58 := by
  refine ⟨mixed58_price.2.2.2, ⟨_, ?_, .refl _⟩, fun n => ⟨_, ?_, .refl _⟩⟩
  · exact normalSteps_sound (by decide : normalSteps 7 (.app mixed58 Z) = some zeroOut)
  · rw [stream_vbits_succ]
    exact betas_trans (mixed58_run (streamOf (vbits n) (.var 2)))
      (betas_appR _ (skip_argument n (.var 2) (.var 1)))

theorem mixed50_head : spineSteps 6 (.app mixed50 (pairT churchFalse (.var 3))) =
    some (.app (.app (.var 0) (.var 3))
      (.app (.app (pairT churchFalse (.var 3)) (pairT churchFalse (.var 3))) (.var 1))) := by decide

theorem mixed50_run (r : Term) :
    Betas (.app mixed50 (pairT churchFalse r))
      (.app (.app (.var 0) r)
        (.app (.app (pairT churchFalse r) (pairT churchFalse r)) (.var 1))) := by
  have h := spineReds_substDec (spineReds_of_spineSteps _ mixed50_head) 3 r
  have hR := substDec_of_freeUnder mixed50 3 r
    (freeUnder_mono (by decide : 2 ≤ 3) mixed50_price.2.2.2)
  simpa [substDec, hR, pairT, shift, substDec_shift0, shift_zero,
    substDec_churchFalse, shift_churchFalse] using (betas_of_spineReds h)

theorem mixed50_laws : ReaderLaws mixed50 := by
  refine ⟨mixed50_price.2.2.2, ⟨_, ?_, .refl _⟩, fun n => ⟨_, ?_, .refl _⟩⟩
  · exact normalSteps_sound (by decide : normalSteps 14 (.app mixed50 Z) = some zeroOut)
  · have h := mixed50_run (streamOf (vbits n) (.var 2))
    rw [← stream_vbits_succ] at h
    exact betas_trans h
      (betas_appR _ (skip_argument (n+1) (.var 2) (.var 1)))

theorem sourceF_generic : normalSteps 18 (.app sourceF (pairT churchFalse (.var 3))) =
    some (.app (.app (.var 0) (.var 3)) (.app (.app (.var 3) (.var 3)) (pairT churchFalse (.var 3)))) := by decide

theorem sourceF_run (r : Term) :
    Betas (.app sourceF (pairT churchFalse r))
      (.app (.app (.var 0) r) (.app (.app r r) (pairT churchFalse r))) := by
  have h := SelfintControl.betas_subst (normalSteps_sound sourceF_generic) 3 r
  have hR := substDec_of_freeUnder sourceF 3 r
    (freeUnder_mono (by decide : 2 ≤ 3) sourceF_price.2.2.2)
  simpa [substDec, hR, pairT, shift, substDec_shift0, shift_zero,
    substDec_churchFalse, shift_churchFalse] using h

theorem sourceF_laws : ReaderLaws sourceF := by
  refine ⟨sourceF_price.2.2.2, ⟨_, ?_, .refl _⟩, fun n => ⟨_, ?_, .refl _⟩⟩
  · exact normalSteps_sound (by decide : normalSteps 12 (.app sourceF Z) = some zeroOut)
  · rw [stream_vbits_succ]
    exact betas_trans (sourceF_run (streamOf (vbits n) (.var 2)))
      (betas_appR _ (skip_argument n (.var 2) _))

#print axioms sourceF_laws

theorem local_absorber_generic : normalSteps 11 (.app local_absorber (pairT churchFalse (.var 3))) =
    some (.app (.app (.var 0) (.var 3)) (.app (.app (.var 3) (.var 3)) (.var 3))) := by decide

theorem local_absorber_run (r : Term) :
    Betas (.app local_absorber (pairT churchFalse r))
      (.app (.app (.var 0) r) (.app (.app r r) r)) := by
  have h := SelfintControl.betas_subst (normalSteps_sound local_absorber_generic) 3 r
  have hR := substDec_of_freeUnder local_absorber 3 r
    (freeUnder_mono (by decide : 2 ≤ 3) local_absorber_price.2.2.2)
  simpa [substDec, hR, pairT, shift, substDec_shift0, shift_zero,
    substDec_churchFalse, shift_churchFalse] using h

theorem local_absorber_laws : ReaderLaws local_absorber := by
  refine ⟨local_absorber_price.2.2.2, ⟨_, ?_, .refl _⟩, fun n => ⟨_, ?_, .refl _⟩⟩
  · exact normalSteps_sound (by decide : normalSteps 12 (.app local_absorber Z) = some zeroOut)
  · rw [stream_vbits_succ]
    exact betas_trans (local_absorber_run (streamOf (vbits n) (.var 2)))
      (betas_appR _ (skip_argument n (.var 2) _))

#print axioms local_absorber_laws

theorem F52_generic : normalSteps 10 (.app F52 (pairT churchFalse (.var 3))) =
    some (.app (.app (.var 0) (.var 3)) (.app (.app (.var 3) (.var 3)) (pairT churchFalse (.var 3)))) := by decide

theorem F52_run (r : Term) :
    Betas (.app F52 (pairT churchFalse r))
      (.app (.app (.var 0) r) (.app (.app r r) (pairT churchFalse r))) := by
  have h := SelfintControl.betas_subst (normalSteps_sound F52_generic) 3 r
  have hR := substDec_of_freeUnder F52 3 r
    (freeUnder_mono (by decide : 2 ≤ 3) F52_price.2.2.2)
  simpa [substDec, hR, pairT, shift, substDec_shift0, shift_zero,
    substDec_churchFalse, shift_churchFalse] using h

theorem F52_laws : ReaderLaws F52 := by
  refine ⟨F52_price.2.2.2, ⟨_, ?_, .refl _⟩, fun n => ⟨_, ?_, .refl _⟩⟩
  · exact normalSteps_sound (by decide : normalSteps 14 (.app F52 Z) = some zeroOut)
  · rw [stream_vbits_succ]
    exact betas_trans (F52_run (streamOf (vbits n) (.var 2)))
      (betas_appR _ (skip_argument n (.var 2) _))

#print axioms F52_laws

#print axioms mixed58_laws
#print axioms mixed50_laws
#print axioms mixed58_price
#print axioms local_absorber_price
#print axioms sourceF_price
#print axioms F52_price
#print axioms mixed58_normal
#print axioms sourceF_normal
end Blc.JEraseWitnesses
