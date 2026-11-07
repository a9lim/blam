/- Closed Church-spine probe families have small exact interpreters: a 154-bit
term for both outputs and 121- and 123-bit value decoders on Church numerals,
which cap any lower bound proved from these families alone. These are
restricted-domain witnesses, not self-interpreters.
`docs/classical/self-interpreter/global-floor.md`. -/
import Blc.Selfint162
import Blc.SelfintControl

namespace Blc.SelfintSpineBarriers
open Term SelfintControl
set_option maxRecDepth 4096
set_option maxHeartbeats 800000

def spineBody104G : Term := (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.app (.app (.var 4) (.var 4)) (.lam (.app (.var 4) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))) (.app (.var 3) (.lam (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 0)))))))))

def spineBody104 : Term := .app (.lam (.app (.var 0) (.var 0))) spineBody104G

def spineBody104P : Term := .app spineBody104G spineBody104G

theorem spineBody104P_closed : Closed spineBody104P := by decide

theorem spineBody104_closed : Closed spineBody104 := by decide

theorem spineBody104_size : (blcCode spineBody104).length = 104 := by decide

def spineValueBody87G : Term := (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.app (.app (.var 5) (.var 5)) (.app (.app (.var 2) (.var 2)) (.var 2))) (.var 1)) (.var 0)))))) (.lam (.lam (.var 0)))))))))

def spineValueBody87 : Term := .app (.lam (.app (.var 0) (.var 0))) spineValueBody87G

def spineValueBody87P : Term := .app spineValueBody87G spineValueBody87G

theorem spineValueBody87P_closed : Closed spineValueBody87P := by decide

theorem spineValueBody87_closed : Closed spineValueBody87 := by decide

theorem spineValueBody87_size : (blcCode spineValueBody87).length = 87 := by decide

def churchSpine154 : Term := (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.app (.app (.var 4) (.var 4)) (.lam (.app (.var 4) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))) (.app (.var 3) (.lam (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 0)))))))))) (.lam (.app (.var 2) (.lam (.var 1))))) (.app (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.var 0)))))))

theorem churchSpine154_closed : Closed churchSpine154 := by decide

theorem churchSpine154_size : (blcCode churchSpine154).length = 154 := by decide

def churchValue123 : Term := (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.app (.app (.var 5) (.var 5)) (.app (.app (.var 2) (.var 2)) (.var 2))) (.var 1)) (.var 0)))))) (.lam (.lam (.var 0)))))))))) (.app (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.var 0)))))))

theorem churchValue123_closed : Closed churchValue123 := by decide

theorem churchValue123_size : (blcCode churchValue123).length = 123 := by decide

def iter : Nat → Term → Term → Term
  | 0, _, x => x
  | n + 1, f, x => .app f (iter n f x)

def numeral (n : Nat) : Term := .lam (.lam (iter n (.var 1) (.var 0)))

def suffixSkip (r : Term) : Term := .app (.app r r) r

def succValue (v : Term) : Term := .lam (.lam
  (.app (.var 1) (.app (.app (shift 2 0 v) (.var 1)) (.var 0))))

def succKont (C : Term) : Term :=
  .lam (.app (shift 1 0 C) (succValue (.var 0)))

def closeKont (C : Term) : Term :=
  .lam (.app (shift 1 0 C) (.lam (.var 1)))

def fourZero (s : Term) : Term :=
  pairT churchTrue (pairT churchTrue (pairT churchTrue (pairT churchTrue s)))

def dropFour (s : Term) : Term :=
  .app (.lam (.app (.app (.app (.app (shift 1 0 s) (.var 0))
    (.var 0)) (.var 0)) (.var 0))) churchFalse

theorem subst_iter (n j : Nat) (a f x : Term) :
    substDec j a (iter n f x) = iter n (substDec j a f) (substDec j a x) := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [iter, substDec, ih]

theorem numeral_closed (n : Nat) : Closed (numeral n) := by
  change FreeUnder 2 (iter n (.var 1) (.var 0))
  induction n with
  | zero => decide
  | succ n ih => exact ⟨by decide, ih⟩

theorem numeral_apply (n : Nat) (f x : Term) :
    Betas (.app (.app (numeral n) f) x) (iter n f x) := by
  unfold numeral
  apply betas_trans (betas_appL x (.head (.beta _ _) (.refl _)))
  simp only [contract, substDec, subst_iter]
  simp
  apply betas_trans (.head (.beta _ _) (.refl _))
  simp only [contract, subst_iter, substDec, substDec_shift]
  simp
  exact .refl _

theorem shifted_betas {t u : Term} (h : Betas t u) (c : Nat) :
    Betas (shift 1 c t) (shift 1 c u) := by
  induction h with
  | refl => exact .refl _
  | head hb hs ih =>
    obtain ⟨n, hp⟩ := beta_par hb
    exact betas_trans (parN_betas (parN_shift hp c)) ih

