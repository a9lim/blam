import Blc.SelfintNeededHead
namespace Blc.NeedBinder.R1Followup
open Term SelfintClass SelfintLowerBound SelfintWiden SelfintWidenHoist SelfintSourceCost SelfintStreamSpecializer
set_option maxRecDepth 4000
set_option maxHeartbeats 1000000
def capture53 : Term := (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.lam (.app (.app (.var 2) (.lam (.var 4))) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 0)))) (.var 2)))
def sunk55 : Term := (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.lam (.app (.app (.var 2) (.lam (.var 4))) (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 1))))) (.var 2)))
def needed66 : Term := (.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 2)))
def deep109 : Term := (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.app (.app (.app (.app (.lam (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 7) (.lam (.var 9))) (.var 5)))))))) (.app (.app (.var 1) (.var 1)) (.var 0))) (.lam (.var 0))) (.lam (.var 0))) (.lam (.var 0))) (.lam (.var 0))) (.lam (.var 0))))) (.var 2)))
def contract111 : Term := (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.app (.app (.app (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 6) (.lam (.var 8))) (.app (.app (.var 6) (.var 6)) (.var 5)))))))) (.lam (.var 0))) (.lam (.var 0))) (.lam (.var 0))) (.lam (.var 0))) (.lam (.var 0))))) (.var 2)))
def sink119 : Term := (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.app (.app (.app (.lam (.lam (.lam (.lam (.lam (.app (.lam (.app (.app (.var 7) (.lam (.var 9))) (.var 0))) (.app (.app (.var 6) (.var 6)) (.var 5)))))))) (.lam (.var 0))) (.lam (.var 0))) (.lam (.var 0))) (.lam (.var 0))) (.lam (.var 0))))) (.var 2)))
def thin75 : Term := (.lam (.app (.app (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 0))) (.app (.var 1) (.app (.var 5) (.var 2))))))))) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 2)))

theorem capture_contracts : Betas capture53 reader162 :=
  normalSteps_sound (by decide : normalSteps 1 capture53 = some reader162)
theorem sunk_contracts : Betas sunk55 reader162 :=
  normalSteps_sound (by decide : normalSteps 1 sunk55 = some reader162)
theorem capture_full : FullReader capture53 :=
  FullReader.of_betas (by decide) capture_contracts reader162_fullReader
theorem sunk_full : FullReader sunk55 :=
  FullReader.of_betas (by decide) sunk_contracts reader162_fullReader
theorem prices : weight 0 capture53=53 ∧ weight 0 sunk55=55 ∧ weight 0 needed66=66 := by decide

theorem deep_contracts : Betas deep109 reader162 :=
  normalSteps_sound (by decide : normalSteps 6 deep109 = some reader162)
theorem contract_contracts : Betas contract111 reader162 :=
  normalSteps_sound (by decide : normalSteps 5 contract111 = some reader162)
theorem sink_contracts : Betas sink119 reader162 :=
  normalSteps_sound (by decide : normalSteps 6 sink119 = some reader162)
theorem deep_full : FullReader deep109 :=
  FullReader.of_betas (by decide) deep_contracts reader162_fullReader
theorem contract_full : FullReader contract111 :=
  FullReader.of_betas (by decide) contract_contracts reader162_fullReader
theorem sink_full : FullReader sink119 :=
  FullReader.of_betas (by decide) sink_contracts reader162_fullReader
theorem deep_prices : weight 0 deep109=109 ∧ weight 0 contract111=111 ∧ weight 0 sink119=119 := by decide

theorem critical_profiles (F d : Nat) (hc : 7 ≤ (F-1)*d)
    (hb : 4*F+3*d+5 ≤ 37) :
    (F=2 ∧ 7≤d ∧ d≤8) ∨ (F=3 ∧ 4≤d ∧ d≤6) ∨
    (F=4 ∧ 3≤d ∧ d≤5) ∨ (F=5 ∧ 2≤d ∧ d≤4) ∨ (F=6 ∧ d=2) := by
  have hd : 1≤d := by
    by_cases hz : d=0
    · simp [hz] at hc
    · omega
  have hF : F≤7 := by omega
  have casesF : F=0 ∨ F=1 ∨ F=2 ∨ F=3 ∨ F=4 ∨ F=5 ∨ F=6 ∨ F=7 := by omega
  rcases casesF with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp_all <;> omega

theorem needed_zero : Betas (.app needed66 Z) zeroOut := by
  have hh := advance_sound 16 (.app needed66 Z)
  have he : advance 16 (.app needed66 Z)=zeroOut := by decide
  rwa [he] at hh

