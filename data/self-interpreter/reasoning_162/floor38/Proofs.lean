/- General rank invariant and clock lemmas for the floor38 lane.
RankRealization supplies the kernel-checked realization of this calculus.
The inventory theorem remains handwritten: no global size theorem is
asserted in this file. -/
import Blc.SelfintSharp
import Blc.WeakHeadClock
import Blc.Wire

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
