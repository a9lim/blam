/-
Selection of canonical program-head events from an actual infinite head
execution. The omitted actual steps are data heads, so their normal forms
stutter and successive selected events fit together exactly.
-/
import Blc.SelfintGrowthCounters

namespace Blc.SelfintGrowthSequence
open Term SelfintZero SelfintGrowthBlue SelfintGrowthBlocks SelfintGrowthOrigins
open SelfintGrowthHead SelfintGrowthCounters

/-- The next program event can be reached through only finitely many
data heads; its starting data normal form is the current one. -/
theorem next_red (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1))) (n : Nat) :
    ∃ k, n ≤ k ∧ RedHead (f k) (f (k + 1)) ∧ norm (f k) = norm (f n) := by
  have aux : ∀ c, ∀ n, cost (f n) = c →
      ∃ k, n ≤ k ∧ RedHead (f k) (f (k + 1)) ∧ norm (f k) = norm (f n) := by
    intro c
    induction c using Nat.strongRecOn with
    | ind c ih =>
      intro n hn
      cases h n with
      | red hr => exact ⟨n, Nat.le_refl _, hr, rfl⟩
      | data hd =>
        have hc : cost (f (n + 1)) < c := hn ▸ data_cost_lt hd.data
        obtain ⟨k, hk, hr, he⟩ := ih (cost (f (n + 1))) hc (n + 1) rfl
        exact ⟨k, by omega, hr, he.trans (hd.data.deep_eq |> congrArg val).symm⟩
  exact aux (cost (f n)) n rfl

noncomputable def nextIndex (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1)))
    (n : Nat) : Nat := Classical.choose (next_red f h n)

theorem nextIndex_spec (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1))) (n : Nat) :
    n ≤ nextIndex f h n ∧
      RedHead (f (nextIndex f h n)) (f (nextIndex f h n + 1)) ∧
      norm (f (nextIndex f h n)) = norm (f n) := Classical.choose_spec (next_red f h n)

noncomputable def indices (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1)))
    (N : Nat) : Nat → Nat
  | 0 => nextIndex f h N
  | n + 1 => nextIndex f h (indices f h N n + 1)

theorem indices_ge (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1))) (N i : Nat) :
    N ≤ indices f h N i := by
  induction i with
  | zero => exact (nextIndex_spec f h N).1
  | succ i ih =>
    have hh := (nextIndex_spec f h (indices f h N i + 1)).1
    change N ≤ nextIndex f h (indices f h N i + 1)
    omega

theorem indices_strict (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1))) (N i : Nat) :
    indices f h N i < indices f h N (i + 1) :=
  (nextIndex_spec f h (indices f h N i + 1)).1

theorem indices_head (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1))) (N i : Nat) :
    RedHead (f (indices f h N i)) (f (indices f h N i + 1)) := by
  cases i with
  | zero => exact (nextIndex_spec f h N).2.1
  | succ i => exact (nextIndex_spec f h (indices f h N i + 1)).2.1

theorem indices_norm_next (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1))) (N i : Nat) :
    norm (f (indices f h N (i + 1))) = norm (f (indices f h N i + 1)) :=
  (nextIndex_spec f h (indices f h N i + 1)).2.2

/-- Every selected index retains a finite actual execution prefix. -/
theorem execution_trace (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1))) (i : Nat) :
    ∃ n, Trace n (f 0) (f i) := by
  induction i with
  | zero => exact ⟨0, .refl _⟩
  | succ i ih =>
    obtain ⟨n, hn⟩ := ih
    obtain ⟨m, hm⟩ := (h i).trace
    exact ⟨n + m, hn.trans hm⟩

/-- All selected canonical states are closed and nonterminal, each edge
is one clean program head followed by data normalization, and all three
counters are constant. The indices also retain actual finite prefixes. -/
theorem stable_sequence (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1)))
    (hc : ClosedQ (f 0)) (hr : ∀ n, red (f (n + 1)) ≤ red (f n)) :
    ∃ index : Nat → Nat,
      (∀ i, index i < index (i + 1)) ∧
      (∀ i, ∃ n, Trace n (f 0) (f (index i))) ∧
      (∀ i, ClosedQ (norm (f (index i)))) ∧
      (∀ i, norm (norm (f (index i))) = norm (f (index i))) ∧
      (∀ i, ¬ Done (norm (f (index i)))) ∧
      (∀ i, ∃ u, RedHead (norm (f (index i))) u ∧
        norm (f (index (i + 1))) = norm u ∧ CleanHead (norm (f (index i))) u) ∧
      (∀ i, red (norm (f (index (i + 1)))) = red (norm (f (index i))) ∧
        blocks (norm (f (index (i + 1)))) = blocks (norm (f (index i))) ∧
        bad (norm (f (index (i + 1)))) = bad (norm (f (index i)))) := by
  obtain ⟨N, hN⟩ := counters_stable f h hc hr
  let index := indices f h N
  have hidx : ∀ i, N ≤ index i := indices_ge f h N
  have hclosed : ∀ i, ClosedQ (norm (f (index i))) := fun i =>
    norm_freeUnder _ 0 (SelfintGrowthCounters.execution_closed f h hc _)
  have hcounts : ∀ i,
      red (norm (f (index (i + 1)))) = red (norm (f (index i))) ∧
      blocks (norm (f (index (i + 1)))) = blocks (norm (f (index i))) ∧
      bad (norm (f (index (i + 1)))) = bad (norm (f (index i))) := by
    intro i
    have ha := hN (index i) (hidx i)
    have hb := hN (index (i + 1)) (hidx (i + 1))
    exact ⟨hb.1.trans ha.1.symm, hb.2.1.trans ha.2.1.symm, hb.2.2.trans ha.2.2.symm⟩
  have hnext : ∀ i, ∃ u, RedHead (norm (f (index i))) u ∧
      norm (f (index (i + 1))) = norm u ∧ CleanHead (norm (f (index i))) u := by
    intro i
    obtain ⟨u, hu, he, hue⟩ := (indices_head f h N i).norm_noGrowth (hr (index i))
    have hn : norm (f (index (i + 1))) = norm u :=
      (indices_norm_next f h N i).trans he.symm
    have hh := hcounts i
    refine ⟨u, hu, hn, stable_event_clean hu (hclosed i) hue ?_ ?_ ?_⟩
    · rw [← hn]; exact hh.1
    · rw [← hn]; exact hh.2.1
    · rw [← hn]; exact hh.2.2
  have hnot : ∀ i, ¬ Done (norm (f (index i))) := by
    intro i hd
    obtain ⟨u, hu, _, _⟩ := hnext i
    have hs := red_next hu
    rw [done_next hd] at hs
    cases hs
  exact ⟨index, indices_strict f h N, fun i => execution_trace f h (index i),
    hclosed, fun _ => norm_idempotent _, hnot, hnext, hcounts⟩

end Blc.SelfintGrowthSequence
