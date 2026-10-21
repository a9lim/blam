/-
Synthesis of the infinite-zero remainder-growth obstruction.
The finite components are in the SelfintGrowth* modules.
-/
import Blc.SelfintGrowthSpine
import Blc.SelfintGrowthCounters
import Blc.SelfintGrowthSequence

namespace Blc.SelfintGrowth
open Term SelfintZero SelfintGrowthBlue SelfintGrowthBlocks SelfintGrowthOrigins
open SelfintGrowthLabels SelfintGrowthSimulation SelfintGrowthStable
open SelfintGrowthHead SelfintGrowthCounters SelfintGrowthSpine

theorem bounded_demand_self (t : Q) : Bounded (demand t) t := by
  induction t with
  | var | k => trivial
  | z i => exact Nat.le_succ i
  | lam b ih => exact ih
  | app f a ihf iha =>
    exact ⟨bounded_mono f (Nat.le_max_left _ _) ihf,
      bounded_mono a (Nat.le_max_right _ _) iha⟩

theorem red_not_done {t u : Q} (h : RedHead t u) : ¬ Done t := by
  intro hd
  have he := red_next h
  rw [done_next hd] at he
  cases he

/-- After one clean canonical transition, the continuing execution has
one fixed template and one uniform label bound. No source-size assumption
or bound on the number of constant-function wrappers is used. -/
theorem clean_sequence_bounded (state : Nat → Q)
    (hn : ∀ i, norm (state i) = state i)
    (hc : ∀ i, ClosedQ (state i))
    (hs : ∀ i, ∃ u, CleanHead (state i) u ∧ state (i + 1) = norm u)
    (hr : ∀ i, red (state (i + 1)) = red (state i))
    (hz : ∀ i, blocks (state (i + 1)) = blocks (state i)) :
    ∃ L, ∀ i, Run L i (state 1) (state (i + 1)) := by
  obtain ⟨u, hu, hnext⟩ := hs 0
  obtain ⟨b, d, n, pending, ht, hut, hb, hk, hbn, hbc, hd, hdc, hdn, hp⟩ :=
    stable_operand hu.head (hn 0) (hc 0) hu.red_eq hu.not_bad hu.not_block
  let l := max (demand b) (demand (.lam d))
  have hbl : Bounded l b := bounded_mono b (Nat.le_max_left _ _) (bounded_demand_self b)
  have hdl : Bounded l (.lam d) :=
    bounded_mono (.lam d) (Nat.le_max_right _ _) (bounded_demand_self (.lam d))
  have hre : red (norm (SelfintGrowthStable.apps (substQ 0 (wraps n (.lam d)) b) pending)) =
      red (SelfintGrowthStable.apps (.app (.lam b) (wraps n (.lam d))) pending) := by
    rw [← hut, ← ht, ← hnext]
    exact hr 0
  have hze : blocks (norm (SelfintGrowthStable.apps (substQ 0 (wraps n (.lam d)) b) pending)) =
      blocks (SelfintGrowthStable.apps (.app (.lam b) (wraps n (.lam d))) pending) := by
    rw [← hut, ← ht, ← hnext]
    exact hz 0
  have hne : ¬ Done (norm (SelfintGrowthStable.apps (substQ 0 (wraps n (.lam d)) b) pending)) := by
    rw [← hut, ← hnext]
    obtain ⟨v, hv, _⟩ := hs 1
    exact red_not_done hv.head
  obtain ⟨q, pre, post, fresh, hpend, hshape, hfresh⟩ :=
    stable_spine_next b d n l pending hb hk hbc hd hdc hdn
      (fun v hv => (hp v hv).1) hbl hdl hre hze hne
  have hs₁ : state 1 = SelfintGrowthStable.apps
      (.app (.lam d) (wraps q (.lam d))) (fresh ++ post) := by
    simpa only [← hut, ← hnext] using hshape
  obtain ⟨v, hv, _⟩ := hs 1
  have hd2 : oc 0 d = 2 := by
    have hvh := hv.head
    have hvr := hv.red_eq
    rw [hs₁] at hvh hvr
    exact (spine_binary d (wraps q (.lam d)) v (fresh ++ post) hvh hvr).1
  have hpn : ∀ w ∈ fresh ++ post, norm (val w) = val w := by
    intro w hw
    rcases List.mem_append.mp hw with hw | hw
    · exact (hfresh w hw).2.1
    · apply (hp w _).1
      rw [hpend]
      exact List.mem_append_right pre hw
  let L := max (demand (state 1)) (l + 5 * SelfintGrowthLabels.apps d)
  have hpb : ∀ w ∈ fresh ++ post, Bounded L (val w) := by
    have hsbound : Bounded L (state 1) :=
      bounded_mono (state 1) (Nat.le_max_left _ _) (bounded_demand_self (state 1))
    rw [hs₁] at hsbound
    exact ((apps_bounded _ _ L).mp hsbound).2
  refine ⟨L, ?_⟩
  apply SelfintGrowthTrace.stable_sequence_runs d l L q (fresh ++ post)
    (fun i => state (i + 1)) hd hd2 hdc hdn hdl (Nat.le_max_right _ _) hpn hpb hs₁
  · intro i
    obtain ⟨v, hv, he⟩ := hs (i + 1)
    exact ⟨v, hv.head, he⟩
  · intro i; exact hr (i + 1)
  · intro i; exact hz (i + 1)
  · intro i
    obtain ⟨v, hv, _⟩ := hs (i + 1 + 1)
    exact red_not_done hv.head

