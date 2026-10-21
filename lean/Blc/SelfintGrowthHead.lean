/-
Deterministic weak-head execution for labelled zero streams. Data rules
strictly decrease an explicit normalization cost, so an infinite execution
must expose infinitely many program head contractions.
-/
import Blc.SelfintGrowthOrigins
import Blc.SelfintGrowthSimulation

namespace Blc.SelfintGrowthHead
open Term SelfintZero SelfintGrowthBlue SelfintGrowthLabels SelfintGrowthSimulation
  SelfintLowerBound WeakHeadClock

/-- Exact number of data contractions in one canonical application table call. -/
def apCost : V → V → Nat
  | .k, _ | .neu _, _ => 0
  | .const _, _ => 1
  | .z _, .k => 2
  | .z _, .z _ => 3
  | .z _, .neu _ => 1
  | .z _, .const .k => 2
  | .z _, .const (.z _) => 5
  | .z _, .const (.const _) => 3
  | .z _, .const (.neu _) => 2

theorem apCost_z (i : Nat) (v : V) :
    apCost (.z i) v = 1 + apCost v .k + apCost (ap v .k) (.z (i + 1)) := by
  cases v with
  | k | z | neu => rfl
  | const v => cases v <;> rfl

/-- Work of the fixed full-data normalizer. Its value decreases even for
other data-reduction orders, since all table arguments have invariant values. -/
def cost : Q → Nat
  | .var _ | .k | .z _ => 0
  | .lam b => cost b
  | .app f a => cost f + cost a + apCost (deep f) (deep a)

theorem data_cost_lt {t u : Q} (h : DataStep t u) : cost u < cost t := by
  induction h with
  | k a b => simp only [cost, deep, ap, apCost]; omega
  | z i a => simp only [cost, deep, apCost_z]; omega
  | left a h ih => simp only [cost, h.deep_eq]; omega
  | right f h ih => simp only [cost, h.deep_eq]; omega
  | lam h ih => exact ih

theorem data_count_le {n : Nat} {t u : Q} (h : CountData n t u) :
    cost u + n ≤ cost t := by
  induction h with
  | refl => exact Nat.le_refl _
  | head h hs ih => have hh := data_cost_lt h; omega

/-- The full data relation is strongly normalizing, including reductions
under program lambdas. This uses strict cost descent, not confluence. -/
theorem data_acc (t : Q) : Acc (fun u t => DataStep t u) t := by
  have h : ∀ n, ∀ t, cost t = n → Acc (fun u t => DataStep t u) t := by
    intro n
    induction n using Nat.strongRecOn with
    | ind n ih =>
      intro t ht
      refine Acc.intro t ?_
      intro u hu
      exact ih (cost u) (ht ▸ data_cost_lt hu) u rfl
  exact h (cost t) t rfl

theorem no_infinite_data (f : Nat → Q) (h : ∀ n, DataStep (f n) (f (n + 1))) : False := by
  have hb : ∀ n, cost (f n) + n ≤ cost (f 0) := by
    intro n
    induction n with
    | zero => exact Nat.le_refl _
    | succ n ih => have hh := data_cost_lt (h n); omega
  have hh := hb (cost (f 0) + 1)
  omega

/-- Data steps on the global function spine only. -/
inductive DataHead : Q → Q → Prop where
  | k (a b : Q) : DataHead (.app (.app .k a) b) a
  | z (i : Nat) (a : Q) :
      DataHead (.app (.z i) a) (.app (.app a .k) (.z (i + 1)))
  | left {f g : Q} (a : Q) : DataHead f g → DataHead (.app f a) (.app g a)

theorem DataHead.data {t u : Q} (h : DataHead t u) : DataStep t u := by
  induction h with
  | k a b => exact .k _ _
  | z i a => exact .z _ _
  | left a h ih => exact .left _ ih

/-- Exactly the two kinds of ordinary extended head contraction. -/
inductive Head : Q → Q → Prop where
  | red {t u : Q} : RedHead t u → Head t u
  | data {t u : Q} : DataHead t u → Head t u

def next : Q → Option Q
  | .app (.lam b) a => some (substQ 0 a b)
  | .app (.z i) a => some (.app (.app a .k) (.z (i + 1)))
  | .app (.app .k a) _ => some a
  | .app f a => (next f).map (Q.app · a)
  | _ => none

theorem next_left {f g : Q} (h : next f = some g) (a : Q) :
    next (.app f a) = some (.app g a) := by
  cases f with
  | var | lam | k | z => simp [next] at h
  | app p q =>
    cases p <;> simp_all [next]

