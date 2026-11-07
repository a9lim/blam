/- Nonliteral one-lambda selectors and the five-lambda (2,2) serial split.
   This file proves semantic implications. Numeric arm pricing is separate. -/
import OneCallback

namespace Blc.Round3Prove46
open Term Round3Role SelfintControl SelfintProjections SelfintLowerBound

set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

/-- Without a source F, the application-only unary algebra is smaller. -/
inductive Small (n : Nat) : Term → Prop
  | stream : Small n (unary (n+1))
  | const : Small n constant
  | neutral {t : Term} : Neutral t → Small n t

theorem small_value {n : Nat} {t : Term} (h : Small n t) : Value (n+1) 0 t := by
  cases h with
  | stream => exact .stream 0 (by omega)
  | const => exact .const
  | neutral h => exact .neutral h

theorem small_apply {n : Nat} {f a : Term} (hf : Small n f) (ha : Small n a) :
    ∃ v, Betas (.app f a) v ∧ Small n v := by
  cases hf with
  | stream =>
      cases ha with
      | stream =>
          exact ⟨_, betas_of_spineReds (skip_self (n+1) suffix), .const⟩
      | const => exact ⟨_, unary_constant n, .neutral (.app _ .suffix)⟩
      | neutral h => exact ⟨_, unary_callback n _, .neutral (.app _ (.app _ h))⟩
  | const => exact ⟨_, constant_apply _, .neutral .suffix⟩
  | neutral h => exact ⟨_, .refl _, .neutral (.app _ h)⟩

theorem unary_ne_false (n : Nat) : unary n ≠ churchFalse := by
  cases n with
  | zero => simp [unary_zero, pairT, churchFalse]
  | succ n => rw [unary_succ]; simp [pairT, churchFalse]

theorem neutral_ne_false {t : Term} (h : Neutral t) : t ≠ churchFalse := by
  intro he
  subst t
  exact neutral_not_lam h trivial

theorem small_ne_false {n : Nat} {t : Term} (h : Small n t) : t ≠ churchFalse := by
  cases h with
  | stream => exact unary_ne_false _
  | const => decide
  | neutral h => exact neutral_ne_false h

/-- A right operand other than F cannot produce F through data application. -/
theorem value_apply_nonbit {n a b : Nat} {f x : Term}
    (hf : Value n a f) (hx : Value n b x) (hnx : x ≠ churchFalse)
    (hn : a+b+3 ≤ n) :
    ∃ v, Betas (.app f x) v ∧ Value n (a+b+1) v ∧ v ≠ churchFalse := by
  cases hf with
  | stream k hk =>
      have hp : 0 < n-k := by omega
      obtain ⟨m, hm⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hp)
      cases hx with
      | stream q hq =>
          obtain ⟨v, hr, hc⟩ := unary_cross (n-k) (n-q)
          rcases hc with rfl | rfl | ⟨r, rfl⟩
          · exact ⟨_, hr, .const, by decide⟩
          · exact ⟨_, hr, .id, by decide⟩
          · exact ⟨_, hr, .neutral (.app _ .suffix), by simp [churchFalse]⟩
      | bit => exact (hnx rfl).elim
      | id =>
          refine ⟨_, ?_, .id, by decide⟩
          rw [hm]; exact unary_ident m
      | const =>
          refine ⟨.app suffix (unary m), ?_, .neutral (.app _ .suffix), by simp [churchFalse]⟩
          rw [hm]; exact unary_constant m
      | neutral h =>
          refine ⟨.app (.app x churchFalse) (unary m), ?_,
            .neutral (.app _ (.app _ h)), by simp [churchFalse]⟩
          rw [hm]; exact unary_callback m _
  | bit => exact ⟨_, false_apply _, .id, by decide⟩
  | id => exact ⟨_, ident_apply _, value_mono hx (by omega), hnx⟩
  | const => exact ⟨_, constant_apply _, .neutral .suffix, by decide⟩
  | neutral h => exact ⟨_, .refl _, .neutral (.app _ h), by simp [churchFalse]⟩

def Flat.noBit : Flat → Prop
  | .atom k => k ≠ 1
  | .bound => True
  | .app f a => f.noBit ∧ a.noBit

def Marked.noBit : Marked → Prop
  | .atom k => k ≠ 1
  | .callback => True
  | .app f a => f.noBit ∧ a.noBit

theorem atom_small (n k : Nat) (hk : k ≠ 1) : Small n (atoms (n+1) k) := by
  cases k with
  | zero => exact .stream
  | succ k => cases k with
    | zero => exact (hk rfl).elim
    | succ k => exact .neutral (.param k)