/-- A finite actual head prefix followed by full data normalization does
not affect the finite-prefix contradiction. The bound may depend on that
prefix, but the later selected-head trace has one fixed bound. -/
theorem normal_trace_prefixes_no_run {l n : Nat} {t u : Q} (ht : Trace n t u)
    (T : Term) (hT : Closed T)
    (hn : ∀ k, HasNormalForm (realize (2 * k) T t)) :
    ¬ (∀ k, ∃ v, Run l k (norm u) v) := by
  obtain ⟨a, ha⟩ := ht.finite_realize
  obtain ⟨b, hb⟩ := data_steps_sim (norm_sound u)
  let k := max a (max b (l + 1))
  have ha' : a ≤ 2 * k := by
    have := Nat.le_max_left a (max b (l + 1)); omega
  have hb' : b ≤ 2 * k := by
    have := Nat.le_max_right a (max b (l + 1))
    have := Nat.le_max_left b (l + 1)
    omega
  have hl : l < 2 * k := by
    have := Nat.le_max_right a (max b (l + 1))
    have := Nat.le_max_right b (l + 1)
    omega
  obtain ⟨_, _, hfirst⟩ := ha (2 * k) ha' T hT
  have hred := betas_trans hfirst.betas (hb (2 * k) hb' T hT)
  obtain ⟨h, hc⟩ := WeakHeadClock.hasNormalForm_count
    (betas_preserve_hasNormalForm hred (hn k))
  exact no_unbounded_run (2 * k) hl T hT hc

private def identity : Term := .lam (.var 0)

private theorem identity_normal : NormalForm identity := by
  intro u h
  cases h with
  | lam h => cases h

/-- Exact remainder extraction excludes a uniformly bounded canonical
tail after any finite actual head prefix on the infinite zero stream. -/
theorem remainder_trace_no_bounded_run (R : Term)
    (hR : ∀ M, Closed M → ∀ N, Closed N →
      BetaJoin (.app R (streamOf (blcCode M) N)) N)
    {l n : Nat} {u : Q} (ht : Trace n (.app (embed R) (.z 0)) u) :
    ¬ (∀ k, ∃ v, Run l k (norm u) v) := by
  let T := streamOf (blcCode identity) identity
  have hT : Closed T := by decide
  apply normal_trace_prefixes_no_run ht T hT
  intro k
  obtain ⟨w, hw, hi⟩ := hR (SelfintZero.tower k) (SelfintZero.tower_closed k)
    identity (by decide)
  have he : w = identity := normalForm_betas_eq identity_normal hi
  subst w
  rw [SelfintZero.tower_stream k identity] at hw
  refine ⟨identity, ?_, identity_normal⟩
  simpa only [realize, interp, interp_embed, Nat.sub_zero, T, identity] using hw

/-- A correct closed remainder extractor has source-lambda growth events
arbitrarily far along its infinite-zero head execution. A finite earlier
phase of growth cannot supply a permanently nongrowing scanner. -/
theorem remainder_execution_grows_after (R : Term) (hc : Closed R)
    (hR : ∀ M, Closed M → ∀ N, Closed N →
      BetaJoin (.app R (streamOf (blcCode M) N)) N)
    (f : Nat → Q) (h₀ : f 0 = .app (embed R) (.z 0))
    (hf : ∀ i, Head (f i) (f (i + 1))) (N : Nat) :
    ∃ i, N ≤ i ∧ red (f i) < red (f (i + 1)) := by
  classical
  apply Classical.byContradiction
  intro hno
  have hng : ∀ i, red (f (N + i + 1)) ≤ red (f (N + i)) := by
    intro i
    by_cases h : red (f (N + i + 1)) ≤ red (f (N + i))
    · exact h
    · exact (hno ⟨N + i, by omega, by omega⟩).elim
  have hfc : ClosedQ (f 0) := by
    rw [h₀]
    change Closed (erase (.app (embed R) (.z 0)))
    simpa only [erase, erase_embed, Closed, FreeUnder] using
      And.intro hc (by decide : Closed (.lam (.var 0)))
  let g := fun i => f (N + i)
  have hg : ∀ i, Head (g i) (g (i + 1)) := by
    intro i
    simpa only [g, Nat.add_assoc] using hf (N + i)
  have hgc : ClosedQ (g 0) := by
    simpa only [g, Nat.add_zero] using SelfintGrowthCounters.execution_closed f hf hfc N
  obtain ⟨index, _, _, hclosed, hnorm, _, hstep, hcounts⟩ :=
    SelfintGrowthSequence.stable_sequence g hg hgc (by
      intro i
      simpa only [g, Nat.add_assoc] using hng i)
  obtain ⟨L, hrun⟩ := clean_sequence_bounded (fun i => norm (g (index i))) hnorm hclosed
    (by
      intro i
      obtain ⟨u, _, he, hu⟩ := hstep i
      exact ⟨u, hu, he⟩)
    (fun i => (hcounts i).1) (fun i => (hcounts i).2.1)
  obtain ⟨n, hn⟩ := SelfintGrowthSequence.execution_trace f hf (N + index 1)
  rw [h₀] at hn
  apply remainder_trace_no_bounded_run R hR (l := L) hn
  intro i
  exact ⟨_, hrun i⟩

/-- In particular, every actual infinite-zero execution has a growth event. -/
theorem remainder_execution_grows (R : Term) (hc : Closed R)
    (hR : ∀ M, Closed M → ∀ N, Closed N →
      BetaJoin (.app R (streamOf (blcCode M) N)) N)
    (f : Nat → Q) (h₀ : f 0 = .app (embed R) (.z 0))
    (hf : ∀ i, Head (f i) (f (i + 1))) :
    ∃ i, red (f i) < red (f (i + 1)) := by
  obtain ⟨i, _, hi⟩ := remainder_execution_grows_after R hc hR f h₀ hf 0
  exact ⟨i, hi⟩

/-- Every correct closed remainder extractor has a finite actual head
prefix ending at a program contraction which strictly increases the
number of surviving source-lambda occurrences. Data constants are not
counted as program lambdas. -/
theorem remainder_growth (R : Term) (hc : Closed R)
    (hR : ∀ M, Closed M → ∀ N, Closed N →
      BetaJoin (.app R (streamOf (blcCode M) N)) N) :
    ∃ n u v, Trace n (.app (embed R) (.z 0)) u ∧ RedHead u v ∧ red u < red v := by
  obtain ⟨f, h₀, hf⟩ := remainder_infinite R hc hR
  obtain ⟨i, hi⟩ := remainder_execution_grows R hc hR f h₀ hf
  obtain ⟨n, hn⟩ := SelfintGrowthSequence.execution_trace f hf i
  rw [h₀] at hn
  cases hf i with
  | red h => exact ⟨n, f i, f (i + 1), hn, h, hi⟩
  | data h => have hh := h.data.red_le; omega

end Blc.SelfintGrowth