theorem shifted_betas_two {t u : Term} (h : Betas t u) :
    Betas (shift 2 0 t) (shift 2 0 u) := by
  have hh := shifted_betas (shifted_betas h 0) 0
  simpa only [shift_shift0 1 1 0 _ (by omega), Nat.reduceAdd] using hh

theorem succValue_betas {v w : Term} (h : Betas v w) :
    Betas (succValue v) (succValue w) :=
  betas_lam (betas_lam (betas_appR (.var 1)
    (betas_appL (.var 0) (betas_appL (.var 1) (shifted_betas_two h)))))

theorem succ_numeral (n : Nat) : Betas (succValue (numeral n)) (numeral (n + 1)) := by
  unfold succValue
  rw [shift_closed 2 0 (numeral_closed n)]
  exact betas_lam (betas_lam (betas_appR (.var 1) (numeral_apply n (.var 1) (.var 0))))

theorem run_cps_one :
    spineSteps 8 (.app (.app spineBody104P (.var 0)) (pairT churchFalse (.var 1))) =
      some (.app (.app (.var 0) churchFalse) (suffixSkip (.var 1))) := by decide

theorem run_cps_zero :
    spineSteps 8 (.app (.app spineBody104P (.var 0)) (pairT churchTrue (.var 1))) =
      some (.app (.app spineBody104P (succKont (.var 0))) (suffixSkip (.var 1))) := by decide

theorem run_value_one :
    spineSteps 7 (.app spineValueBody87P (pairT churchFalse (.var 0))) =
      some churchFalse := by decide

theorem run_value_zero :
    spineSteps 7 (.app spineValueBody87P (pairT churchTrue (.var 0))) =
      some (succValue (.app spineValueBody87P (suffixSkip (.var 0)))) := by decide

theorem cps_one (C r : Term) :
    Betas (.app (.app spineBody104P C) (pairT churchFalse r))
      (.app (.app C churchFalse) (suffixSkip r)) := by
  have h := betas_inst [C, r] 0
    (betas_of_spineReds (spineReds_of_spineSteps _ run_cps_one))
  simpa [instN, substDec, subst_pairT, suffixSkip,
    substDec_closed _ _ spineBody104P_closed,
    substDec_closed _ _ (show Closed churchFalse by decide), shift_zero,
    substDec_shift] using h

theorem cps_zero (C r : Term) :
    Betas (.app (.app spineBody104P C) (pairT churchTrue r))
      (.app (.app spineBody104P (succKont C)) (suffixSkip r)) := by
  have h := betas_inst [C, r] 0
    (betas_of_spineReds (spineReds_of_spineSteps _ run_cps_zero))
  simpa [instN, substDec, subst_pairT, suffixSkip, succKont, succValue,
    substDec_closed _ _ spineBody104P_closed,
    substDec_closed _ _ (show Closed churchTrue by decide), shift_zero,
    substDec_shift, shift] using h

theorem value_one (r : Term) :
    Betas (.app spineValueBody87P (pairT churchFalse r)) churchFalse := by
  have h := betas_subst (betas_of_spineReds
    (spineReds_of_spineSteps _ run_value_one)) 0 r
  simpa [substDec, subst_pairT,
    substDec_closed _ _ spineValueBody87P_closed,
    substDec_closed _ _ (show Closed churchFalse by decide)] using h

theorem value_zero (r : Term) :
    Betas (.app spineValueBody87P (pairT churchTrue r))
      (succValue (.app spineValueBody87P (suffixSkip r))) := by
  have h := betas_subst (betas_of_spineReds
    (spineReds_of_spineSteps _ run_value_zero)) 0 r
  simpa [substDec, subst_pairT, succValue, suffixSkip,
    substDec_closed _ _ spineValueBody87P_closed,
    substDec_closed _ _ (show Closed churchTrue by decide), shift,
    shift_shift0, shift_closed 2 0 spineValueBody87P_closed] using h

theorem cps_step_return (C N : Term) (n : Nat) :
    Betas (.app (.app (succKont C) (numeral n)) N)
      (.app (.app C (numeral (n + 1))) N) := by
  apply betas_trans (betas_appL N (.head (.beta _ _) (.refl _)))
  simp [succValue, contract, substDec, substDec_shift, shift,
    shift_closed 1 0 (numeral_closed n)]
  simpa only [succValue, shift_closed 2 0 (numeral_closed n)] using
    betas_appL N (betas_appR C (succ_numeral n))