theorem flat_small (B : Flat) (hB : B.noBit) {n : Nat} {a : Term}
    (ha : Small n a) :
    ∃ v, Betas (B.eval (atoms (n+1)) a) v ∧ Small n v := by
  induction B with
  | atom k => exact ⟨_, .refl _, atom_small n k hB⟩
  | bound => exact ⟨_, .refl _, ha⟩
  | app f x ihf ihx =>
      obtain ⟨fv, hfr, hfv⟩ := ihf hB.1
      obtain ⟨av, har, hav⟩ := ihx hB.2
      obtain ⟨v, hr, hv⟩ := small_apply hfv hav
      exact ⟨v, betas_trans (betas_app hfr har) hr, hv⟩

theorem marked_small (e : Marked) (B : Flat) (n : Nat)
    (hz : e.uses = 0) (he : e.noBit) :
    ∃ v, Betas (e.eval B (n+1)) v ∧ Small n v := by
  induction e with
  | atom k => exact ⟨_, .refl _, atom_small n k he⟩
  | callback => simp [Marked.uses] at hz
  | app f a ihf iha =>
      have hz' : f.uses + a.uses = 0 := hz
      obtain ⟨fv, hfr, hfv⟩ := ihf (by omega) he.1
      obtain ⟨av, har, hav⟩ := iha (by omega) he.2
      obtain ⟨v, hr, hv⟩ := small_apply hfv hav
      exact ⟨v, betas_trans (betas_app hfr har) hr, hv⟩

theorem small_callback (B : Flat) {n : Nat} {f : Term}
    (hf : Small n f) (hn : B.charge 0 + 4 ≤ n+1) :
    ∃ v, Betas (.app f (B.close (n+1))) v ∧
      Value (n+1) (B.charge 0 + 2) v ∧ v ≠ churchFalse := by
  cases hf with
  | stream =>
      obtain ⟨v, hr, hv⟩ := close_value B (n := n+1) (b := 0) .bit (by omega)
      have ht : Value (n+1) 1 (unary n) := by
        have h : n+1-1 = n := by omega
        rw [← h]; exact .stream 1 (by omega)
      obtain ⟨w, hwr, hw, hnf⟩ := value_apply_nonbit hv ht (unary_ne_false n) hn
      exact ⟨w, betas_trans (unary_callback n _)
        (betas_trans (betas_appL _ hr) hwr), hw, hnf⟩
  | const => exact ⟨_, constant_apply _, .neutral .suffix, by decide⟩
  | neutral h => exact ⟨_, .refl _, .neutral (.app _ h), by simp [churchFalse]⟩

/-- With no literal F among source atoms, a nonliteral one-callback operand
    must activate its callback. Its resulting value cannot be F. -/
theorem marked_no_bit_value (e : Marked) (B : Flat) (n : Nat)
    (hu : e.uses ≤ 1) (he : e.noBit) (hB : B.noBit)
    (hn : e.charge B + 2 ≤ n+1) :
    ∃ v, Betas (e.eval B (n+1)) v ∧
      ((Value (n+1) (e.charge B) v ∧ v ≠ churchFalse) ∨
        (e = .callback ∧ v = B.close (n+1))) := by
  induction e with
  | atom k =>
      have h := atom_small n k he
      exact ⟨_, .refl _, Or.inl ⟨small_value h, small_ne_false h⟩⟩
  | callback => exact ⟨_, .refl _, Or.inr ⟨rfl, rfl⟩⟩
  | app f a ihf iha =>
      obtain ⟨h0, h1, h2⟩ := marked_charge_app f a B
      have hu' : f.uses+a.uses ≤ 1 := hu
      obtain ⟨fv, hfr, hfv⟩ := ihf (by omega) he.1 (by omega)
      obtain ⟨av, har, hav⟩ := iha (by omega) he.2 (by omega)
      rcases hfv with ⟨hfv, hfn⟩ | ⟨rfl, rfl⟩
      · rcases hav with ⟨hav, han⟩ | ⟨rfl, rfl⟩
        · obtain ⟨v, hr, hv, hvn⟩ := value_apply_nonbit hfv hav han (by omega)
          exact ⟨v, betas_trans (betas_app hfr har) hr,
            Or.inl ⟨value_mono hv h0, hvn⟩⟩
        · have hf0 : f.uses = 0 := by simp only [Marked.uses] at hu'; omega
          obtain ⟨w, hwr, hw⟩ := marked_small f B n hf0 he.1
          obtain ⟨v, hr, hv, hvn⟩ := small_callback B hw (by omega)
          exact ⟨v, betas_trans (betas_appL _ hwr) hr,
            Or.inl ⟨value_mono hv (by omega), hvn⟩⟩
      · have ha0 : a.uses = 0 := by simp only [Marked.uses] at hu'; omega
        obtain ⟨w, hwr, hw⟩ := marked_small a B n ha0 he.2
        obtain ⟨v, hr, hv⟩ := flat_small B hB hw
        exact ⟨v, betas_trans (betas_appR _ hwr)
          (betas_trans (close_apply B (n+1) _) hr),
          Or.inl ⟨value_mono (small_value hv) (by omega), small_ne_false hv⟩⟩

