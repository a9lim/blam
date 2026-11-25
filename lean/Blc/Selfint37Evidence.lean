/- Kernel evidence from data/self-interpreter/reasoning_162/floor38. The standalone
modules are assembled in dependency order for the Blc Lake target. -/
import Blc.SelfintSharp
import Blc.WeakHeadClock
import Blc.Wire
/- General rank invariant and clock lemmas for the floor38 lane.
RankRealization supplies the kernel-checked realization of this calculus.
The inventory theorem remains handwritten: no global size theorem is
asserted in this file. -/

namespace Blc.Round3Floor38
open Term SelfintSharp SelfintLowerBound WeakHeadClock
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

inductive M where
  | n
  | j (x : M)
  | ap (f a : M)
  deriving DecidableEq

def rank : M → Nat
  | .n => 1
  | .j x => max 2 (rank x + 1)
  | .ap f a => max (rank f) (rank a) - 1

inductive Mode where | a | b deriving DecidableEq
inductive Order where | xyz | xzy | zxy | zyx deriving DecidableEq

def nBody : Mode → M → M
  | .a, x => .ap (.ap x (.j x)) x
  | .b, x => .ap x (.ap x (.j x))

def jBody : Order → M → M → M → M
  | .xyz, x, y, z => .ap x (.ap y z)
  | .xzy, x, y, z => .ap x (.ap z y)
  | .zxy, x, y, z => .ap z (.ap x y)
  | .zyx, x, y, z => .ap z (.ap y x)

inductive Red (mode : Mode) (order : Order) : M → M → Prop where
  | n (x) : Red mode order (.ap .n x) (nBody mode x)
  | j (x y z) : Red mode order (.ap (.ap (.j x) y) z) (jBody order x y z)
  | left {f g} (a) : Red mode order f g → Red mode order (.ap f a) (.ap g a)

theorem rank_n (mode : Mode) (x : M) : rank (nBody mode x) ≤ rank (.ap .n x) := by
  cases mode <;> simp only [nBody, rank] <;> omega

theorem rank_j (order : Order) (x y z : M) :
    rank (jBody order x y z) ≤ rank (.ap (.ap (.j x) y) z) := by
  cases order <;> simp only [jBody, rank] <;> omega

theorem rank_red {mode order : _} {t u : M} (h : Red mode order t u) :
    rank u ≤ rank t := by
  induction h with
  | n x => exact rank_n _ x
  | j x y z => exact rank_j _ x y z
  | left a h ih => simp only [rank]; omega

def mApps (t : M) : List M → M
  | [] => t
  | a :: as => mApps (.ap t a) as

theorem red_apps {mode order : _} {t u : M} (h : Red mode order t u) (as : List M) :
    Red mode order (mApps t as) (mApps u as) := by
  induction as generalizing t u with
  | nil => exact h
  | cons a as ih => exact ih (.left a h)

theorem rank_progress (mode : Mode) (order : Order) (t : M) (as : List M)
    (h : rank t ≤ as.length) : ∃ u, Red mode order (mApps t as) u := by
  induction t generalizing as with
  | n =>
      cases as with
      | nil => exfalso; simp only [rank, List.length_nil] at h; omega
      | cons a as => exact ⟨_, red_apps (.n a) as⟩
  | j x ih =>
      cases as with
      | nil => exfalso; simp only [rank, List.length_nil] at h; omega
      | cons a as =>
          cases as with
          | nil => exfalso; simp only [rank, List.length_cons, List.length_nil] at h; omega
          | cons b bs => exact ⟨_, red_apps (.j x a b) bs⟩
  | ap f a ihf iha =>
      have hf : rank f ≤ (a :: as).length := by
        simp only [rank, List.length_cons] at h ⊢
        omega
      exact ihf (a :: as) hf

theorem zero_progress (mode : Mode) (order : Order) {t : M} (h : rank t = 0) :
    ∃ u, Red mode order t u ∧ rank u = 0 := by
  obtain ⟨u, hu⟩ := rank_progress mode order t [] (by simp only [List.length_nil]; omega)
  refine ⟨u, hu, ?_⟩
  have hr := rank_red hu
  simp only [mApps] at hr
  omega

inductive Trace (mode : Mode) (order : Order) : Nat → M → M → Prop where
  | refl (t) : Trace mode order 0 t t
  | next {n t u v} : Red mode order t u → Trace mode order n u v →
      Trace mode order (n + 1) t v

theorem zero_arbitrarily_long (mode : Mode) (order : Order) (n : Nat)
    {t : M} (h : rank t = 0) : ∃ u, Trace mode order n t u := by
  induction n generalizing t with
  | zero => exact ⟨t, .refl t⟩
  | succ n ih =>
      obtain ⟨v, hv, hz⟩ := zero_progress mode order h
      obtain ⟨u, hu⟩ := ih hz
      exact ⟨u, .next hv hu⟩

theorem diagonal_rank : rank (.ap .n .n) = 0 := rfl

/- Concrete beta pumps may simplify arguments between selected head steps. -/
def tApps (t : Term) : List Term → Term
  | [] => t
  | a :: as => tApps (.app t a) as

theorem count_app_left {t a : Term} {n : Nat} (h : Count (.app t a) n) :
    ∃ m, m ≤ n ∧ Count t m := by
  induction n generalizing t with
  | zero =>
      cases hs : weakStep t with
      | none => exact ⟨0, Nat.le_refl _, .stop hs⟩
      | some u =>
          have ha := weak_app hs a
          cases h with
          | stop hz => simp [hz] at ha
  | succ n ih =>
      cases hs : weakStep t with
      | none => exact ⟨0, Nat.zero_le _, .stop hs⟩
      | some u =>
          have ha := weak_app hs a
          cases h with
          | step hb hc =>
              have he := Option.some.inj (ha.symm.trans hb)
              subst he
              obtain ⟨m, hm, hcm⟩ := ih hc
              exact ⟨m + 1, Nat.succ_le_succ hm, .step hs hcm⟩

theorem count_apps_left {t : Term} (as : List Term) {n : Nat}
    (h : Count (tApps t as) n) : ∃ m, m ≤ n ∧ Count t m := by
  induction as generalizing t with
  | nil => exact ⟨n, Nat.le_refl _, h⟩
  | cons a as ih =>
      obtain ⟨k, hk, hck⟩ := ih h
      obtain ⟨m, hm, hcm⟩ := count_app_left hck
      exact ⟨m, Nat.le_trans hm hk, hcm⟩