theorem cps_spine (n : Nat) (C N : Term) :
    Betas (.app (.app spineBody104P C)
      (streamOf (blcCode (iter n (.var 1) (.var 0))) N))
      (.app (.app C (numeral n)) N) := by
  induction n generalizing C N with
  | zero =>
    apply betas_trans (cps_one C (streamOf (vbits 0) N))
    exact betas_appR _ (betas_of_spineReds (skip 0 N))
  | succ n ih =>
    let tail := streamOf (blcCode (iter n (.var 1) (.var 0))) N
    have hs : streamOf (blcCode (iter (n + 1) (.var 1) (.var 0))) N =
        pairT churchTrue (streamOf (vbits 3) tail) := by
      simp only [iter, blcCode]
      rfl
    rw [hs]
    apply betas_trans (cps_zero _ _)
    apply betas_trans (betas_appR _ (betas_of_spineReds (skip 3 tail)))
    apply betas_trans (ih (succKont C) N)
    exact cps_step_return C N n

theorem value_spine (n : Nat) (N : Term) :
    Betas (.app spineValueBody87P
      (streamOf (blcCode (iter n (.var 1) (.var 0))) N)) (numeral n) := by
  induction n generalizing N with
  | zero => exact value_one _
  | succ n ih =>
    let tail := streamOf (blcCode (iter n (.var 1) (.var 0))) N
    have hs : streamOf (blcCode (iter (n + 1) (.var 1) (.var 0))) N =
        pairT churchTrue (streamOf (vbits 3) tail) := by
      simp only [iter, blcCode]
      rfl
    rw [hs]
    apply betas_trans (value_zero _)
    apply betas_trans (succValue_betas
      (betas_appR _ (betas_of_spineReds (skip 3 tail))))
    apply betas_trans (succValue_betas (ih N))
    exact succ_numeral n

theorem run_dropFour : spineSteps 13 (dropFour (fourZero (.var 0))) =
    some (.var 0) := by decide

theorem dropFour_correct (s : Term) : Betas (dropFour (fourZero s)) s := by
  have h := betas_subst (betas_of_spineReds
    (spineReds_of_spineSteps _ run_dropFour)) 0 s
  simpa [dropFour, fourZero, subst_pairT, substDec,
    substDec_closed _ _ (show Closed churchTrue by decide),
    substDec_closed _ _ (show Closed churchFalse by decide), shift,
    substDec_shift0, shift_pairT, shift_churchTrue] using h

theorem run_public_cps :
    spineSteps 2 (.app (.app churchSpine154 (.var 0)) (.var 1)) =
      some (.app (.app spineBody104 (closeKont (.var 0))) (dropFour (.var 1))) := by decide

theorem run_public_value :
    spineSteps 1 (.app churchValue123 (.var 0)) =
      some (.lam (.app spineValueBody87 (dropFour (.var 1)))) := by decide

theorem public_cps (C s : Term) :
    Betas (.app (.app churchSpine154 C) s)
      (.app (.app spineBody104 (closeKont C)) (dropFour s)) := by
  have h := betas_inst [C, s] 0
    (betas_of_spineReds (spineReds_of_spineSteps _ run_public_cps))
  simpa [instN, substDec, dropFour, closeKont, shift,
    substDec_closed _ _ churchSpine154_closed,
    substDec_closed _ _ spineBody104_closed,
    substDec_closed _ _ (show Closed churchFalse by decide),
    shift_zero, substDec_shift, shift_shift0, substDec_shift0] using h

theorem public_value (s : Term) :
    Betas (.app churchValue123 s)
      (.lam (.app spineValueBody87 (dropFour (shift 1 0 s)))) := by
  have h := betas_subst (betas_of_spineReds
    (spineReds_of_spineSteps _ run_public_value)) 0 s
  simpa [substDec, dropFour, shift,
    substDec_closed _ _ churchValue123_closed,
    substDec_closed _ _ spineValueBody87_closed,
    substDec_closed _ _ (show Closed churchFalse by decide), shift_shift0] using h

theorem closeKont_return (C v N : Term) (hv : Closed v) :
    Betas (.app (.app (closeKont C) v) N) (.app (.app C (.lam v)) N) := by
  apply betas_trans (betas_appL N (.head (.beta _ _) (.refl _)))
  simp only [contract, substDec, substDec_shift, shift_closed 1 0 hv]
  simp
  exact .refl _

theorem church_full_contract (n : Nat) (C N : Term) :
    Betas (.app (.app churchSpine154 C) (streamOf (blcCode (numeral n)) N))
      (.app (.app C (.lam (numeral n))) N) := by
  apply betas_trans (public_cps _ _)
  apply betas_trans (betas_appR _ (dropFour_correct _))
  apply betas_trans (betas_appL _ (betas_appL _
    (show Betas spineBody104 spineBody104P from .head (.beta _ _) (.refl _))))
  apply betas_trans (cps_spine n (closeKont C) N)
  exact closeKont_return _ _ _ (numeral_closed n)

