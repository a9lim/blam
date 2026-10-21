/-
Trace closure of the stable fixed-template spine. The bound applies to
every selected data step and is independent of constant-wrapper depth.
-/
import Blc.SelfintGrowthStable
import Blc.SelfintGrowthSimulation

namespace Blc.SelfintGrowthTrace
open Term SelfintZero SelfintGrowthBlue SelfintGrowthBlocks SelfintGrowthStable
open SelfintGrowthLabels SelfintGrowthSimulation

theorem apps_step {f g : Q} (h : DataStep f g) (vs : List V) :
    DataStep (SelfintGrowthStable.apps f vs) (SelfintGrowthStable.apps g vs) := by
  induction vs generalizing f g with
  | nil => exact h
  | cons v vs ih => exact ih (.left (val v) h)

theorem apps_boundTrace {l : Nat} {f g : Q} (h : BoundTrace l f g) (vs : List V)
    (hv : ∀ v ∈ vs, Bounded l (val v)) :
    BoundTrace l (SelfintGrowthStable.apps f vs) (SelfintGrowthStable.apps g vs) := by
  induction vs generalizing f g with
  | nil => exact h
  | cons v vs ih =>
    exact ih (h.left (val v) (hv v (by simp)))
      (fun w hw => hv w (List.mem_cons_of_mem v hw))

/-- Peeling wrappers performs only K erasures, so it does not increase
the label bound even when the number of wrappers is unbounded. -/
theorem peel_trace (f : Q) (pre post : List V) (l : Nat) (hf : Bounded l f)
    (hv : ∀ v ∈ pre ++ post, Bounded l (val v)) :
    BoundTrace l (SelfintGrowthStable.apps (wraps pre.length f) (pre ++ post))
      (SelfintGrowthStable.apps f post) := by
  induction pre with
  | nil => exact .refl _ ((apps_bounded f post l).mpr ⟨hf, hv⟩)
  | cons v pre ih =>
    have hb : Bounded l (SelfintGrowthStable.apps (wraps (v :: pre).length f)
        ((v :: pre) ++ post)) :=
      (apps_bounded _ _ _).mpr ⟨(wraps_bounded _ _ _).mpr hf, hv⟩
    have ht := ih (fun w hw => hv w (List.mem_cons_of_mem v hw))
    exact .head hb (apps_step (.k (wraps pre.length f) (val v)) (pre ++ post)) ht

theorem boundTrace_run {l : Nat} {t u : Q} (h : BoundTrace l t u) : Run l 0 t u := by
  induction h with
  | refl t _ => exact .refl _
  | head hb hd _ ih => exact .data hb hd ih