theorem nonliteral_selector_data (e : Marked) (B : Flat) (n : Nat)
    (hu : e.uses ≤ 1) (he : e.noBit) (hB : B.noBit) (hl : e ≠ .callback)
    (hn : e.charge B + 2 ≤ n+1) :
    ∃ v, Betas (e.eval B (n+1)) v ∧
      Value (n+1) (e.charge B) v ∧ v ≠ churchFalse := by
  obtain ⟨v, hr, hv⟩ := marked_no_bit_value e B n hu he hB hn
  rcases hv with hv | ⟨hf, _⟩
  · exact ⟨v, hr, hv⟩
  · exact (hl hf).elim

/-- Once a non-F data value is in the selector position, only the I branch
    can satisfy the serial variable law, and it calls E on j directly. -/
theorem data_selector_forces_arm {n b : Nat} {v E : Term}
    (hv : Value n b v) (hvF : v ≠ churchFalse) (hn : b+3 ≤ n)
    (h : BetaJoin (.app (.app (.app (unary n) v) E) (.var 2)) (output n)) :
    BetaJoin (.app E (.var 2)) (output n) := by
  have hn0 : 0 < n := by omega
  obtain ⟨m, hm⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hn0)
  have via {t : Term} (hr : Betas (.app (.app (.app (unary n) v) E) (.var 2)) t) :
      BetaJoin t (output n) := join_trans (join_symm (join_of_betas hr)) h
  cases hv with
  | stream k hk =>
      obtain ⟨w, hr, hw⟩ := unary_cross n (n-k)
      rcases hw with rfl | rfl | ⟨q, rfl⟩
      · have hred := betas_trans (betas_appL (.var 2) (betas_appL E hr))
          (betas_appL (.var 2) (constant_apply E))
        have hp : Value n 0 suffix := .neutral .suffix
        exact (value_trailing_hole hp (by omega) (via hred)).elim
      · exact via (betas_trans (betas_appL _ (betas_appL _ hr))
          (betas_appL _ (ident_apply E)))
      · have hred := betas_appL (.var 2) (betas_appL E hr)
        have hp : Value n 0 (.app (.app suffix (unary q)) E) :=
          .neutral (.app _ (.app _ .suffix))
        exact (value_trailing_hole hp (by omega) (via hred)).elim
  | bit => exact (hvF rfl).elim
  | id =>
      have hr : Betas (.app (unary n) ident) ident := by rw [hm]; exact unary_ident m
      exact via (betas_trans (betas_appL _ (betas_appL _ hr))
        (betas_appL _ (ident_apply E)))
  | const =>
      have hr : Betas (.app (unary n) constant) (.app suffix (unary m)) := by
        rw [hm]; exact unary_constant m
      have hp : Value n 0 (.app (.app suffix (unary m)) E) :=
        .neutral (.app _ (.app _ .suffix))
      exact (value_trailing_hole hp (by omega)
        (via (betas_appL _ (betas_appL _ hr)))).elim
  | neutral hv =>
      have hr : Betas (.app (unary n) v) (.app (.app v churchFalse) (unary m)) := by
        rw [hm]; exact unary_callback m _
      have hp : Value n 0 (.app (.app (.app v churchFalse) (unary m)) E) :=
        .neutral (.app _ (.app _ (.app _ hv)))
      exact (value_trailing_hole hp (by omega)
        (via (betas_appL _ (betas_appL _ hr)))).elim

theorem nonliteral_selector_forces_arm (e : Marked) (B : Flat) (n : Nat) (E : Term)
    (hu : e.uses ≤ 1) (he : e.noBit) (hB : B.noBit) (hl : e ≠ .callback)
    (hn : e.charge B + 3 ≤ n+1)
    (h : BetaJoin (.app (.app (.app (unary (n+1)) (e.eval B (n+1))) E) (.var 2))
      (output (n+1))) :
    BetaJoin (.app E (.var 2)) (output (n+1)) := by
  obtain ⟨v, hr, hv, hvF⟩ := nonliteral_selector_data e B n hu he hB hl (by omega)
  apply data_selector_forces_arm hv hvF hn
  exact join_trans (join_symm (join_of_betas (betas_appL _ (betas_appL _
    (betas_appR _ hr))))) h

/-- This is the semantic composition used for the (2,2) callback allocation.
    `E F` still contains at most one flat source callback. -/
