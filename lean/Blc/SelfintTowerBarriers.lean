/- Explicit infinite-probe-family witnesses on the lambda towers `λⁿ. I`: a
57-bit value decoder, an 84-bit value decoder that also handles the poison
family `λⁿ. Ω`, and an 88-bit term for both outputs, which cap any lower bound
proved from these families alone; no self-interpreter lower bound.
`docs/classical/self-interpreter/global-floor.md`. -/
import Blc.Selfint162
import Blc.SelfintControl
import Blc.SelfintZero

namespace Blc.SelfintTowerBarriers
open Term SelfintControl SelfintZero
set_option maxRecDepth 4096
set_option maxHeartbeats 800000

def towerValue57G : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 3) (.var 3)) (.var 0))))))))

def towerValue57 : Term := .app (.lam (.app (.var 0) (.var 0))) towerValue57G

def towerValue57P : Term := .app towerValue57G towerValue57G

theorem towerValue57_closed : Closed towerValue57 := by decide

theorem towerValue57_size : (blcCode towerValue57).length = 57 := by decide

theorem towerValue57P_closed : Closed towerValue57P := by decide

def towerBoth88G : Term := (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.app (.app (.var 4) (.var 4)) (.lam (.app (.var 4) (.app (.var 2) (.var 0)))))) (.app (.var 3) (.lam (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0)))))))))))

def towerBoth88 : Term := .app (.lam (.app (.var 0) (.var 0))) towerBoth88G

def towerBoth88P : Term := .app towerBoth88G towerBoth88G

theorem towerBoth88_closed : Closed towerBoth88 := by decide

theorem towerBoth88_size : (blcCode towerBoth88).length = 88 := by decide

theorem towerBoth88P_closed : Closed towerBoth88P := by decide

def poisonValue84G : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 4) (.var 4)) (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))))))

def poisonValue84 : Term := .app (.lam (.app (.var 0) (.var 0))) poisonValue84G

def poisonValue84P : Term := .app poisonValue84G poisonValue84G

theorem poisonValue84_closed : Closed poisonValue84 := by decide

theorem poisonValue84_size : (blcCode poisonValue84).length = 84 := by decide

theorem poisonValue84P_closed : Closed poisonValue84P := by decide

def omega : Term := .app (.lam (.app (.var 0) (.var 0)))
  (.lam (.app (.var 0) (.var 0)))

def wrapKont (C : Term) : Term :=
  .lam (.app (shift 1 0 C) (.app churchTrue (.var 0)))

def lamPow : Nat → Term → Term
  | 0, t => t
  | n + 1, t => .lam (lamPow n t)

def sourceTower (n : Nat) : Term := lamPow n identity

theorem lamPow_closed (n : Nat) {t : Term} (ht : Closed t) :
    Closed (lamPow n t) := by
  induction n with
  | zero => exact ht
  | succ n ih => exact closed_freeUnder ih 1

theorem lamPow_lam (n : Nat) (t : Term) :
    lamPow n (.lam t) = .lam (lamPow n t) := by
  induction n with
  | zero => rfl
  | succ n ih => exact congrArg Term.lam ih

theorem fix_unfold (G : Term) :
    Betas (.app (.lam (.app (.var 0) (.var 0))) G) (.app G G) :=
  .head (.beta _ _) (.refl _)

theorem run_value57_one :
    spineSteps 7 (.app towerValue57P (pairT churchFalse (.var 0))) =
      some identity := by decide

theorem run_value57_zero :
    spineSteps 9 (.app towerValue57P
      (pairT churchTrue (pairT churchTrue (.var 0)))) =
      some (.app churchTrue (.app towerValue57P (.var 0))) := by decide

theorem run_value84_one :
    spineSteps 7 (.app poisonValue84P (pairT churchFalse (.var 0))) =
      some identity := by decide

theorem run_value84_zero :
    spineSteps 11 (.app poisonValue84P
      (pairT churchTrue (pairT churchTrue (.var 0)))) =
      some (.lam (.app poisonValue84P (.var 1))) := by decide

theorem run_value84_app :
    spineSteps 11 (.app poisonValue84P
      (pairT churchTrue (pairT churchFalse (.var 0)))) =
      some (.lam omega) := by decide