theorem red_next {t u : Q} (h : RedHead t u) : next t = some u := by
  induction h with
  | beta => rfl
  | left a h ih => exact next_left ih a

theorem DataHead.next {t u : Q} (h : DataHead t u) : next t = some u := by
  induction h with
  | k | z => rfl
  | left a h ih => exact next_left ih a

theorem Head.next {t u : Q} (h : Head t u) : next t = some u := by
  cases h with
  | red h => exact red_next h
  | data h => exact h.next

theorem next_head {t u : Q} (h : next t = some u) : Head t u := by
  induction t generalizing u with
  | var | lam | k | z => simp [next] at h
  | app f a ihf iha =>
    cases f with
    | lam b => simp only [next, Option.some.injEq] at h; subst u; exact .red (.beta _ _)
    | z i => simp only [next, Option.some.injEq] at h; subst u; exact .data (.z _ _)
    | app p q =>
      cases p with
      | k => simp only [next, Option.some.injEq] at h; subst u; exact .data (.k _ _)
      | var => simp [next] at h
      | lam b =>
        simp only [next, Option.map_some, Option.some.injEq] at h
        subst u
        exact .red (.left _ (.beta _ _))
      | z i =>
        simp only [next, Option.map_some, Option.some.injEq] at h
        subst u
        exact .data (.left _ (.z _ _))
      | app p r =>
        change (next (.app (.app p r) q)).map (Q.app · a) = some u at h
        rw [Option.map_eq_some_iff] at h
        obtain ⟨g, hg, rfl⟩ := h
        cases ihf hg with
        | red hr => exact .red (.left _ hr)
        | data hd => exact .data (.left _ hd)
    | var | k => simp [next] at h

theorem head_deterministic {t u v : Q} (hu : Head t u) (hv : Head t v) : u = v :=
  Option.some.inj (hu.next.symm.trans hv.next)

theorem Head.closed {t u : Q} (h : Head t u) (hc : ClosedQ t) : ClosedQ u := by
  cases h with
  | red h => exact SelfintGrowthOrigins.head_closed h hc
  | data h => exact h.data.freeUnder 0 hc

theorem done_next {t : Q} (h : Done t) : next t = none := by cases h <;> rfl

/-- Closed extended weak-head normal forms have precisely the four Done shapes. -/
theorem closed_terminal {t : Q} (hc : ClosedQ t) (hn : next t = none) : Done t := by
  induction t with
  | var n => exact (Nat.not_lt_zero n hc).elim
  | lam b => exact .lam _
  | k => exact .k
  | z i => exact .z _
  | app f a ihf iha =>
    cases f with
    | var n => exact (Nat.not_lt_zero n hc.1).elim
    | lam b | z i => simp [next] at hn
    | k => exact .const _
    | app p q =>
      have hf : next (.app p q) = none := by
        cases p <;> simp_all [next]
      cases ihf hc.1 hf with
      | const q => simp [next] at hn

/-- Every infinite extended head execution has a program contraction
after each position: data steps alone cannot form an infinite suffix. -/
theorem infinite_red (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1))) (n : Nat) :
    ∃ k, n ≤ k ∧ RedHead (f k) (f (k + 1)) := by
  classical
  apply Classical.byContradiction
  intro hn
  have hd : ∀ k, DataStep (f (n + k)) (f (n + k + 1)) := by
    intro k
    cases h (n + k) with
    | red hr => exact (hn ⟨n + k, by omega, hr⟩).elim
    | data hd => exact hd.data
  exact no_infinite_data (fun k => f (n + k)) (by
    intro k
    simpa only [Nat.add_assoc] using hd k)

/-- Full data normalization stutters at data heads and preserves every
nongrowing program head as one nongrowing program head followed by data. -/
theorem head_norm_noGrowth {t u : Q} (h : Head t u) (hr : red u ≤ red t) :
    norm t = norm u ∨
      ∃ v, RedHead (norm t) v ∧ norm v = norm u ∧ red v ≤ red (norm t) := by
  cases h with
  | data h => exact .inl (congrArg val h.data.deep_eq)
  | red h => exact .inr (h.norm_noGrowth hr)

/-- An actual infinite nongrowing head execution exposes arbitrarily late
program heads on its canonical data normal forms. -/
theorem infinite_red_norm (f : Nat → Q) (h : ∀ n, Head (f n) (f (n + 1)))
    (hr : ∀ n, red (f (n + 1)) ≤ red (f n)) (n : Nat) :
    ∃ k v, n ≤ k ∧ RedHead (norm (f k)) v ∧
      norm v = norm (f (k + 1)) ∧ red v ≤ red (norm (f k)) := by
  obtain ⟨k, hk, hh⟩ := infinite_red f h n
  obtain ⟨v, hv, he, hvred⟩ := hh.norm_noGrowth (hr k)
  exact ⟨k, v, hk, hv, he, hvred⟩