theorem church_value_contract (n : Nat) (N : Term) :
    Betas (.app churchValue123 (streamOf (blcCode (numeral n)) N))
      (.lam (numeral n)) := by
  apply betas_trans (public_value _)
  apply betas_lam
  rw [shift_streamOf]
  apply betas_trans (betas_appR _ (dropFour_correct _))
  apply betas_trans (betas_appL _
    (show Betas spineValueBody87 spineValueBody87P from .head (.beta _ _) (.refl _)))
  exact value_spine n (shift 1 0 N)

def churchValue121 : Term := (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.app (.var 3) (.var 3)) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.var 0)))))))))) (.app (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.var 0)))))))

theorem churchValue121_closed : Closed churchValue121 := by decide

theorem churchValue121_size : (blcCode churchValue121).length = 121 := by decide

/-- Exactly one inner linear beta contraction grows 121 to the original 123. -/
theorem churchValue121_beta : Beta churchValue121 churchValue123 :=
  (.lam (.lam (.appL _ (.appR _ (.lam (.lam (.appR _ (.lam (.lam (.appL _ (.appR _ (.beta _ _))))))))))))

theorem church_value121_contract (n : Nat) (N : Term) :
    Betas (.app churchValue121 (streamOf (blcCode (numeral n)) N))
      (.lam (numeral n)) :=
  .head (.appL _ churchValue121_beta) (church_value_contract n N)

theorem church_full_ceiling (b : Nat)
    (hb : ∀ E, Closed E →
      (∀ n C N, BetaJoin (.app (.app E C)
        (streamOf (blcCode (numeral n)) N))
        (.app (.app C (.lam (numeral n))) N)) → b ≤ (blcCode E).length) :
    b ≤ 154 := by
  have h := hb churchSpine154 churchSpine154_closed
    (fun n C N => join_of_betas (church_full_contract n C N))
  simpa only [churchSpine154_size] using h

theorem church_value_ceiling (b : Nat)
    (hb : ∀ D, Closed D →
      (∀ n N, BetaJoin (.app D (streamOf (blcCode (numeral n)) N))
        (.lam (numeral n))) → b ≤ (blcCode D).length) : b ≤ 121 := by
  have h := hb churchValue121 churchValue121_closed
    (fun n N => join_of_betas (church_value121_contract n N))
  simpa only [churchValue121_size] using h

#print axioms church_value121_contract

#print axioms church_full_contract
#print axioms church_value_contract

/-- Pins to the independently exported ASCII BLC artifacts. -/
theorem churchSpine154_wire : blcCode (churchSpine154) = [false, false, false, false, false, true, false, true, false, true, false, false, false, true, true, false, true, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true, false, true, false, true, true, true, false, false, true, false, true, true, true, true, true, true, false, true, true, true, true, true, false, false, false, false, true, true, true, true, true, true, false, false, false, false, false, false, true, true, true, false, false, true, false, true, true, true, true, false, true, true, false, true, false, false, true, true, true, true, true, false, false, false, false, false, true, false, false, true, false, true, true, false, true, false, true, false, false, false, false, true, true, true, true, false, false, false, true, true, false, false, true, false, false, false, true, false, true, false, true, false, true, true, true, false, true, false, true, false, true, false, true, false, false, false, false, false, true, false] := by decide

theorem churchValue123_wire : blcCode (churchValue123) = [false, false, false, false, false, true, false, true, false, false, false, true, true, false, true, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true, false, true, true, true, false, false, false, false, false, false, true, true, true, false, false, true, false, true, false, true, false, true, true, true, true, true, true, true, false, true, true, true, true, true, true, false, false, true, false, true, true, true, true, false, true, true, true, false, true, true, true, false, true, true, false, true, false, false, false, false, false, true, false, false, true, false, false, false, true, false, true, false, true, false, true, true, true, true, false, true, false, true, false, true, false, true, false, false, false, false, false, true, false] := by decide

theorem churchValue121_wire : blcCode (churchValue121) = [false, false, false, false, false, true, false, true, false, false, false, true, true, false, true, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true, false, true, true, true, false, false, true, false, false, false, false, false, false, false, true, true, true, false, false, true, false, true, true, true, true, false, true, true, false, true, false, false, true, false, true, true, true, true, true, false, true, true, true, true, false, false, true, false, true, true, false, true, false, true, false, false, false, false, false, true, false, false, true, false, false, false, true, false, true, false, true, false, true, true, true, true, false, true, false, true, false, true, false, true, false, false, false, false, false, true, false] := by decide

end Blc.SelfintSpineBarriers