theorem run_both88_one :
    spineSteps 8 (.app (.app towerBoth88P (.var 0))
      (pairT churchFalse (.var 1))) =
      some (.app (.app (.var 0) identity) (.app (.var 1) churchFalse)) := by decide

theorem run_both88_zero :
    spineSteps 8 (.app (.app towerBoth88P (.var 0))
      (pairT churchTrue (.var 1))) =
      some (.app (.app towerBoth88P (wrapKont (.var 0)))
        (.app (.var 1) churchFalse)) := by decide

theorem value57_one (R : Term) :
    Betas (.app towerValue57P (pairT churchFalse R)) identity := by
  have h := betas_subst (betas_of_spineReds
    (spineReds_of_spineSteps _ run_value57_one)) 0 R
  simpa [substDec, subst_pairT, substDec_closed _ _ towerValue57P_closed,
    substDec_closed _ _ (show Closed churchFalse by decide),
    substDec_closed _ _ (show Closed identity by decide), if_pos rfl] using h

theorem value57_zero (R : Term) :
    Betas (.app towerValue57P (pairT churchTrue (pairT churchTrue R)))
      (.app churchTrue (.app towerValue57P R)) := by
  have h := betas_subst (betas_of_spineReds
    (spineReds_of_spineSteps _ run_value57_zero)) 0 R
  simpa [substDec, subst_pairT, substDec_closed _ _ towerValue57P_closed,
    substDec_closed _ _ (show Closed churchTrue by decide), if_pos rfl] using h

theorem value84_one (R : Term) :
    Betas (.app poisonValue84P (pairT churchFalse R)) identity := by
  have h := betas_subst (betas_of_spineReds
    (spineReds_of_spineSteps _ run_value84_one)) 0 R
  simpa [substDec, subst_pairT, substDec_closed _ _ poisonValue84P_closed,
    substDec_closed _ _ (show Closed churchFalse by decide),
    substDec_closed _ _ (show Closed identity by decide), if_pos rfl] using h

theorem value84_zero (R : Term) :
    Betas (.app poisonValue84P (pairT churchTrue (pairT churchTrue R)))
      (.lam (.app poisonValue84P (shift 1 0 R))) := by
  have h := betas_subst (betas_of_spineReds
    (spineReds_of_spineSteps _ run_value84_zero)) 0 R
  simpa [substDec, subst_pairT, substDec_closed _ _ poisonValue84P_closed,
    substDec_closed _ _ (show Closed churchTrue by decide),
    Nat.reduceAdd, if_pos rfl] using h

theorem value84_app (R : Term) :
    Betas (.app poisonValue84P (pairT churchTrue (pairT churchFalse R)))
      (.lam omega) := by
  have h := betas_subst (betas_of_spineReds
    (spineReds_of_spineSteps _ run_value84_app)) 0 R
  simpa [substDec, subst_pairT, substDec_closed _ _ poisonValue84P_closed,
    substDec_closed _ _ (show Closed churchTrue by decide),
    substDec_closed _ _ (show Closed churchFalse by decide),
    substDec_closed _ _ (show Closed omega by decide), if_pos rfl] using h

theorem both88_one (C R : Term) :
    Betas (.app (.app towerBoth88P C) (pairT churchFalse R))
      (.app (.app C identity) (.app R churchFalse)) := by
  have h := betas_inst [C, R] 0 (betas_of_spineReds
    (spineReds_of_spineSteps _ run_both88_one))
  simpa [instN, substDec, subst_pairT,
    substDec_closed _ _ towerBoth88P_closed,
    substDec_closed _ _ (show Closed churchFalse by decide),
    substDec_closed _ _ (show Closed identity by decide), shift_zero,
    substDec_shift] using h

theorem both88_zero (C R : Term) :
    Betas (.app (.app towerBoth88P C) (pairT churchTrue R))
      (.app (.app towerBoth88P (wrapKont C)) (.app R churchFalse)) := by
  have h := betas_inst [C, R] 0 (betas_of_spineReds
    (spineReds_of_spineSteps _ run_both88_zero))
  simpa [instN, substDec, subst_pairT, wrapKont,
    substDec_closed _ _ towerBoth88P_closed,
    substDec_closed _ _ (show Closed churchFalse by decide),
    substDec_closed _ _ (show Closed churchTrue by decide), shift_zero,
    substDec_shift, shift] using h