/-- Exact ordinary weak-head traces, with every contraction counted. -/
inductive WeakTrace : Nat → Term → Term → Prop where
  | refl (t : Term) : WeakTrace 0 t t
  | step {n : Nat} {t u v : Term} : weakStep t = some u →
      WeakTrace n u v → WeakTrace (n + 1) t v

theorem WeakTrace.trans {n m : Nat} {t u v : Term} (h : WeakTrace n t u)
    (g : WeakTrace m u v) : WeakTrace (n + m) t v := by
  induction h with
  | refl => simpa only [Nat.zero_add] using g
  | step h hs ih =>
    simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using WeakTrace.step h (ih g)

theorem WeakTrace.left {n : Nat} {t u : Term} (h : WeakTrace n t u) (a : Term) :
    WeakTrace n (.app t a) (.app u a) := by
  induction h with
  | refl => exact .refl _
  | step h hs ih => exact .step (WeakHeadClock.weak_app h a) ih

theorem WeakTrace.betas {n : Nat} {t u : Term} (h : WeakTrace n t u) : Betas t u := by
  induction h with
  | refl => exact .refl _
  | step h hs ih => exact .head (weakStep_beta h) ih

theorem weak_true2 (a b : Term) : WeakTrace 2 (.app (.app churchTrue a) b) a := by
  refine .step (WeakHeadClock.weak_app (show weakStep (.app churchTrue a) =
    some (.lam (shift 1 0 a)) from rfl) b) ?_
  refine .step ?_ (.refl a)
  simp only [weakStep, contract, substDec_shift]

theorem weak_pair (a b x : Term) :
    weakStep (.app (pairT a b) x) = some (.app (.app x a) b) := by
  simp only [pairT, weakStep, contract, substDec, if_true, substDec_shift]

/-- A data head is realized by one or two actual ordinary head steps. -/
theorem data_head_realize {t u : Q} (h : DataHead t u) (m : Nat) (T : Term)
    (hm : demand t ≤ m) :
    ∃ n, 1 ≤ n ∧ n ≤ 2 ∧ WeakTrace n (realize m T t) (realize m T u) := by
  induction h with
  | k a b => exact ⟨2, by omega, by omega, weak_true2 _ _⟩
  | z i a =>
    have he : m - i = (m - (i + 1)) + 1 := by simp only [demand] at hm; omega
    refine ⟨1, by omega, by omega, .step ?_ (.refl _)⟩
    simpa only [realize, interp, he, zeros] using
      weak_pair churchTrue (zeros (m - (i + 1)) T) (realize m T a)
  | @left f g a h ih =>
    obtain ⟨n, hn, hb, ht⟩ := ih (Nat.le_trans (Nat.le_max_left _ _) hm)
    exact ⟨n, hn, hb, ht.left _⟩

theorem head_realize {t u : Q} (h : Head t u) (m : Nat) (T : Term)
    (hT : Closed T) (hm : demand t ≤ m) :
    ∃ n, 1 ≤ n ∧ n ≤ 2 ∧ WeakTrace n (realize m T t) (realize m T u) := by
  cases h with
  | red h => exact ⟨1, by omega, by omega, .step (red_head_sim h m T hT) (.refl _)⟩
  | data h => exact data_head_realize h m T hm

/-- Actual extended head traces, counting the program contractions. -/
inductive Trace : Nat → Q → Q → Prop where
  | refl (t : Q) : Trace 0 t t
  | red {n : Nat} {t u v : Q} : RedHead t u → Trace n u v → Trace (n + 1) t v
  | data {n : Nat} {t u v : Q} : DataHead t u → Trace n u v → Trace n t v

theorem Trace.trans {n m : Nat} {t u v : Q} (h : Trace n t u) (g : Trace m u v) :
    Trace (n + m) t v := by
  induction h with
  | refl => simpa only [Nat.zero_add] using g
  | red h hs ih =>
    simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using Trace.red h (ih g)
  | data h hs ih => exact .data h (ih g)

theorem Trace.closed {n : Nat} {t u : Q} (h : Trace n t u) (hc : ClosedQ t) : ClosedQ u := by
  induction h with
  | refl => exact hc
  | red h hs ih => exact ih (Head.closed (.red h) hc)
  | data h hs ih => exact ih (Head.closed (.data h) hc)