theorem needed_var_head : Betas (.app needed66 (pairT churchFalse (.var 2)))
    (.app (.app (.var 0) (.var 2)) (.app (.app (.var 2) (.var 2)) (.var 1))) := by
  have hh := advance_sound 16 (.app needed66 (pairT churchFalse (.var 2)))
  have he : advance 16 (.app needed66 (pairT churchFalse (.var 2)))=
    (.app (.app (.var 0) (.var 2)) (.app (.app (.var 2) (.var 2)) (.var 1))) := by decide
  rwa [he] at hh

theorem needed_full : FullReader needed66 := by
  refine ⟨by decide,⟨_,needed_zero,.refl _⟩,?_⟩
  intro n
  have hh := SelfintControl.betas_subst needed_var_head 2 (unary n (.var 2))
  have hr : substDec 2 (unary n (.var 2)) needed66=needed66 :=
    substDec_of_freeUnder _ _ _ (by decide : FreeUnder 2 needed66)
  have head : Betas (.app needed66 (unary (n+1) (.var 2)))
      (.app (.app (.var 0) (unary n (.var 2)))
        (.app (.app (unary n (.var 2)) (unary n (.var 2))) (.var 1))) := by
    simpa [substDec,hr,unary,pairT,shift,shift_churchFalse,
      substDec_churchFalse,substDec_shift0,shift_zero] using hh
  have hs := betas_of_spineReds (skip_self n (.var 2))
  rw [← unary_stream] at hs
  have tail : Betas (.app (.app (unary n (.var 2)) (unary n (.var 2))) (.var 1)) (.var 2) :=
    betas_trans (betas_appL (.var 1) hs) (.head (.beta _ _) (.refl _))
  exact ⟨_,betas_trans head (betas_appR _ tail),.refl _⟩

theorem thin_price : weight 0 thin75=75 := by decide
theorem thin_zero : Betas (.app thin75 Z) zeroOut := by
  have hh := advance_sound 16 (.app thin75 Z)
  have he : advance 16 (.app thin75 Z)=zeroOut := by decide
  rwa [he] at hh
theorem thin_var_head : Betas (.app thin75 (pairT churchFalse (.var 2)))
    (.app (.app (.var 0) (.var 2))
      (.app (.app (pairT churchFalse (.var 2)) (pairT churchFalse (.var 2)))
        (.app (.var 0) (.var 2)))) := by
  have hh := advance_sound 16 (.app thin75 (pairT churchFalse (.var 2)))
  have he : advance 16 (.app thin75 (pairT churchFalse (.var 2)))=
    (.app (.app (.var 0) (.var 2))
      (.app (.app (pairT churchFalse (.var 2)) (pairT churchFalse (.var 2)))
        (.app (.var 0) (.var 2)))) := by decide
  rwa [he] at hh
theorem thin_full : FullReader thin75 := by
  refine ⟨by decide,⟨_,thin_zero,.refl _⟩,?_⟩
  intro n
  have hh := SelfintControl.betas_subst thin_var_head 2 (unary n (.var 2))
  have hr : substDec 2 (unary n (.var 2)) thin75=thin75 :=
    substDec_of_freeUnder _ _ _ (by decide : FreeUnder 2 thin75)
  have head : Betas (.app thin75 (unary (n+1) (.var 2)))
      (.app (.app (.var 0) (unary n (.var 2)))
        (.app (.app (unary (n+1) (.var 2)) (unary (n+1) (.var 2)))
          (.app (.var 0) (unary n (.var 2))))) := by
    simpa [substDec,hr,unary,pairT,shift,shift_churchFalse,
      substDec_churchFalse,substDec_shift0,shift_zero] using hh
  have hs := betas_of_spineReds (skip_self (n+1) (.var 2))
  rw [← unary_stream] at hs
  have tail : Betas
      (.app (.app (unary (n+1) (.var 2)) (unary (n+1) (.var 2)))
        (.app (.var 0) (unary n (.var 2)))) (.var 2) :=
    betas_trans (betas_appL _ hs) (.head (.beta _ _) (.refl _))
  exact ⟨_,betas_trans head (betas_appR _ tail),.refl _⟩

#print axioms capture_full
#print axioms sunk_full
#print axioms prices
#print axioms needed_full
#print axioms deep_full
#print axioms contract_full
#print axioms sink_full
#print axioms deep_prices
#print axioms critical_profiles
#print axioms thin_price
#print axioms thin_full
end Blc.NeedBinder.R1Followup