theorem value57_raw_towers (n : Nat) (R : Term) :
    Betas (.app towerValue57P (streamOf (blcCode (lamPow n (.var 0))) R))
      (lamPow n identity) := by
  induction n with
  | zero => exact value57_one (pairT churchTrue R)
  | succ n ih =>
    apply betas_trans (value57_zero _)
    apply betas_trans (betas_appR churchTrue ih)
    have h := betas_of_spineReds (spine_true1 (lamPow n identity))
    rw [shift_closed 1 0 (lamPow_closed n (show Closed identity by decide))] at h
    exact h

theorem value57_towers (n : Nat) (N : Term) :
    Betas (.app towerValue57 (streamOf (blcCode (sourceTower n)) N))
      (.lam (sourceTower n)) := by
  apply betas_trans (betas_appL _ (fix_unfold _))
  have h := value57_raw_towers (n + 1) N
  have hs : lamPow (n + 1) (.var 0) = sourceTower n := by
    change .lam (lamPow n (.var 0)) = lamPow n (.lam (.var 0))
    exact (lamPow_lam n (.var 0)).symm
  rw [hs] at h
  exact h

theorem value84_raw_towers (n : Nat) (R : Term) :
    Betas (.app poisonValue84P (streamOf (blcCode (lamPow n (.var 0))) R))
      (lamPow n identity) := by
  induction n generalizing R with
  | zero => exact value84_one (pairT churchTrue R)
  | succ n ih =>
    apply betas_trans (value84_zero _)
    apply betas_lam
    change Betas (.app poisonValue84P
      (shift 1 0 (streamOf (blcCode (lamPow n (.var 0))) R))) (lamPow n identity)
    rw [shift_streamOf]
    exact ih (shift 1 0 R)

theorem value84_towers (n : Nat) (N : Term) :
    Betas (.app poisonValue84 (streamOf (blcCode (sourceTower n)) N))
      (.lam (sourceTower n)) := by
  apply betas_trans (betas_appL _ (fix_unfold _))
  have h := value84_raw_towers (n + 1) N
  have hs : lamPow (n + 1) (.var 0) = sourceTower n := by
    change .lam (lamPow n (.var 0)) = lamPow n (.lam (.var 0))
    exact (lamPow_lam n (.var 0)).symm
  rw [hs] at h
  exact h

theorem value84_poison_core (n : Nat) (N : Term) :
    Betas (.app poisonValue84P (streamOf (blcCode (lamPow n omega)) N))
      (.lam (lamPow n omega)) := by
  induction n generalizing N with
  | zero => exact value84_app _
  | succ n ih =>
    apply betas_trans (value84_zero _)
    apply betas_lam
    change Betas (.app poisonValue84P
      (shift 1 0 (streamOf (blcCode (lamPow n omega)) N))) (.lam (lamPow n omega))
    rw [shift_streamOf]
    exact ih (shift 1 0 N)

theorem value84_poison (n : Nat) (N : Term) :
    Betas (.app poisonValue84 (streamOf (blcCode (lamPow n omega)) N))
      (.lam (lamPow n omega)) :=
  betas_trans (betas_appL _ (fix_unfold _)) (value84_poison_core n N)

theorem wrapKont_return (C v N : Term) (hv : Closed v) :
    Betas (.app (.app (wrapKont C) v) N) (.app (.app C (.lam v)) N) := by
  apply betas_trans (betas_appL N (.head (.beta _ _) (.refl _)))
  simp only [contract, substDec, substDec_shift,
    substDec_closed _ _ (show Closed churchTrue by decide)]
  apply betas_appL N (betas_appR C ?_)
  have h := betas_of_spineReds (spine_true1 v)
  rw [shift_closed 1 0 hv] at h
  exact h