theorem data_prefix_result (e : Marked) (B : Flat) {n b : Nat} {G E : Term}
    (hv : Value n b G) (he : Betas (.app E churchFalse) (e.eval B n))
    (hu : e.uses ≤ 1) (hn : finishCharge e B (b+1) + 2 ≤ n)
    (hb : b+2 ≤ n)
    (h : BetaJoin (.app (.app G E) (.var 2)) (output n)) :
    G = ident ∧ BetaJoin (.app E (.var 2)) (output n) := by
  have via {t : Term} (hr : Betas (.app (.app G E) (.var 2)) t) :
      BetaJoin t (output n) := join_trans (join_symm (join_of_betas hr)) h
  cases hv with
  | stream k hk =>
      have hp : 0 < n-k := by omega
      obtain ⟨m, hm⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hp)
      have htail : n-(k+1) = m := by omega
      have ha : Value n (b+1) (unary m) := by
        rw [← htail]; exact .stream (k+1) (by omega)
      have hr : Betas (.app (unary (n-k)) E) (.app (.app E churchFalse) (unary m)) := by
        rw [hm]; exact unary_callback m _
      have hj := via (betas_trans (betas_appL _ hr)
        (betas_appL _ (betas_appL _ he)))
      exact (one_callback_trailing_hole e B hu ha hn hj).elim
  | bit =>
      have hr : Betas (.app (.app churchFalse E) (.var 2)) (.var 2) :=
        betas_trans (betas_appL _ (false_apply _)) (ident_apply _)
      have heq := rigid_join_head (.var 2) (.app _ (.app _ (.var 1))) (via hr)
      simp [headKey] at heq
  | id => exact ⟨rfl, via (betas_appL _ (ident_apply E))⟩
  | const =>
      have hp : Value n 0 suffix := .neutral .suffix
      exact (value_trailing_hole hp (by omega)
        (via (betas_appL _ (constant_apply E)))).elim
  | neutral hG =>
      have hp : Value n 0 (.app G E) := .neutral (.app _ hG)
      exact (value_trailing_hole hp (by omega) h).elim

theorem data_prefix_forces_arm (e : Marked) (B : Flat) {n b : Nat} {G E : Term}
    (hv : Value n b G) (he : Betas (.app E churchFalse) (e.eval B n))
    (hu : e.uses ≤ 1) (hn : finishCharge e B (b+1) + 2 ≤ n)
    (hb : b+2 ≤ n)
    (h : BetaJoin (.app (.app G E) (.var 2)) (output n)) :
    BetaJoin (.app E (.var 2)) (output n) :=
  (data_prefix_result e B hv he hu hn hb h).2

/-- Literal selectors and arms with at most two lambdas each are represented
    by their outer-F contractions. Source redexes inside either are allowed.
    The representation-to-source translation is a separate syntactic induction. -/
theorem serial_two_callback_forces_arm
    (d e : Marked) (BD BE : Flat) {n : Nat} {D E : Term}
    (hd : Betas (.app D churchFalse) (d.eval BD n))
    (he : Betas (.app E churchFalse) (e.eval BE n))
    (hdu : d.uses ≤ 1) (heu : e.uses ≤ 1)
    (hnD : finishCharge d BD 1 + 2 ≤ n)
    (hnE : finishCharge e BE (finishCharge d BD 1 + 1) + 2 ≤ n)
    (h : BetaJoin (.app (.app (.app (unary n) D) E) (.var 2)) (output n)) :
    BetaJoin (.app E (.var 2)) (output n) := by
  have hn0 : 0 < n := by omega
  obtain ⟨m, hm⟩ := Nat.exists_eq_succ_of_ne_zero (Nat.ne_of_gt hn0)
  have ht : Value n 1 (unary m) := by
    have hm' : n-1 = m := by omega
    rw [← hm']; exact .stream 1 (by omega)
  obtain ⟨G, hGr, hG⟩ := marked_finish d BD hdu ht hnD
  have hr : Betas (.app (unary n) D) (.app (.app D churchFalse) (unary m)) := by
    rw [hm]; exact unary_callback m _
  have hpre := betas_trans hr (betas_trans (betas_appL _ hd) hGr)
  apply data_prefix_forces_arm e BE hG he heu hnE hnD
  exact join_trans (join_symm (join_of_betas (betas_appL _ (betas_appL _ hpre)))) h

/-- Only the final arithmetic. The 28 arm-price input remains the separate
    source-role theorem from role-pricing.md, not a hypothesis proved here. -/
theorem serial_two_two_price (selector arm w : Nat)
    (hs : 10 ≤ selector) (ha : 28 ≤ arm) (hw : w = 14+selector+arm) :
    52 ≤ w := by omega

end Blc.Round3Prove46