theorem pump_no_count {t u : Term} (as : List Term)
    (hs : weakStep t = some u) (hr : Betas u (tApps t as)) :
    ∀ n, ¬ Count t n := by
  intro n hn
  obtain ⟨k, hk, hck⟩ := head_decreases hn hs
  obtain ⟨j, hj, hcj⟩ := count_reduct k hck hr
  obtain ⟨i, hi, hci⟩ := count_apps_left as hcj
  have he := count_unique hn hci
  omega

theorem pump_no_normal_form {t u : Term} (as : List Term)
    (hs : weakStep t = some u) (hr : Betas u (tApps t as)) : ¬ HasNormalForm t := by
  intro hn
  obtain ⟨n, hcn⟩ := hasNormalForm_count hn
  exact pump_no_count as hs hr n hcn

theorem pump_apps_no_normal_form {t u : Term} (as tail : List Term)
    (hs : weakStep t = some u) (hr : Betas u (tApps t as)) :
    ¬ HasNormalForm (tApps t tail) := by
  intro hn
  obtain ⟨n, hcn⟩ := hasNormalForm_count hn
  obtain ⟨m, hm, hcm⟩ := count_apps_left tail hcn
  exact pump_no_count as hs hr m hcm

theorem family_no_count (f g : Term) (next : Term → Term)
    (hs : weakStep f = some g)
    (hr : ∀ x, Betas (.app g x) (.app f (next x))) :
    ∀ n x, ¬ Count (.app f x) n := by
  intro n
  induction n using Nat.strongRecOn with
  | ind n ih =>
      intro x hn
      obtain ⟨k, hk, hck⟩ := head_decreases hn (weak_app hs x)
      obtain ⟨j, hj, hcj⟩ := count_reduct k hck (hr x)
      exact ih j (by omega) (next x) hcj

theorem identity_has_normal_form {e : Term} (he : IsSelfInterpreter e) :
    HasNormalForm (.app (.app e (.var 1)) (SelfintControl.quoteI (.var 0))) := by
  obtain ⟨u, hu, ht⟩ := SelfintControl.identity_contract he (.var 1) (.var 0)
  have hn : NormalForm (.app (.app (.var 1) churchFalse) (.var 0)) :=
    fun _ hb => nft_no_beta (by decide) hb
  have hx := normalForm_betas_eq hn ht
  subst u
  exact ⟨_, hu, hn⟩

theorem not_selfint_pump {e t u : Term} (as tail : List Term)
    (hs : weakStep t = some u) (hr : Betas u (tApps t as))
    (hp : Betas (.app (.app e (.var 1)) (SelfintControl.quoteI (.var 0)))
      (tApps t tail)) : ¬ IsSelfInterpreter e := by
  intro he
  exact pump_apps_no_normal_form as tail hs hr
    (betas_preserve_hasNormalForm hp (identity_has_normal_form he))

end Blc.Round3Floor38
/- Kernel-replayed fixed evidence for floor38. Generated only from the
13 explicit residual terms and displayed parametric identities. -/

namespace Blc.Round3Floor38
open Term SelfintSharp SelfintLowerBound WeakHeadClock
set_option maxRecDepth 100000
set_option maxHeartbeats 12000000

def e448 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0))))

theorem closed_448 : Closed e448 := by decide

theorem length_448 : (blcCode e448).length = 37 := by decide

theorem initial_448 : replay [[]] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0)))) = some (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0)))) := by decide

def e449 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))

theorem closed_449 : Closed e449 := by decide

theorem length_449 : (blcCode e449).length = 37 := by decide

theorem initial_449 : replay [[]] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))) = some (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))) := by decide

def e454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 0))))

theorem closed_454 : Closed e454 := by decide

theorem length_454 : (blcCode e454).length = 37 := by decide

theorem initial_454 : replay [[]] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 0)))) = some (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 0)))) := by decide

def e455 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))

theorem closed_455 : Closed e455 := by decide

theorem length_455 : (blcCode e455).length = 37 := by decide

theorem initial_455 : replay [[]] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))) = some (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))) := by decide

def e460 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))))

theorem closed_460 : Closed e460 := by decide

theorem length_460 : (blcCode e460).length = 37 := by decide

theorem initial_460 : replay [[]] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0)))) = some (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0)))) := by decide

def e461 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))

theorem closed_461 : Closed e461 := by decide

theorem length_461 : (blcCode e461).length = 37 := by decide

theorem initial_461 : replay [[]] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))) = some (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))) := by decide

def e466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))))

theorem closed_466 : Closed e466 := by decide

theorem length_466 : (blcCode e466).length = 37 := by decide

theorem initial_466 : replay [[]] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0)))) = some (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0)))) := by decide

def e467 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))

theorem closed_467 : Closed e467 := by decide

theorem length_467 : (blcCode e467).length = 37 := by decide

theorem initial_467 : replay [[]] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))) = some (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))) := by decide

def e472 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0))))

theorem closed_472 : Closed e472 := by decide

theorem length_472 : (blcCode e472).length = 37 := by decide

theorem initial_472 : replay [[]] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0)))) = some (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0)))) := by decide

def e473 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))

theorem closed_473 : Closed e473 := by decide

theorem length_473 : (blcCode e473).length = 37 := by decide

theorem initial_473 : replay [[]] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) = some (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) := by decide

def e478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0))))

theorem closed_478 : Closed e478 := by decide

theorem length_478 : (blcCode e478).length = 37 := by decide

theorem initial_478 : replay [[]] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0)))) = some (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0)))) := by decide

def e479 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))

theorem closed_479 : Closed e479 := by decide

theorem length_479 : (blcCode e479).length = 37 := by decide

theorem initial_479 : replay [[]] (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) = some (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) := by decide

def e572 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))

theorem closed_572 : Closed e572 := by decide

theorem length_572 : (blcCode e572).length = 37 := by decide

theorem initial_572 : replay [[]] (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) = some (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))) := by decide

theorem rank_N_a_0 : replay [[]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0))) (.var 0)) = some (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0)) := by decide

theorem rank_N_b_0 : replay [[]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.var 0)) = some (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) := by decide

