/-
Eventual stability of the source-lambda, permanent-block, and nonflat-lambda
counters along an infinite nongrowing deterministic head execution.
-/
import Blc.SelfintGrowthHead

namespace Blc.SelfintGrowthCounters
open Term SelfintZero SelfintGrowthBlue SelfintGrowthBlocks SelfintGrowthOrigins SelfintGrowthHead

private theorem decreasing_tail (g : Nat → Nat) (h : ∀ n, g (n + 1) ≤ g n)
    (i j : Nat) (hij : i ≤ j) : g j ≤ g i := by
  have hh : ∀ k, g (i + k) ≤ g i := by
    intro k
    induction k with
    | zero => exact Nat.le_refl _
    | succ k ih =>
      have hk := Nat.le_trans (h (i + k)) ih
      simpa only [Nat.add_assoc] using hk
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hij
  exact hh k

/-- A nonincreasing natural sequence eventually reaches its least attained value. -/
theorem decreasing_stable (g : Nat → Nat) (h : ∀ n, g (n + 1) ≤ g n) :
    ∃ N, ∀ n, N ≤ n → g n = g N := by
  classical
  have aux : ∀ k, ∀ g : Nat → Nat, g 0 = k → (∀ n, g (n + 1) ≤ g n) →
      ∃ N, ∀ n, N ≤ n → g n = g N := by
    intro k
    induction k using Nat.strongRecOn with
    | ind k ih =>
      intro g hg hh
      by_cases hd : ∃ j, g j < g 0
      · obtain ⟨j, hj⟩ := hd
        obtain ⟨N, hN⟩ := ih (g j) (by omega) (fun n => g (j + n))
          (by simp only [Nat.add_zero]) (by
            intro n
            simpa only [Nat.add_assoc] using hh (j + n))
        refine ⟨j + N, fun n hn => ?_⟩
        obtain ⟨i, rfl⟩ := Nat.exists_eq_add_of_le (show j ≤ n by omega)
        exact hN i (by omega)
      · refine ⟨0, fun n _ => ?_⟩
        have hlo : g 0 ≤ g n := by
          by_cases he : g n < g 0
          · exact (hd ⟨n, he⟩).elim
          · omega
        have hhi := decreasing_tail g hh 0 n (Nat.zero_le _)
        omega
  exact aux (g 0) g rfl h

/-- The same stabilization result after a finite prefix. -/
theorem decreasing_stable_from (g : Nat → Nat) (N : Nat)
    (h : ∀ n, N ≤ n → g (n + 1) ≤ g n) :
    ∃ M, N ≤ M ∧ ∀ n, M ≤ n → g n = g M := by
  obtain ⟨k, hk⟩ := decreasing_stable (fun i => g (N + i)) (by
    intro i
    simpa only [Nat.add_assoc] using h (N + i) (by omega))
  refine ⟨N + k, by omega, fun n hn => ?_⟩
  obtain ⟨i, rfl⟩ := Nat.exists_eq_add_of_le (show N ≤ n by omega)
  exact hk i (by omega)

/-- A bounded nondecreasing counter also stabilizes after a finite prefix. -/
theorem increasing_stable_from (g : Nat → Nat) (N B : Nat)
    (h : ∀ n, N ≤ n → g n ≤ g (n + 1))
    (hb : ∀ n, N ≤ n → g n ≤ B) :
    ∃ M, N ≤ M ∧ ∀ n, M ≤ n → g n = g M := by
  obtain ⟨M, hNM, hM⟩ := decreasing_stable_from (fun n => B - g n) N (by
    intro n hn
    have hh := h n hn
    omega)
  refine ⟨M, hNM, fun n hn => ?_⟩
  have he := hM n hn
  have hbn := hb n (by omega)
  have hbM := hb M hNM
  omega

theorem norm_red_le {t u : Q} (h : Head t u) (hr : red u ≤ red t) :
    red (norm u) ≤ red (norm t) := by
  rcases head_norm_noGrowth h hr with he | ⟨v, hv, he, hvr⟩
  · rw [he]; exact Nat.le_refl _
  · have hn := norm_red v
    rw [he] at hn
    omega