theorem both88_raw_towers (n : Nat) (C N : Term) :
    Betas (.app (.app towerBoth88P C)
      (streamOf (blcCode (lamPow n (.var 0))) N))
      (.app (.app C (lamPow n identity)) N) := by
  induction n generalizing C N with
  | zero =>
    apply betas_trans (both88_one _ _)
    exact betas_appR _ (pair_tail churchTrue N)
  | succ n ih =>
    apply betas_trans (both88_zero _ _)
    apply betas_trans (betas_appR _ (pair_tail churchTrue _))
    apply betas_trans (ih (wrapKont C) N)
    exact wrapKont_return _ _ _ (lamPow_closed n (show Closed identity by decide))

theorem both88_towers (n : Nat) (C N : Term) :
    Betas (.app (.app towerBoth88 C) (streamOf (blcCode (sourceTower n)) N))
      (.app (.app C (.lam (sourceTower n))) N) := by
  apply betas_trans (betas_appL _ (betas_appL C (fix_unfold _)))
  have h := both88_raw_towers (n + 1) C N
  have hs : lamPow (n + 1) (.var 0) = sourceTower n := by
    change .lam (lamPow n (.var 0)) = lamPow n (.lam (.var 0))
    exact (lamPow_lam n (.var 0)).symm
  rw [hs] at h
  exact h

/-- Even both outputs, for every tower and every C,N, admit an 88-bit term. -/
theorem tower_full_ceiling (b : Nat)
    (hb : ∀ E, Closed E →
      (∀ n C N, BetaJoin (.app (.app E C)
        (streamOf (blcCode (sourceTower n)) N))
        (.app (.app C (.lam (sourceTower n))) N)) →
      b ≤ (blcCode E).length) : b ≤ 88 := by
  have h := hb towerBoth88 towerBoth88_closed
    (fun n C N => join_of_betas (both88_towers n C N))
  simpa only [towerBoth88_size] using h

theorem tower_value_ceiling (b : Nat)
    (hb : ∀ D, Closed D →
      (∀ n N, BetaJoin (.app D (streamOf (blcCode (sourceTower n)) N))
        (.lam (sourceTower n))) → b ≤ (blcCode D).length) : b ≤ 57 := by
  have h := hb towerValue57 towerValue57_closed
    (fun n N => join_of_betas (value57_towers n N))
  simpa only [towerValue57_size] using h

theorem poison_value_ceiling (b : Nat)
    (hb : ∀ D, Closed D →
      (∀ n N, BetaJoin (.app D (streamOf (blcCode (sourceTower n)) N))
        (.lam (sourceTower n))) →
      (∀ n N, BetaJoin (.app D (streamOf (blcCode (lamPow n omega)) N))
        (.lam (lamPow n omega))) → b ≤ (blcCode D).length) : b ≤ 84 := by
  have h := hb poisonValue84 poisonValue84_closed
    (fun n N => join_of_betas (value84_towers n N))
    (fun n N => join_of_betas (value84_poison n N))
  simpa only [poisonValue84_size] using h

#print axioms value57_towers
#print axioms value84_towers
#print axioms value84_poison
#print axioms both88_towers

/-- Pins to the independently exported ASCII BLC artifacts. -/
theorem towerValue57_wire : blcCode (towerValue57) = [false, true, false, false, false, true, true, false, true, false, false, false, false, false, false, true, false, true, false, true, true, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, true, true, true, false, false, true, false, true, true, true, true, true, false, true, true, true, true, false, true, false] := by decide

theorem towerBoth88_wire : blcCode (towerBoth88) = [false, true, false, false, false, true, true, false, true, false, false, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true, false, true, false, true, true, true, false, false, true, false, true, true, true, true, true, true, false, true, true, true, true, true, false, false, false, false, true, true, true, true, true, true, false, false, true, true, true, true, false, true, false, false, true, true, true, true, true, false, false, false, true, false, false, true, true, false, false, false, false, false, true, false] := by decide

theorem poisonValue84_wire : blcCode (poisonValue84) = [false, true, false, false, false, true, true, false, true, false, false, false, false, false, false, true, false, true, false, true, true, false, false, false, true, false, false, false, false, false, true, false, false, false, false, false, false, true, false, true, true, true, false, false, false, false, true, false, true, true, true, true, true, true, false, true, true, true, true, true, false, true, true, false, false, false, false, true, false, false, false, true, true, false, true, false, false, false, false, true, true, false, true, false] := by decide

end Blc.SelfintTowerBarriers