theorem rank_J_0 : replay [[.left], []] (.app (.app (.lam (.lam (.app (.var 4) (.app (.var 1) (.var 0))))) (.var 1)) (.var 0)) = some (.app (.var 2) (.app (.var 1) (.var 0))) := by decide

theorem rank_N_a_1 : replay [[]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 0))) (.var 0)) = some (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 0)) := by decide

theorem rank_N_b_1 : replay [[]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.var 0)) = some (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) := by decide

theorem rank_J_1 : replay [[.left], []] (.app (.app (.lam (.lam (.app (.var 4) (.app (.var 0) (.var 1))))) (.var 1)) (.var 0)) = some (.app (.var 2) (.app (.var 0) (.var 1))) := by decide

theorem rank_N_a_4 : replay [[]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0))) (.var 0)) = some (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0)) := by decide

theorem rank_N_b_4 : replay [[]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.var 0)) = some (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) := by decide

theorem rank_J_4 : replay [[.left], []] (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 1))))) (.var 1)) (.var 0)) = some (.app (.var 0) (.app (.var 2) (.var 1))) := by decide

theorem rank_N_a_5 : replay [[]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0))) (.var 0)) = some (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0)) := by decide

theorem rank_N_b_5 : replay [[]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.var 0)) = some (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) := by decide

theorem rank_J_5 : replay [[.left], []] (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 4))))) (.var 1)) (.var 0)) = some (.app (.var 0) (.app (.var 1) (.var 2))) := by decide

theorem fusion_461 : replay [[], [], [.under, .left], [.under], [.under]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) = some (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.app (.lam (.lam (.app (.var 1) (.app (.var 4) (.var 0))))) (.var 0))))) := by decide

theorem F_rule_461 : replay [[.left], []] (.app (.app (.lam (.lam (.app (.app (.var 4) (.app (.var 4) (.var 1))) (.app (.lam (.lam (.app (.var 1) (.app (.var 6) (.var 0))))) (.var 0))))) (.var 1)) (.var 0)) = some (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.app (.lam (.lam (.app (.var 1) (.app (.var 4) (.var 0))))) (.var 0))) := by decide

theorem N_rule_461 : replay [[]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.var 0)) = some (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) := by decide

def f460 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0))))))

def g460 : Term := (.app (.app (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0))))) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0))))))

def p460 : Term := (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0)))))

theorem f460_closed : Closed f460 := by decide

theorem g460_closed : Closed g460 := by decide

theorem p460_closed : Closed p460 := by decide

theorem f460_first : weakStep f460 = some g460 := by decide

theorem growth_460 : replay [[.left], [.left, .left], [.left], [.left], []] (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0)))))) (.var 0)) = some (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0))))) (.var 0))) := by decide

theorem growth_460_rest : replay [[.left, .left], [.left], [.left], []] (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0))))) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0)))))) (.var 0)) = some (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0)))))) (.app (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0))))) (.var 0))) := by decide

theorem growth_460_all (x : Term) :
    Betas (.app g460 x) (.app f460 (.app p460 x)) := by
  have h := SelfintControl.betas_subst (replay_sound growth_460_rest) 0 x
  change Betas (substDec 0 x (.app g460 (.var 0)))
    (substDec 0 x (.app f460 (.app p460 (.var 0)))) at h
  simpa only [substDec, if_pos rfl, ite_true, shift_zero,
    substDec_closed _ _ f460_closed, substDec_closed _ _ g460_closed,
    substDec_closed _ _ p460_closed] using h

theorem no_count_460 (n : Nat) (x : Term) : ¬ Count (.app f460 x) n :=
  family_no_count f460 g460 (Term.app p460) f460_first growth_460_all n x

theorem prefix_460 : replay [[.left, .left], [.left, .left]] (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))) = some (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))) := by decide

theorem e460_not_selfinterpreter : ¬ IsSelfInterpreter e460 := by
  intro he
  have hn := betas_preserve_hasNormalForm (replay_sound prefix_460)
    (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  change Count (tApps (.app f460 (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))))
    [.var 1, SelfintControl.quoteI (.var 0)]) k at hk
  obtain ⟨m, hm, hcm⟩ := count_apps_left _ hk
  exact no_count_460 m _ hcm

def core466 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))))

def afterFirst466 : Term := (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0)))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))))

theorem first_466 : weakStep core466 = some afterFirst466 := by decide

def extras466 : List Term := [(.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0)))))))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))))]

def tail466 : List Term := [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem cycle_466 : replay [[.left, .left], [.left], [.left], [], [.left], [], []] afterFirst466 =
  some (tApps core466 extras466) := by decide

theorem prefix_466 : replay [[.left, .left], [.left, .left]]
  (.app (.app e466 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core466 tail466) := by decide

theorem e466_not_selfinterpreter : ¬ IsSelfInterpreter e466 :=
  not_selfint_pump extras466 tail466 first_466
    (replay_sound cycle_466) (replay_sound prefix_466)

def core467 : Term := (.app (.lam (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))

def afterFirst467 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))))))

theorem first_467 : weakStep core467 = some afterFirst467 := by decide

def extras467 : List Term := [(.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))), (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))))))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))))), (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))))))]

def tail467 : List Term := [(.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))), (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem cycle_467 : replay [[.left], [.left], [.left, .left], [.left, .left, .left], [.left, .left, .left, .right], [.left, .left, .left, .right, .under], [.left, .left, .left], [.left, .left], [.left, .left], [.left], [.left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .right], [.left, .left, .left, .left, .left, .right, .under], [.left, .left, .left, .left, .left], [.left, .left, .left, .left], [.left, .left, .left, .left, .right], [.left, .left, .left, .left]] afterFirst467 =
  some (tApps core467 extras467) := by decide

theorem prefix_467 : replay [[.left, .left], [.left, .left], [.left, .left], [.left, .left, .left], [.left, .left, .left, .right], [.left, .left, .left, .right, .under], [.left, .left, .left], [.left, .left], [.left, .left], [.left], [.left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .right], [.left, .left, .left, .left, .left, .right, .under], [.left, .left, .left, .left, .left], [.left, .left, .left, .left], [.left, .left, .left, .left, .right], [.left, .left, .left, .left]]
  (.app (.app e467 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core467 tail467) := by decide

theorem e467_not_selfinterpreter : ¬ IsSelfInterpreter e467 :=
  not_selfint_pump extras467 tail467 first_467
    (replay_sound cycle_467) (replay_sound prefix_467)

def core572 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))