theorem Head.trace {t u : Q} (h : Head t u) : ∃ n, Trace n t u := by
  cases h with
  | red h => exact ⟨1, .red h (.refl _)⟩
  | data h => exact ⟨0, .data h (.refl _)⟩

theorem Trace.finite_realize {n : Nat} {t u : Q} (h : Trace n t u) :
    ∃ b, ∀ m, b ≤ m → ∀ T, Closed T →
      ∃ k, n ≤ k ∧ WeakTrace k (realize m T t) (realize m T u) := by
  induction h with
  | refl t => exact ⟨0, fun _ _ _ _ => ⟨0, by omega, .refl _⟩⟩
  | red h hs ih =>
    obtain ⟨b, hb⟩ := ih
    refine ⟨b, fun m hm T hT => ?_⟩
    obtain ⟨k, hk, ht⟩ := hb m hm T hT
    exact ⟨k + 1, by omega, .step (red_head_sim h m T hT) ht⟩
  | @data n t v u h hs ih =>
    obtain ⟨b, hb⟩ := ih
    refine ⟨max (demand t) b, fun m hm T hT => ?_⟩
    obtain ⟨k, hk, ht⟩ := hb m (Nat.le_trans (Nat.le_max_right _ _) hm) T hT
    obtain ⟨j, _, _, hj⟩ := data_head_realize h m T (Nat.le_trans (Nat.le_max_left _ _) hm)
    exact ⟨j + k, by omega, hj.trans ht⟩

/-- The selected program-contraction count is preserved separately, without
counting administrative data contractions as additional program steps.
This theorem concerns selected events, not colored lambda occurrences. -/
theorem Trace.finite_selected {n : Nat} {t u : Q} (h : Trace n t u) :
    ∃ b, ∀ m, b ≤ m → ∀ T, Closed T →
      Interleaved n (realize m T t) (realize m T u) := by
  induction h with
  | refl t => exact ⟨0, fun _ _ _ _ => .refl _⟩
  | red h hs ih =>
    obtain ⟨b, hb⟩ := ih
    exact ⟨b, fun m hm T hT => .head (red_head_sim h m T hT) (hb m hm T hT)⟩
  | @data n t v u h hs ih =>
    obtain ⟨b, hb⟩ := ih
    refine ⟨max (demand t) b, fun m hm T hT => ?_⟩
    exact interleaved_prepend (data_sim h.data m T hT (Nat.le_trans (Nat.le_max_left _ _) hm))
      (hb m (Nat.le_trans (Nat.le_max_right _ _) hm) T hT)

/-- Realized extended terminal states need at most one administrative
ordinary head step to expose their lambda. -/
theorem done_weak_realize {t : Q} (h : Done t) :
    ∃ b, ∀ m, b ≤ m → ∀ T, ∃ n B, n ≤ 1 ∧
      WeakTrace n (realize m T t) (.lam B) := by
  cases h with
  | k => exact ⟨0, fun _ _ _ => ⟨0, _, by omega, .refl _⟩⟩
  | z i =>
    refine ⟨i + 1, fun m hm T => ?_⟩
    have he : m - i = (m - (i + 1)) + 1 := by omega
    simp only [realize, interp, he, zeros, pairT]
    exact ⟨0, _, by omega, .refl _⟩
  | const t => exact ⟨0, fun _ _ _ => ⟨1, _, by omega, .step rfl (.refl _)⟩⟩
  | lam b => exact ⟨0, fun _ _ _ => ⟨0, _, by omega, .refl _⟩⟩

theorem Trace.done_prefix {n : Nat} {t u : Q} (h : Trace n t u) (hd : Done u) :
    ∃ b, ∀ m, b ≤ m → ∀ T, Closed T →
      ∃ k B, WeakTrace k (realize m T t) (.lam B) := by
  obtain ⟨b, hb⟩ := h.finite_realize
  obtain ⟨c, hc⟩ := done_weak_realize hd
  refine ⟨max b c, fun m hm T hT => ?_⟩
  obtain ⟨k, _, hk⟩ := hb m (Nat.le_trans (Nat.le_max_left _ _) hm) T hT
  obtain ⟨j, B, _, hj⟩ := hc m (Nat.le_trans (Nat.le_max_right _ _) hm) T
  exact ⟨k + j, B, hk.trans hj⟩

/-- The deterministic execution is stationary only after reaching Done. -/
def execute (t : Q) : Nat → Q
  | 0 => t
  | n + 1 => (next (execute t n)).getD (execute t n)