/-- Once the canonical source-lambda count is unchanged, blocks cannot
disappear and nonflat lambdas cannot be added across an actual head step. -/
theorem norm_counters_le {t u : Q} (h : Head t u) (hc : ClosedQ t)
    (hr : red u ≤ red t) (he : red (norm u) = red (norm t)) :
    blocks (norm t) ≤ blocks (norm u) ∧ bad (norm u) ≤ bad (norm t) := by
  cases h with
  | data h =>
    have hn : norm t = norm u := congrArg val h.data.deep_eq
    rw [hn]
    exact ⟨Nat.le_refl _, Nat.le_refl _⟩
  | red h =>
    obtain ⟨v, hv, hn, hvr⟩ := h.norm_noGrowth hr
    have hnr := norm_red v
    have hvred : red v = red (norm t) := by rw [hn] at hnr; omega
    have hedata : red (norm v) = red v := by rw [hn]; omega
    have hb₁ := head_blocks_le hv hvred
    have hb₂ := data_steps_blocks_le (norm_sound v) hedata
    have ha₁ := head_bad_le hv (norm_freeUnder t 0 hc) hvred
    have ha₂ := data_steps_bad_le (norm_sound v)
    rw [hn] at hb₂ ha₂
    exact ⟨Nat.le_trans hb₁ hb₂, Nat.le_trans ha₂ ha₁⟩

theorem execution_closed (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1)))
    (hc : ClosedQ (f 0)) (n : Nat) : ClosedQ (f n) := by
  induction n with
  | zero => exact hc
  | succ n ih => exact (h n).closed ih

/-- All three canonical counters stabilize after one finite position.
The proof chooses attained minima; it does not impose a computable cutoff. -/
theorem counters_stable (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1)))
    (hc : ClosedQ (f 0)) (hr : ∀ n, red (f (n + 1)) ≤ red (f n)) :
    ∃ N, ∀ n, N ≤ n →
      red (norm (f n)) = red (norm (f N)) ∧
      blocks (norm (f n)) = blocks (norm (f N)) ∧
      bad (norm (f n)) = bad (norm (f N)) := by
  obtain ⟨R, hR⟩ := decreasing_stable (fun n => red (norm (f n)))
    (fun n => norm_red_le (h n) (hr n))
  have hm : ∀ n, R ≤ n →
      blocks (norm (f n)) ≤ blocks (norm (f (n + 1))) ∧
      bad (norm (f (n + 1))) ≤ bad (norm (f n)) := by
    intro n hn
    apply norm_counters_le (h n) (execution_closed f h hc n) (hr n)
    exact (hR (n + 1) (by omega)).trans (hR n hn).symm
  obtain ⟨B, hRB, hB⟩ := increasing_stable_from (fun n => blocks (norm (f n))) R
    (red (norm (f R))) (fun n hn => (hm n hn).1) (by
      intro n hn
      have hh := blocks_le_red (norm (f n))
      rw [hR n hn] at hh
      exact hh)
  obtain ⟨N, hBN, hN⟩ := decreasing_stable_from (fun n => bad (norm (f n))) B
    (fun n hn => (hm n (by omega)).2)
  refine ⟨N, fun n hn => ?_⟩
  exact ⟨(hR n (by omega)).trans (hR N (by omega)).symm,
    (hB n (by omega)).trans (hB N hBN).symm, hN n hn⟩

/-- A canonical constant-count head event whose contractor is flat and
whose copied one-lambda operand has no permanent block. -/
inductive CleanHead : Q → Q → Prop where
  | beta (b a : Q) : Flat (.lam b) → oc 0 b = 2 → red a = 1 → blocks a = 0 →
      CleanHead (.app (.lam b) a) (substQ 0 a b)
  | left {f g : Q} (a : Q) : CleanHead f g → CleanHead (.app f a) (.app g a)

theorem CleanHead.head {t u : Q} (h : CleanHead t u) : RedHead t u := by
  induction h with
  | beta b a => exact .beta _ _
  | left a h ih => exact .left _ ih