def afterFirst572 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))) (.lam (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))) (.app (.var 0) (.var 1))))))

theorem first_572 : weakStep core572 = some afterFirst572 := by decide

def extras572 : List Term := [(.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))), (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))), (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))), (.lam (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.app (.var 0) (.var 1))))), (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))) (.app (.var 0) (.var 1))))), (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))) (.app (.var 0) (.var 1))))), (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))), (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))), (.lam (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))))))))) (.app (.var 0) (.var 1))))), (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))) (.app (.var 0) (.var 1))))), (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))), (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))), (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))), (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))), (.lam (.lam (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))) (.app (.var 0) (.var 1))))), (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))) (.app (.var 0) (.var 1)))))]

def tail572 : List Term := [(.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))), (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))), (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))), (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))), (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))), (.lam (.lam (.app (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))) (.app (.var 0) (.var 1))))), (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))))) (.app (.var 0) (.var 1))))), (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))))))), (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))) (.app (.var 0) (.var 1))))), (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))))))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2))))))))))))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))))) (.app (.var 0) (.var 1))))), (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.app (.var 0) (.app (.var 1) (.var 2)))))))))))))))) (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem cycle_572 : replay [[.right, .under, .under], [], [.right], [], [.right, .under, .under], [], [.right, .left], [.right], [], [.left], [.left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .right, .under, .under], [.left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .right], [.left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .right, .under, .under], [.left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .right, .left], [.left, .left, .left, .left, .left, .left, .right], [.left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .under], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .right], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .under], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .right, .right, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .right, .right, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .right, .right], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .right, .right, .right], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .right, .right, .right, .under, .right, .right, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .right, .right, .right, .under, .right, .right, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .right, .right, .right, .under, .right, .right, .left, .right], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .right, .right, .right, .under, .right, .right, .left, .right, .under, .right, .right, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .right, .right, .right, .under, .right, .right, .left, .right, .under, .right, .right], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .right, .right, .right, .under, .right, .right, .left, .right, .under, .right, .right, .right], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .right, .right, .right, .under, .right, .right, .left, .right, .under, .right, .right, .right, .under, .under, .right, .right, .right], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .under], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .under, .under], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .right], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left, .left]] afterFirst572 =
  some (tApps core572 extras572) := by decide