theorem execute_trace (t : Q) (n : Nat) : ∃ k, Trace k t (execute t n) := by
  induction n with
  | zero => exact ⟨0, .refl _⟩
  | succ n ih =>
    obtain ⟨k, hk⟩ := ih
    cases hn : next (execute t n) with
    | none => simpa only [execute, hn, Option.getD_none] using ⟨k, hk⟩
    | some u =>
      obtain ⟨j, hj⟩ := (next_head hn).trace
      exact ⟨k + j, by simpa only [execute, hn, Option.getD_some] using hk.trans hj⟩

/-- Excluding all finite closed terminal executions supplies an actual
infinite deterministic head execution, rather than merely an arbitrary
infinite compatible reduction. -/
theorem nonterminal_infinite (t : Q) (hc : ClosedQ t)
    (hn : ¬ ∃ n u, Trace n t u ∧ Done u) :
    ∃ f : Nat → Q, f 0 = t ∧ ∀ n, Head (f n) (f (n + 1)) := by
  refine ⟨execute t, rfl, ?_⟩
  intro n
  obtain ⟨k, hk⟩ := execute_trace t n
  cases hs : next (execute t n) with
  | none => exact (hn ⟨k, execute t n, hk, closed_terminal (hk.closed hc) hs⟩).elim
  | some u => simpa only [execute, hs, Option.getD_some] using next_head hs

private def omega : Term :=
  .app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))

private theorem omega_beta_eq {u : Term} (h : Beta omega u) : u = omega := by
  have hs := headStep_complete (spine_beta_head (Spine.redex (by decide) (by decide)) h)
  exact Option.some.inj hs.symm

private theorem omega_betas_eq {u : Term} (h : Betas omega u) : u = omega := by
  have aux : ∀ t v, Betas t v → t = omega → v = omega := by
    intro t v hs
    induction hs with
    | refl => exact id
    | head hb hs ih =>
      intro ht
      apply ih
      subst ht
      exact omega_beta_eq hb
  exact aux _ _ h rfl

private theorem omega_not_lam {B : Term} : ¬ BetaJoin (.lam B) omega := by
  rintro ⟨u, hu, ho⟩
  have he := omega_betas_eq ho
  subst u
  obtain ⟨v, hv, _⟩ := lam_betas_shape hu
  cases hv

/-- Exact closed-source remainder extraction cannot reach an extended
terminal state on the infinite zero stream. A finite terminal trace would
give a lambda even for a sufficiently long valid lambda-prefix and suffix Ω. -/
theorem remainder_nonterminal (R : Term)
    (hR : ∀ M, Closed M → ∀ N, Closed N →
      BetaJoin (.app R (streamOf (blcCode M) N)) N) :
    ¬ ∃ n u, Trace n (.app (embed R) (.z 0)) u ∧ Done u := by
  rintro ⟨n, u, ht, hd⟩
  obtain ⟨b, hb⟩ := ht.done_prefix hd
  let T := streamOf (blcCode (.lam (.var 0))) omega
  have hT : Closed T := by decide
  obtain ⟨k, B, hk⟩ := hb (2 * b) (by omega) T hT
  have he : realize (2 * b) T (.app (embed R) (.z 0)) =
      .app R (streamOf (blcCode (SelfintZero.tower b)) omega) := by
    simp only [realize, interp, interp_embed, Nat.sub_zero, SelfintZero.tower_stream, T]
  rw [he] at hk
  obtain ⟨v, hv, ho⟩ := hR (SelfintZero.tower b) (SelfintZero.tower_closed b) omega (by decide)
  obtain ⟨w, hw, hw'⟩ := betas_confluent hk.betas hv
  exact omega_not_lam ⟨w, hw, betas_trans ho hw'⟩

/-- The suffix contract supplies an actual infinite deterministic execution
on the labelled zero stream, without assuming its existence as a premise. -/
theorem remainder_infinite (R : Term) (hc : Closed R)
    (hR : ∀ M, Closed M → ∀ N, Closed N →
      BetaJoin (.app R (streamOf (blcCode M) N)) N) :
    ∃ f : Nat → Q, f 0 = .app (embed R) (.z 0) ∧
      ∀ n, Head (f n) (f (n + 1)) := by
  have ht : ClosedQ (.app (embed R) (.z 0)) := by
    change Closed (erase (.app (embed R) (.z 0)))
    simpa only [erase, erase_embed, Closed, FreeUnder] using And.intro hc (by decide : Closed (.lam (.var 0)))
  exact nonterminal_infinite _ ht (remainder_nonterminal R hR)

end Blc.SelfintGrowthHead
