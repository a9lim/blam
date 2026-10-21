/-
Canonical head decomposition and extraction of the first stable operand.
No eventuality or infinite execution is assumed in these finite lemmas.
-/
import Blc.SelfintGrowthOrigins
import Blc.SelfintGrowthTrace

namespace Blc.SelfintGrowthSpine
open Term SelfintZero SelfintGrowthBlue SelfintGrowthBlocks SelfintGrowthOrigins
open SelfintGrowthStable

/-- A canonical closed program-head event exposes a canonical closed
operand and pending spine; the contractor body is canonical as well. -/
theorem decompose {t u : Q} (h : RedHead t u) (hn : norm t = t) (hc : ClosedQ t) :
    ∃ b a pending,
      t = apps (.app (.lam b) a) pending ∧
      u = apps (substQ 0 a b) pending ∧
      norm b = b ∧ norm a = a ∧ FreeUnder 1 (erase b) ∧ ClosedQ a ∧
      ∀ v ∈ pending, norm (val v) = val v ∧ ClosedQ (val v) := by
  induction h with
  | beta b a =>
    change Q.app (.lam (norm b)) (norm a) = Q.app (.lam b) a at hn
    obtain ⟨hb, ha⟩ := Q.app.inj hn
    exact ⟨b, a, [], rfl, rfl, Q.lam.inj hb, ha, hc.1, hc.2, by simp⟩
  | @left f g a h ih =>
    rw [norm_app_neutral f a h.neutral] at hn
    obtain ⟨hfn, han⟩ := Q.app.inj hn
    obtain ⟨b, arg, pending, hft, hgt, hbn, hargn, hbc, hargc, hp⟩ := ih hfn hc.1
    refine ⟨b, arg, pending ++ [deep a], ?_, ?_, hbn, hargn, hbc, hargc, ?_⟩
    · rw [apps_snoc]
      change Q.app f a = Q.app (apps (.app (.lam b) arg) pending) (norm a)
      rw [← hft, han]
    · rw [apps_snoc]
      change Q.app g a = Q.app (apps (substQ 0 arg b) pending) (norm a)
      rw [← hgt, han]
    · intro v hv
      rcases List.mem_append.mp hv with hv | hv
      · exact hp v hv
      · have he : v = deep a := by simpa only [List.mem_singleton] using hv
        subst v
        exact ⟨norm_idempotent a, by change ClosedQ (norm a); rw [han]; exact hc.2⟩

theorem bad_head_apps {t u : Q} (h : BadHead t u) (pending : List V) :
    BadHead (apps t pending) (apps u pending) := by
  induction pending generalizing t u with
  | nil => exact h
  | cons v pending ih => exact ih (.left (val v) h)

theorem copies_block_apps {t u : Q} (h : CopiesBlock t u) (pending : List V) :
    CopiesBlock (apps t pending) (apps u pending) := by
  induction pending generalizing t u with
  | nil => exact h
  | cons v pending ih => exact ih (.left (val v) h)

theorem wraps_injective (n : Nat) {t u : Q} (h : wraps n t = wraps n u) : t = u := by
  induction n with
  | zero => exact h
  | succ n ih => exact ih (Q.app.inj h).2

/-- Absence of the two finitely counted bad events exposes the wrapped
flat operand needed by the stable-spine transition theorem. -/
theorem stable_operand {t u : Q} (h : RedHead t u) (hn : norm t = t) (hc : ClosedQ t)
    (hr : red u = red t) (hf : ¬ BadHead t u) (hz : ¬ CopiesBlock t u) :
    ∃ b d n pending,
      t = apps (.app (.lam b) (wraps n (.lam d))) pending ∧
      u = apps (substQ 0 (wraps n (.lam d)) b) pending ∧
      red b = 0 ∧ oc 0 b = 2 ∧ norm b = b ∧ FreeUnder 1 (erase b) ∧
      red d = 0 ∧ ClosedQ (.lam d) ∧ norm (.lam d) = .lam d ∧
      ∀ v ∈ pending, norm (val v) = val v ∧ ClosedQ (val v) := by
  obtain ⟨b, a, pending, ht, hu, hbn, han, hbc, hac, hp⟩ := decompose h hn hc
  have hred : red (substQ 0 a b) = red (.app (.lam b) a) := by
    rw [ht, hu, apps_red, apps_red] at hr
    omega
  obtain ⟨hk, ha⟩ := constant_beta_parameters b a hred
  have hflat : Flat (.lam b) := by
    by_cases hfl : Flat (.lam b)
    · exact hfl
    · have he := bad_head_apps (.beta b a hfl) pending
      rw [← ht, ← hu] at he
      exact (hf he).elim
  have hblock : blocks a = 0 := by
    by_cases hbl : blocks a = 0
    · exact hbl
    · have he := copies_block_apps (.beta b a (Nat.pos_of_ne_zero hbl)) pending
      rw [← ht, ← hu] at he
      exact (hz he).elim
  obtain ⟨n, d, he, hd, hdc⟩ := one_red_unblocked (deep a)
    (by change ClosedQ (norm a); rw [han]; exact hac)
    (by change red (norm a) = 1; rw [han]; exact ha)
    (by change blocks (norm a) = 0; rw [han]; exact hblock)
  change norm a = wraps n (.lam d) at he
  rw [han] at he
  have hdn : norm (.lam d) = .lam d := by
    rw [he, wraps_norm] at han
    exact wraps_injective n han
  exact ⟨b, d, n, pending, he ▸ ht, he ▸ hu, hflat.1, hk, hbn, hbc, hd, hdc, hdn, hp⟩

/-- Constant count at an exposed canonical self-copy spine forces its
template to be binary, independently of the pending arguments. -/
theorem spine_binary (b a u : Q) (pending : List V)
    (h : RedHead (apps (.app (.lam b) a) pending) u)
    (hr : red u = red (apps (.app (.lam b) a) pending)) : oc 0 b = 2 ∧ red a = 1 := by
  have he := SelfintGrowthTrace.head_deterministic h (apps_head (.beta b a) pending)
  rw [he, apps_red, apps_red] at hr
  exact constant_beta_parameters b a (by omega)

end Blc.SelfintGrowthSpine