theorem run_trans {l n m : Nat} {t u v : Q} (h : Run l n t u) (g : Run l m u v) :
    Run l (n + m) t v := by
  induction h with
  | refl => simpa only [Nat.zero_add] using g
  | data hb hd _ ih => exact .data hb hd (ih g)
  | head hd _ ih =>
    simpa only [Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using Run.head hd (ih g)

/-- Once local normalization has produced a wrapped normal lambda spine,
the rest of global normalization merely erases old pending arguments. -/
theorem wrapped_spine_trace (raw f : Q) (m l : Nat) (pending : List V)
    (htrace : BoundTrace l raw (norm raw))
    (hshape : norm raw = wraps m f) (hf : ∃ n, deep f = .neu n) (hfn : norm f = f)
    (hp : ∀ v ∈ pending, norm (val v) = val v)
    (hpb : ∀ v ∈ pending, Bounded l (val v))
    (hn : ¬ Done (norm (SelfintGrowthStable.apps raw pending))) :
    BoundTrace l (SelfintGrowthStable.apps raw pending)
      (norm (SelfintGrowthStable.apps raw pending)) := by
  have hglobal : norm (SelfintGrowthStable.apps raw pending) =
      norm (SelfintGrowthStable.apps (wraps m f) pending) := by
    rw [(apps_data (norm_sound raw) pending).norm_eq, hshape]
  obtain ⟨pre, post, he, hm, hpeel⟩ := peel_wrappers m f pending (hglobal ▸ hn)
  have hfb : Bounded l f := (wraps_bounded m f l).mp (hshape ▸ htrace.finish)
  have hpost : ∀ v ∈ post, norm (val v) = val v := by
    intro v hv
    apply hp v
    rw [he]
    exact List.mem_append_right pre hv
  have heq : norm (SelfintGrowthStable.apps raw pending) =
      SelfintGrowthStable.apps f post :=
    hglobal.trans (hpeel.trans (norm_apps_fixed f post hf hfn hpost))
  have hfirst := apps_boundTrace htrace pending hpb
  rw [hshape] at hfirst
  have hlast := peel_trace f pre post l hfb (he ▸ hpb)
  rw [hm, ← he] at hlast
  rw [heq]
  exact hfirst.trans hlast

/-- One whole stable transition has the fixed-body label bound, including
every intermediate data state and arbitrarily many wrapper erasures. -/
theorem stable_spine_run (b d : Q) (n l L : Nat) (pending : List V)
    (hb : red b = 0) (hk : oc 0 b = 2) (hbc : FreeUnder 1 (erase b))
    (hd : red d = 0) (hdc : ClosedQ (.lam d)) (hdn : norm (.lam d) = .lam d)
    (hp : ∀ v ∈ pending, norm (val v) = val v)
    (hpb : ∀ v ∈ pending, Bounded L (val v))
    (hbl : Bounded l b) (hdl : Bounded l (.lam d))
    (hL : l + 5 * SelfintGrowthLabels.apps b ≤ L)
    (hr : red (norm (SelfintGrowthStable.apps (substQ 0 (wraps n (.lam d)) b) pending)) =
      red (SelfintGrowthStable.apps (.app (.lam b) (wraps n (.lam d))) pending))
    (hz : blocks (norm (SelfintGrowthStable.apps (substQ 0 (wraps n (.lam d)) b) pending)) =
      blocks (SelfintGrowthStable.apps (.app (.lam b) (wraps n (.lam d))) pending))
    (hn : ¬ Done (norm (SelfintGrowthStable.apps (substQ 0 (wraps n (.lam d)) b) pending))) :
    Run L 1 (SelfintGrowthStable.apps (.app (.lam b) (wraps n (.lam d))) pending)
      (norm (SelfintGrowthStable.apps (substQ 0 (wraps n (.lam d)) b) pending)) := by
  obtain ⟨m, q, vs, he, _⟩ := flat_spine_transition b d n pending hb hk hbc hd hdc hdn hr hz
  let f := SelfintGrowthStable.apps (.app (.lam d) (wraps q (.lam d))) vs
  have hf : ∃ a, deep f = .neu a := apps_deep_neutral _ vs ⟨_, rfl⟩
  have hfn : ∃ a, deep (norm f) = .neu a := by rw [deep_norm]; exact hf
  have he' : norm (substQ 0 (wraps n (.lam d)) b) = wraps m (norm f) := by
    calc
      _ = norm (norm (substQ 0 (wraps n (.lam d)) b)) := (norm_idempotent _).symm
      _ = norm (wraps m f) := congrArg norm he
      _ = wraps m (norm f) := wraps_norm m f
  obtain ⟨k, hk', ht⟩ := flat_body_bound b (.lam d) n l hb hdn hbl hdl
  have htl : BoundTrace L (substQ 0 (wraps n (.lam d)) b)
      (norm (substQ 0 (wraps n (.lam d)) b)) :=
    ht.mono (Nat.le_trans (Nat.add_le_add_left hk' l) hL)
  have hg := wrapped_spine_trace _ (norm f) m L pending htl he' hfn
    (norm_idempotent f) hp hpb hn
  exact .head (apps_head (.beta b (wraps n (.lam d))) pending) (boundTrace_run hg)

theorem head_deterministic {t u v : Q} (h : RedHead t u) (g : RedHead t v) : u = v := by
  induction h generalizing v with
  | beta b a =>
    cases g with
    | beta => rfl
    | left _ h => cases h
  | @left f g a h ih =>
    cases g with
    | beta => cases h
    | left _ hg => exact congrArg (fun t => Q.app t a) (ih hg)

/-- A continuing canonical constant-count/block-count execution from a
flat binary self-copy state has a single label bound for every finite
prefix. Its pending arguments can carry arbitrary other code. -/
theorem stable_sequence_runs (d : Q) (l L n₀ : Nat) (pending₀ : List V)
    (state : Nat → Q)
    (hd : red d = 0) (hk : oc 0 d = 2) (hdc : ClosedQ (.lam d))
    (hdn : norm (.lam d) = .lam d) (hdl : Bounded l (.lam d))
    (hL : l + 5 * SelfintGrowthLabels.apps d ≤ L)
    (hp₀ : ∀ v ∈ pending₀, norm (val v) = val v)
    (hb₀ : ∀ v ∈ pending₀, Bounded L (val v))
    (h₀ : state 0 = SelfintGrowthStable.apps (.app (.lam d) (wraps n₀ (.lam d))) pending₀)
    (hs : ∀ i, ∃ u, RedHead (state i) u ∧ state (i + 1) = norm u)
    (hr : ∀ i, red (state (i + 1)) = red (state i))
    (hz : ∀ i, blocks (state (i + 1)) = blocks (state i))
    (hn : ∀ i, ¬ Done (state (i + 1))) :
    ∀ i, Run L i (state 0) (state i) := by
  have hall : ∀ i, ∃ n pending,
      state i = SelfintGrowthStable.apps (.app (.lam d) (wraps n (.lam d))) pending ∧
      (∀ v ∈ pending, norm (val v) = val v) ∧
      (∀ v ∈ pending, Bounded L (val v)) ∧ Run L i (state 0) (state i) := by
    intro i
    induction i with
    | zero => exact ⟨n₀, pending₀, h₀, hp₀, hb₀, .refl _⟩
    | succ i ih =>
      obtain ⟨n, pending, he, hp, hb, hrun⟩ := ih
      obtain ⟨u, hu, hnext⟩ := hs i
      have hstep := apps_head (.beta d (wraps n (.lam d))) pending
      rw [he] at hu
      have hue := head_deterministic hu hstep
      rw [hue] at hnext
      have hre : red (norm (SelfintGrowthStable.apps (substQ 0 (wraps n (.lam d)) d) pending)) =
          red (SelfintGrowthStable.apps (.app (.lam d) (wraps n (.lam d))) pending) := by
        rw [← hnext, ← he]
        exact hr i
      have hze : blocks (norm (SelfintGrowthStable.apps (substQ 0 (wraps n (.lam d)) d) pending)) =
          blocks (SelfintGrowthStable.apps (.app (.lam d) (wraps n (.lam d))) pending) := by
        rw [← hnext, ← he]
        exact hz i
      have hne : ¬ Done (norm (SelfintGrowthStable.apps (substQ 0 (wraps n (.lam d)) d) pending)) :=
        hnext ▸ hn i
      obtain ⟨q, pre, post, fresh, hpend, htarget, hfresh⟩ :=
        stable_spine_next d d n l pending hd hk hdc hd hdc hdn hp hdl hdl hre hze hne
      have hpnext : ∀ v ∈ fresh ++ post, norm (val v) = val v := by
        intro v hv
        rcases List.mem_append.mp hv with hv | hv
        · exact (hfresh v hv).2.1
        · apply hp v
          rw [hpend]
          exact List.mem_append_right pre hv
      have hbnext : ∀ v ∈ fresh ++ post, Bounded L (val v) := by
        intro v hv
        rcases List.mem_append.mp hv with hv | hv
        · exact bounded_mono _ hL (hfresh v hv).2.2
        · apply hb v
          rw [hpend]
          exact List.mem_append_right pre hv
      have hone := stable_spine_run d d n l L pending hd hk hdc hd hdc hdn hp hb
        hdl hdl hL hre hze hne
      rw [← hnext, ← he] at hone
      exact ⟨q, fresh ++ post, hnext.trans htarget, hpnext, hbnext, run_trans hrun hone⟩
  intro i
  obtain ⟨_, _, _, _, _, hi⟩ := hall i
  exact hi

end Blc.SelfintGrowthTrace