theorem CleanHead.red_eq {t u : Q} (h : CleanHead t u) : red u = red t := by
  induction h with
  | beta b a hf hk ha hb => simp only [red_subst, red, hk, ha]
  | left a h ih => exact congrArg (· + red a) ih

theorem CleanHead.not_bad {t u v : Q} (h : CleanHead t u) : ¬ BadHead t v := by
  induction h generalizing v with
  | beta b a hf hk ha hb =>
    intro hn
    cases hn with
    | beta b a hnf => exact hnf hf
    | left a h => cases h
  | left a h ih =>
    intro hn
    cases hn with
    | beta b a => cases h
    | left a hn => exact ih hn

theorem CleanHead.not_block {t u v : Q} (h : CleanHead t u) : ¬ CopiesBlock t v := by
  induction h generalizing v with
  | beta b a hf hk ha hb =>
    intro hn
    cases hn with
    | beta b a hp => omega
    | left a h => cases h
  | left a h ih =>
    intro hn
    cases hn with
    | beta b a => cases h
    | left a hn => exact ih hn

theorem clean_of_no_bad_block {t u : Q} (h : RedHead t u)
    (hr : red u = red t) (hn : ¬ BadHead t u) (hb : ¬ CopiesBlock t u) :
    CleanHead t u := by
  induction h with
  | beta b a =>
    have hf : Flat (.lam b) := by
      by_cases hf : Flat (.lam b)
      · exact hf
      · exact (hn (.beta b a hf)).elim
    obtain ⟨hk, ha⟩ := constant_beta_parameters b a hr
    have hz : blocks a = 0 := by
      by_cases he : blocks a = 0
      · exact he
      · exact (hb (.beta b a (by omega))).elim
    exact .beta b a hf hk ha hz
  | @left f g a h ih =>
    have he : red g = red f := by simp only [red] at hr; omega
    exact .left a (ih he (fun h => hn (.left a h)) (fun h => hb (.left a h)))

/-- Equal stable counters force a clean head event before the following
finite data normalization. The strict bad/block lemmas handle the whole
function spine, so no head-layout premise is hidden here. -/
theorem stable_event_clean {t u : Q} (h : RedHead t u) (hc : ClosedQ t)
    (hr : red u ≤ red t) (hre : red (norm u) = red t)
    (hb : blocks (norm u) = blocks t) (ha : bad (norm u) = bad t) :
    CleanHead t u := by
  have hnr := norm_red u
  have he : red u = red t := by omega
  have hnd : red (norm u) = red u := by omega
  apply clean_of_no_bad_block h he
  · intro hn
    have hs := hn.strict hc he
    have hd := data_steps_bad_le (norm_sound u)
    omega
  · intro hn
    have hs := hn.strict he
    have hd := data_steps_blocks_le (norm_sound u) hnd
    omega

/-- After one finite position every actual program head induces a clean
canonical head event, with a flat contractor and an unblocked one-code operand. -/
theorem eventually_clean (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1)))
    (hc : ClosedQ (f 0)) (hr : ∀ n, red (f (n + 1)) ≤ red (f n)) :
    ∃ N, ∀ n, N ≤ n → RedHead (f n) (f (n + 1)) →
      ∃ v, RedHead (norm (f n)) v ∧ norm v = norm (f (n + 1)) ∧
        CleanHead (norm (f n)) v := by
  obtain ⟨N, hN⟩ := counters_stable f h hc hr
  refine ⟨N, fun n hn hh => ?_⟩
  obtain ⟨v, hv, he, hvr⟩ := hh.norm_noGrowth (hr n)
  have hcq := norm_freeUnder (f n) 0 (execution_closed f h hc n)
  have ha := hN n hn
  have hb := hN (n + 1) (by omega)
  refine ⟨v, hv, he, stable_event_clean hv hcq hvr ?_ ?_ ?_⟩
  · rw [he]; exact hb.1.trans ha.1.symm
  · rw [he]; exact hb.2.1.trans ha.2.1.symm
  · rw [he]; exact hb.2.2.trans ha.2.2.symm

end Blc.SelfintGrowthCounters