theorem prefix_572 : replay [[.left, .left], [.left, .left], [.left, .left, .left], [.left, .left, .left], [.left, .left, .left, .right, .under, .under], [.left, .left, .left], [.left, .left], [.left, .left, .right], [.left, .left], [.left, .left, .right, .under, .under], [.left, .left], [.left, .left, .left], [.left, .left, .left], [.left, .left, .left, .right, .under, .under], [.left, .left, .left], [.left, .left, .right], [.left, .left], [.left, .left, .right], [.left, .left, .right, .right, .left], [.left, .left, .right, .right], [.left, .left, .right, .right, .under, .right, .right], [.left, .left], [.left, .left, .left, .left], [.left, .left, .left, .left], [.left, .left, .left, .left, .right, .under, .under], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left, .left, .right], [.left, .left, .left, .right, .right], [.left, .left, .left], [.left, .left, .left, .left], [.left, .left, .left, .left, .right, .under, .under], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left, .left, .right], [.left, .left, .left, .right, .under, .right, .right], [.left, .left, .left], [.left, .left, .left, .right, .under, .under], [.left, .left, .left], [.left, .left, .left, .left], [.left, .left, .left, .left, .right, .under, .under], [.left, .left, .left, .left], [.left, .left, .left, .right], [.left, .left, .left], [.left, .left, .left, .right], [.left, .left, .left, .right, .right, .left, .left], [.left, .left, .left, .right, .right, .left], [.left, .left, .left, .right, .right], [.left, .left, .left, .right, .right, .right], [.left, .left, .left, .right, .right, .right, .under, .right, .right, .left, .left, .left], [.left, .left, .left, .right, .right, .right, .under, .right, .right, .left, .left], [.left, .left, .left, .right, .right, .right, .under, .right, .right, .left, .left, .right], [.left, .left, .left, .right, .right, .right, .under, .right, .right, .left, .left, .right, .under, .right, .right, .left, .left], [.left, .left, .left, .right, .right, .right, .under, .right, .right, .left, .left, .right, .under, .right, .right, .left], [.left, .left, .left, .right, .right, .right, .under, .right, .right, .left, .left, .right, .under, .right, .right, .left, .right], [.left, .left, .left, .right, .right, .right, .under, .right, .right, .left, .left, .right, .under, .right, .right, .left, .right, .under, .right, .right, .left], [.left, .left, .left, .right, .right, .right, .under, .right, .right, .left, .left, .right, .under, .right, .right, .left, .right, .under, .right, .right], [.left, .left, .left, .right, .right, .right, .under, .right, .right, .left, .left, .right, .under, .right, .right, .left, .right, .under, .right, .right, .right], [.left, .left, .left, .right, .right, .right, .under, .right, .right, .left, .left, .right, .under, .right, .right, .left, .right, .under, .right, .right, .right, .under, .under, .right, .right, .right], [.left, .left, .left], [.left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .right, .under, .under], [.left, .left, .left, .left, .left], [.left, .left, .left, .left], [.left, .left, .left, .left, .right, .right], [.left, .left, .left, .left], [.left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .right, .under, .under], [.left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .right], [.left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .right, .under, .under], [.left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .right, .left], [.left, .left, .left, .left, .left, .left, .right], [.left, .left, .left, .left, .left, .left], [.left, .left, .left, .left, .left, .left, .left]]
  (.app (.app e572 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core572 tail572) := by decide

theorem e572_not_selfinterpreter : ¬ IsSelfInterpreter e572 :=
  not_selfint_pump extras572 tail572 first_572
    (replay_sound cycle_572) (replay_sound prefix_572)

end Blc.Round3Floor38
/- The abstract rank invariant realized as beta reduction: eight complete
non-interpreter theorems, with no inventory or global-bound axiom. -/

namespace Blc.Round3Floor38
open Term SelfintSharp SelfintLowerBound WeakHeadClock
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

def rhs : Order → Term → Term → Term → Term
  | .xyz, x, y, z => .app x (.app y z)
  | .xzy, x, y, z => .app x (.app z y)
  | .zxy, x, y, z => .app z (.app x y)
  | .zyx, x, y, z => .app z (.app y x)

/-- Captures are closed in this realization. -/
def jT (order : Order) (x : Term) : Term :=
  .lam (.lam (rhs order x (.var 1) (.var 0)))

def nT (mode : Mode) (order : Order) : Term :=
  let j := .lam (.lam (rhs order (.var 2) (.var 1) (.var 0)))
  .lam (match mode with
    | .a => .app (.app (.var 0) j) (.var 0)
    | .b => .app (.var 0) (.app (.var 0) j))

theorem nT_closed (mode order) : Closed (nT mode order) := by
  cases mode <;> cases order <;> decide

theorem jT_closed (order) {x : Term} (hx : Closed x) : Closed (jT order x) := by
  have hh := closed_freeUnder hx 2
  cases order <;> simp [jT, rhs, Closed, FreeUnder, hh]

def realize (mode : Mode) (order : Order) : M → Term
  | .n => nT mode order
  | .j x => jT order (realize mode order x)
  | .ap f a => .app (realize mode order f) (realize mode order a)

theorem realize_closed (mode order) (x : M) : Closed (realize mode order x) := by
  induction x with
  | n => exact nT_closed _ _
  | j x ih => exact jT_closed _ ih
  | ap f a ihf iha => exact ⟨ihf, iha⟩

def Advance (t u : Term) : Prop := ∃ v, weakStep t = some v ∧ Betas v u

theorem advance_left {t u : Term} (h : Advance t u) (a : Term) :
    Advance (.app t a) (.app u a) := by
  obtain ⟨v, hv, hr⟩ := h
  exact ⟨_, weak_app hv a, betas_appL a hr⟩

theorem advance_apps {t u : Term} (h : Advance t u) (as : List Term) :
    Advance (tApps t as) (tApps u as) := by
  induction as generalizing t u with
  | nil => exact h
  | cons a as ih => exact ih (advance_left h a)

theorem nT_step (mode order) {x : Term} (hx : Closed x) :
    weakStep (.app (nT mode order) x) =
      some (match mode with
        | .a => .app (.app x (jT order x)) x
        | .b => .app x (.app x (jT order x))) := by
  cases mode <;> cases order <;>
    simp [nT, jT, rhs, weakStep, contract, substDec, shift_closed _ _ hx]

def j1 (order : Order) (x y : Term) : Term := .lam (rhs order x y (.var 0))

theorem jT_step1 (order) {x y : Term} (hx : Closed x) (hy : Closed y) :
    weakStep (.app (jT order x) y) = some (j1 order x y) := by
  cases order <;> simp [jT, j1, rhs, weakStep, contract, substDec,
    substDec_closed _ _ hx, shift_closed _ _ hy]

theorem jT_step2 (order) {x y z : Term} (hx : Closed x) (hy : Closed y) :
    weakStep (.app (j1 order x y) z) = some (rhs order x y z) := by
  cases order <;> simp [j1, rhs, weakStep, contract, substDec,
    substDec_closed _ _ hx, substDec_closed _ _ hy]

theorem advance_realize {mode order} {t u : M} (h : Red mode order t u) :
    Advance (realize mode order t) (realize mode order u) := by
  induction h with
  | n x =>
      have hs := nT_step mode order (realize_closed mode order x)
      cases mode <;>
        exact ⟨_, hs, by simp only [realize, nBody]; exact .refl _⟩
  | j x y z =>
      have hx := realize_closed mode order x
      have hy := realize_closed mode order y
      refine ⟨_, weak_app (jT_step1 order hx hy) _, ?_⟩
      have hs := jT_step2 (z := realize mode order z) order hx hy
      have hβ := weakStep_beta hs
      cases order <;>
        exact .head hβ (by simp only [realize, jBody, rhs]; exact .refl _)
  | left a h ih => exact advance_left ih _

theorem rank_zero_no_count (mode order) (n : Nat) :
    ∀ t : M, rank t = 0 → ¬ Count (realize mode order t) n := by
  induction n using Nat.strongRecOn with
  | ind n ih =>
      intro t hz hn
      obtain ⟨u, hu, hzu⟩ := zero_progress mode order hz
      obtain ⟨v, hv, hrest⟩ := advance_realize hu
      obtain ⟨k, hk, hck⟩ := head_decreases hn hv
      obtain ⟨j, hj, hcj⟩ := count_reduct k hck hrest
      exact ih j (by omega) u hzu hcj

def diagonal (n : Term) : Term := .app (.lam (.app (.var 0) (.var 0))) n

theorem rank_diagonal_not_selfinterpreter (mode order) :
    ¬ IsSelfInterpreter (diagonal (nT mode order)) := by
  intro he
  have hp : Betas
      (.app (.app (diagonal (nT mode order)) (.var 1)) (SelfintControl.quoteI (.var 0)))
      (tApps (realize mode order (.ap .n .n)) [.var 1, SelfintControl.quoteI (.var 0)]) :=
    .head (.appL _ (.appL _ (.beta _ _))) (.refl _)
  have hn := betas_preserve_hasNormalForm hp (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  obtain ⟨m, hm, hcm⟩ := count_apps_left _ hk
  exact rank_zero_no_count mode order m (.ap .n .n) rfl hcm

theorem e448_not_selfinterpreter : ¬ IsSelfInterpreter e448 :=
  rank_diagonal_not_selfinterpreter .a .xyz
theorem e449_not_selfinterpreter : ¬ IsSelfInterpreter e449 :=
  rank_diagonal_not_selfinterpreter .b .xyz
theorem e454_not_selfinterpreter : ¬ IsSelfInterpreter e454 :=
  rank_diagonal_not_selfinterpreter .a .xzy
theorem e455_not_selfinterpreter : ¬ IsSelfInterpreter e455 :=
  rank_diagonal_not_selfinterpreter .b .xzy
theorem e472_not_selfinterpreter : ¬ IsSelfInterpreter e472 :=
  rank_diagonal_not_selfinterpreter .a .zxy
theorem e473_not_selfinterpreter : ¬ IsSelfInterpreter e473 :=
  rank_diagonal_not_selfinterpreter .b .zxy
theorem e478_not_selfinterpreter : ¬ IsSelfInterpreter e478 :=
  rank_diagonal_not_selfinterpreter .a .zyx
theorem e479_not_selfinterpreter : ¬ IsSelfInterpreter e479 :=
  rank_diagonal_not_selfinterpreter .b .zyx

end Blc.Round3Floor38
/- Complete non-interpreter proof for residual 461. Closed active terms are
kept separate from a nonempty list of arbitrary trailing arguments. -/

namespace Blc.Round3Floor38.Protected461
open Term SelfintSharp SelfintLowerBound WeakHeadClock
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

def nn : Term := .lam (.app (.var 0) (.app (.var 0)
  (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))
def jj (x : Term) : Term := .lam (.lam (.app (.var 1) (.app x (.var 0))))
def ff (x : Term) : Term := .lam (.lam
  (.app (.app x (.app x (.var 1))) (.app (jj x) (.var 0))))

theorem nn_closed : Closed nn := by decide
theorem jj_closed {x : Term} (hx : Closed x) : Closed (jj x) := by
  have hh := closed_freeUnder hx 2
  simp [jj, Closed, FreeUnder, hh]
theorem ff_closed {x : Term} (hx : Closed x) : Closed (ff x) := by
  have h2 := closed_freeUnder hx 2
  have hj := closed_freeUnder (jj_closed hx) 2
  simp only [ff, Closed, FreeUnder]
  exact ⟨⟨h2, h2, by decide⟩, hj, by decide⟩

theorem n_step {x : Term} (hx : Closed x) :
    weakStep (.app nn x) = some (.app x (.app x (jj x))) := by
  simp [nn, jj, weakStep, contract, substDec, shift_closed _ _ hx]

theorem fusion {x : Term} (hx : Closed x) : Betas (.app nn (jj x)) (ff x) := by
  apply replay_sound (ps := [[], [], [.under, .left], [.under], [.under]])
  simp [replay, atPath, nn, jj, ff, contract, substDec, shift,
    substDec_closed _ _ hx, shift_closed _ _ hx]

theorem f_advance {x y : Term} (hx : Closed x) (hy : Closed y) (z : Term) :
    Advance (.app (.app (ff x) y) z)
      (.app (.app x (.app x y)) (.app (jj x) z)) := by
  let mid : Term := .lam (.app (.app x (.app x y)) (.app (jj x) (.var 0)))
  have h1 : weakStep (.app (ff x) y) = some mid := by
    simp [ff, mid, weakStep, contract, substDec,
      substDec_closed _ _ hx, substDec_closed _ _ (jj_closed hx),
      shift_closed _ _ hy]
  have h2 : weakStep (.app mid z) =
      some (.app (.app x (.app x y)) (.app (jj x) z)) := by
    simp [mid, weakStep, contract, substDec,
      substDec_closed _ _ hx, substDec_closed _ _ hy,
      substDec_closed _ _ (jj_closed hx)]
  exact ⟨_, weak_app h1 z, .head (weakStep_beta h2) (.refl _)⟩

inductive P where
  | n
  | f (x : P)
  | ap (f a : P)
  | aj (f x : P)
  deriving DecidableEq

def Can : P → Prop
  | .n => True
  | .f x => Can x
  | .ap f a => Can f ∧ Can a
  | .aj f x => Can f ∧ Can x ∧ f ≠ .n

def term : P → Term
  | .n => nn
  | .f x => ff (term x)
  | .ap f a => .app (term f) (term a)
  | .aj f x => .app (term f) (jj (term x))

theorem term_closed (x : P) : Closed (term x) := by
  induction x with
  | n => exact nn_closed
  | f x ih => exact ff_closed ih
  | ap f a ihf iha => exact ⟨ihf, iha⟩
  | aj f x ihf ihx => exact ⟨ihf, jj_closed ihx⟩

inductive Arg where | plain (x : P) | wrap (x : P)
def argTerm : Arg → Term
  | .plain x => term x
  | .wrap x => jj (term x)
def ArgCan : Arg → Prop
  | .plain x | .wrap x => Can x
def Allowed : P → Arg → Prop
  | .n, .wrap _ => False
  | _, _ => True

def smart (p : P) : Arg → P
  | .plain x => .ap p x
  | .wrap x => if p = .n then .f x else .aj p x

theorem smart_can {p : P} {a : Arg} (hp : Can p) (ha : ArgCan a) :
    Can (smart p a) := by
  cases a with
  | plain x => exact ⟨hp, ha⟩
  | wrap x =>
      simp only [smart]
      split
      · exact ha
      · exact ⟨hp, ha, ‹p ≠ P.n›⟩

theorem smart_reduces (p : P) (a : Arg) :
    Betas (.app (term p) (argTerm a)) (term (smart p a)) := by
  cases a with
  | plain x => exact .refl _
  | wrap x =>
      simp only [smart]
      split
      · rename_i h
        subst p
        exact fusion (term_closed x)
      · exact .refl _

theorem advance_then {t u v : Term} (h : Advance t u) (hr : Betas u v) :
    Advance t v := by
  obtain ⟨w, hw, hwu⟩ := h
  exact ⟨w, hw, betas_trans hwu hr⟩

/-- Decomposition never exposes N with a wrapped first argument: that
case was represented by F during canonicalization. -/
theorem progress (p : P) (a : Arg) (tail : List Term)
    (hp : Can p) (ha : ArgCan a) (hal : Allowed p a) (ht : tail ≠ []) :
    ∃ r s rest, Can r ∧ Can s ∧ rest ≠ [] ∧
      Advance (tApps (term p) (argTerm a :: tail))
        (tApps (term r) (term s :: rest)) := by
  induction p generalizing a tail with
  | n =>
      cases a with
      | wrap q => exact False.elim hal
      | plain q =>
          refine ⟨q, smart q (.wrap q), tail, ha, smart_can ha ha, ht, ?_⟩
          apply advance_apps (as := tail)
          apply advance_then ⟨_, n_step (term_closed q), .refl _⟩
          exact betas_appR (term q) (smart_reduces q (.wrap q))
  | f q ih =>
      cases tail with
      | nil => exact False.elim (ht rfl)
      | cons v vs =>
          have hay : Closed (argTerm a) := by
            cases a with
            | plain x => exact term_closed x
            | wrap x => exact jj_closed (term_closed x)
          refine ⟨q, smart q a, (.app (jj (term q)) v) :: vs,
            hp, smart_can hp ha, by simp, ?_⟩
          apply advance_apps (as := vs)
          apply advance_then (f_advance (term_closed q) hay v)
          exact betas_appL _ (betas_appR (term q) (smart_reduces q a))
  | ap f x ihf ihx =>
      exact ihf (.plain x) (argTerm a :: tail) hp.1 hp.2 (by cases f <;> trivial)
        (by simp)
  | aj f x ihf ihx =>
      have hall : Allowed f (.wrap x) := by
        cases f with
        | n => exact False.elim (hp.2.2 rfl)
        | f | ap | aj => trivial
      exact ihf (.wrap x) (argTerm a :: tail) hp.1 hp.2.1 hall (by simp)

theorem no_count (n : Nat) : ∀ (p q : P) (tail : List Term),
    Can p → Can q → tail ≠ [] →
    ¬ Count (tApps (term p) (term q :: tail)) n := by
  induction n using Nat.strongRecOn with
  | ind n ih =>
      intro p q tail hp hq ht hn
      have hal : Allowed p (.plain q) := by cases p <;> trivial
      obtain ⟨r, s, rest, hr, hs, hrest, v, hv, hbetas⟩ :=
        progress p (.plain q) tail hp hq hal ht
      obtain ⟨k, hk, hck⟩ := head_decreases hn hv
      obtain ⟨j, hj, hcj⟩ := count_reduct k hck hbetas
      exact ih j (by omega) r s rest hr hs hrest hcj

theorem e461_not_selfinterpreter : ¬ IsSelfInterpreter e461 := by
  intro he
  have hp : Betas
      (.app (.app e461 (.var 1)) (SelfintControl.quoteI (.var 0)))
      (tApps (term .n) [term .n, .var 1, SelfintControl.quoteI (.var 0)]) :=
    .head (.appL _ (.appL _ (.beta _ _))) (.refl _)
  have hn := betas_preserve_hasNormalForm hp (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  exact no_count k .n .n [.var 1, SelfintControl.quoteI (.var 0)]
    trivial trivial (by simp) hk

end Blc.Round3Floor38.Protected461
/- All thirteen explicit residuals are excluded against IsSelfInterpreter.
This list theorem is not an enumeration or a global size theorem. -/

namespace Blc.Round3Floor38

def residuals : List Term :=
  [e448, e449, e454, e455, e460, e461, e466, e467, e472, e473, e478, e479, e572]

theorem residuals_excluded (e : Term) (h : e ∈ residuals) : ¬ IsSelfInterpreter e := by
  simp only [residuals, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl
  · exact e448_not_selfinterpreter
  · exact e449_not_selfinterpreter
  · exact e454_not_selfinterpreter
  · exact e455_not_selfinterpreter
  · exact e460_not_selfinterpreter
  · exact Protected461.e461_not_selfinterpreter
  · exact e466_not_selfinterpreter
  · exact e467_not_selfinterpreter
  · exact e472_not_selfinterpreter
  · exact e473_not_selfinterpreter
  · exact e478_not_selfinterpreter
  · exact e479_not_selfinterpreter
  · exact e572_not_selfinterpreter


end Blc.Round3Floor38
/- The W/B grammar underlying the syntactic omega oracle. This proof is
independent of the engine: marked substitution preserves B, every B with
no marked free variables has a head step, and that step preserves B.
The app-left B rule also permits an unapplied B abstraction; its unmarked
formal parameter can be replaced by an arbitrary term. -/
namespace Blc.Round3Floor38.WGrammar38
open Term SelfintSharp SelfintLowerBound
set_option maxRecDepth 100000
set_option maxHeartbeats 12000000

abbrev Env := Nat → Bool
def empty : Env := fun _ => false
def lift (v : Bool) (m : Env) : Env
  | 0 => v
  | n+1 => m n
def insert (m : Env) (j : Nat) (v : Bool) : Env :=
  fun n => if n < j then m n else if n = j then v else m (n-1)

theorem insert_zero (m : Env) (v : Bool) : insert m 0 v = lift v m := by
  funext n
  cases n <;> simp [insert, lift]
theorem lift_insert (m : Env) (j : Nat) (v q : Bool) :
    lift q (insert m j v) = insert (lift q m) (j+1) v := by
  funext n
  cases n with
  | zero => simp [lift, insert]
  | succ n =>
      by_cases hl : n < j
      · have hls : n+1 < j+1 := by omega
        simp [lift, insert, hl, hls]
      · by_cases he : n = j
        · subst n; simp [lift, insert]
        · have hls : ¬ n+1 < j+1 := by omega
          have hpos : 0 < n := by omega
          cases n with
          | zero => omega
          | succ n => simp [lift, insert, hl, he, hls]
theorem lift_empty : lift false empty = empty := by
  funext n; cases n <;> rfl

mutual
  def W (m : Env) : Term → Prop
    | .var n => m n = true
    | .lam b => B (lift true m) b
    | .app _ _ => False
  def B (m : Env) : Term → Prop
    | .var _ => False
    | .lam b => B (lift false m) b
    | .app f a => B m f ∨ (W m f ∧ (W m a ∨ B m a))
end

mutual
  def decW (m : Env) : (t : Term) → Decidable (W m t)
    | .var n => inferInstanceAs (Decidable (m n = true))
    | .lam b => decB (lift true m) b
    | .app _ _ => isFalse (fun h => h)
  def decB (m : Env) : (t : Term) → Decidable (B m t)
    | .var _ => isFalse (fun h => h)
    | .lam b => decB (lift false m) b
    | .app f a =>
      let _ := decB m f
      let _ := decW m f
      let _ := decW m a
      let _ := decB m a
      inferInstanceAs (Decidable (_ ∨ (_ ∧ (_ ∨ _))))
end
instance (m : Env) (t : Term) : Decidable (W m t) := decW m t
instance (m : Env) (t : Term) : Decidable (B m t) := decB m t

theorem shift_preserves (t : Term) : ∀ (m : Env) (c : Nat) (v : Bool),
    (W m t → W (insert m c v) (shift 1 c t)) ∧
    (B m t → B (insert m c v) (shift 1 c t)) := by
  induction t with
  | var n =>
      intro m c v
      constructor
      · intro h
        by_cases hn : n ≥ c
        · have hl : ¬ n+1 < c := by omega
          have he : n+1 ≠ c := by omega
          simpa [W, shift, insert, hn, hl, he] using h
        · have hl : n < c := by omega
          simpa [W, shift, insert, hn, hl] using h
      · intro h; exact h.elim
  | lam b ih =>
      intro m c v
      constructor
      · intro h
        change B (lift true (insert m c v)) (shift 1 (c+1) b)
        rw [lift_insert]
        exact (ih (lift true m) (c+1) v).2 h
      · intro h
        change B (lift false (insert m c v)) (shift 1 (c+1) b)
        rw [lift_insert]
        exact (ih (lift false m) (c+1) v).2 h
  | app f a ihf iha =>
      intro m c v
      constructor
      · intro h; exact h.elim
      · intro h
        rcases h with hf | ⟨hf, ha⟩
        · exact Or.inl ((ihf m c v).2 hf)
        · refine Or.inr ⟨(ihf m c v).1 hf, ?_⟩
          rcases ha with ha | ha
          · exact Or.inl ((iha m c v).1 ha)
          · exact Or.inr ((iha m c v).2 ha)

theorem shift_zero (m : Env) (v : Bool) {a : Term} (h : W m a ∨ B m a) :
    W (lift v m) (shift 1 0 a) ∨ B (lift v m) (shift 1 0 a) := by
  rw [← insert_zero]
  rcases h with h | h
  · exact Or.inl ((shift_preserves a m 0 v).1 h)
  · exact Or.inr ((shift_preserves a m 0 v).2 h)

theorem subst_preserves (t : Term) : ∀ (m : Env) (j : Nat) (v : Bool) (a : Term),
    (v = true → W m a ∨ B m a) →
    (W (insert m j v) t → W m (substDec j a t) ∨ B m (substDec j a t)) ∧
    (B (insert m j v) t → B m (substDec j a t)) := by
  induction t with
  | var n =>
      intro m j v a ha
      constructor
      · intro h
        by_cases he : n = j
        · subst n
          have hv : v = true := by simpa [W, insert] using h
          simpa [substDec] using ha hv
        · by_cases hg : n > j
          · have hl : ¬ n < j := by omega
            apply Or.inl
            simpa [W, substDec, insert, he, hg, hl] using h
          · have hl : n < j := by omega
            apply Or.inl
            simpa [W, substDec, insert, he, hg, hl] using h
      · intro h; exact h.elim
  | lam b ih =>
      intro m j v a ha
      constructor
      · intro h
        apply Or.inl
        change B (lift true m) (substDec (j+1) (shift 1 0 a) b)
        apply (ih (lift true m) (j+1) v (shift 1 0 a)
          (fun hv => shift_zero m true (ha hv))).2
        simpa only [W, lift_insert] using h
      · intro h
        change B (lift false m) (substDec (j+1) (shift 1 0 a) b)
        apply (ih (lift false m) (j+1) v (shift 1 0 a)
          (fun hv => shift_zero m false (ha hv))).2
        simpa only [B, lift_insert] using h
  | app f b ihf ihb =>
      intro m j v a ha
      constructor
      · intro h; exact h.elim
      · intro h
        rcases h with hf | ⟨hf, hb⟩
        · exact Or.inl ((ihf m j v a ha).2 hf)
        · rcases (ihf m j v a ha).1 hf with hf | hf
          · refine Or.inr ⟨hf, ?_⟩
            rcases hb with hb | hb
            · exact (ihb m j v a ha).1 hb
            · exact Or.inr ((ihb m j v a ha).2 hb)
          · exact Or.inl hf

theorem contract_marked {m : Env} {b a : Term}
    (hb : B (lift true m) b) (ha : W m a ∨ B m a) : B m (contract b a) := by
  apply (subst_preserves b m 0 true a (fun _ => ha)).2
  simpa only [insert_zero] using hb
theorem contract_unmarked {m : Env} {b : Term}
    (hb : B (lift false m) b) (a : Term) : B m (contract b a) := by
  apply (subst_preserves b m 0 false a (by intro h; cases h)).2
  simpa only [insert_zero] using hb

theorem progress (t : Term) : B empty t → ∃ u, headStep t = some u ∧ B empty u := by
  induction t with
  | var n => intro h; exact h.elim
  | lam b ih =>
      intro h
      have hb : B empty b := by simpa only [B, lift_empty] using h
      obtain ⟨u, hu, hb⟩ := ih hb
      refine ⟨.lam u, ?_, ?_⟩
      · simp only [headStep, hu, Option.map_some]
      · simpa only [B, lift_empty] using hb
  | app f a ihf iha =>
      intro h
      rcases h with hf | ⟨hf, ha⟩
      · cases f with
        | var n => exact hf.elim
        | lam b => exact ⟨_, rfl, contract_unmarked hf a⟩
        | app g b =>
            obtain ⟨u, hu, hb⟩ := ihf hf
            exact ⟨.app u a, by simp only [headStep] at hu ⊢; rw [hu]; rfl, Or.inl hb⟩
      · cases f with
        | var n => cases hf
        | lam b => exact ⟨_, rfl, contract_marked hf ha⟩
        | app g b => exact hf.elim

theorem head_preserves {t u : Term} (ht : B empty t) (hs : headStep t = some u) :
    B empty u := by
  obtain ⟨v, hv, hb⟩ := progress t ht
  have he := Option.some.inj (hv.symm.trans hs)
  subst u
  exact hb
theorem steps_preserve (n : Nat) {t u : Term} (ht : B empty t)
    (hs : headSteps n t = some u) : B empty u := by
  induction n generalizing t with
  | zero => cases hs; exact ht
  | succ n ih =>
      simp only [headSteps, Option.bind_eq_some_iff] at hs
      obtain ⟨v, hv, hrest⟩ := hs
      exact ih (head_preserves ht hv) hrest
theorem no_normal_form {t : Term} (ht : B empty t) : ¬ HasNormalForm t := by
  intro hn
  obtain ⟨n, u, hs, hu⟩ := hasNormalForm_headTerminates hn
  obtain ⟨v, hv, hb⟩ := progress u (steps_preserve n ht hs)
  simp [hu] at hv
theorem not_selfinterpreter {e : Term} (h : B empty e) : ¬ IsSelfInterpreter e := by
  intro he
  exact no_normal_form
    (t := .app (.app e (.var 1)) (SelfintControl.quoteI (.var 0)))
    (Or.inl (Or.inl h)) (identity_has_normal_form he)

end Blc.Round3Floor38.WGrammar38
