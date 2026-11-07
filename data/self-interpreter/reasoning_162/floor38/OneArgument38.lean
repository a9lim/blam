/- All twelve one_a_zero_a size-38 layouts: a one-argument closed grammar. -/
import Residuals

namespace Blc.Round3Floor38.OneArgument38
open Term SelfintSharp SelfintLowerBound WeakHeadClock
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

inductive Perm where | abc | acb | bac | bca | cab | cba
  deriving DecidableEq
def branch {α : Type} (ap : α → α → α) (left : Bool) (x y z : α) : α :=
  if left then ap (ap x y) z else ap x (ap y z)
def tri {α : Type} (ap : α → α → α) (p : Perm) (left : Bool) (x y z : α) : α :=
  match p with
  | .abc => branch ap left x y z
  | .acb => branch ap left x z y
  | .bac => branch ap left y x z
  | .bca => branch ap left y z x
  | .cab => branch ap left z x y
  | .cba => branch ap left z y x

def nn (p : Perm) (left : Bool) : Term :=
  .lam (.app (.var 0) (.lam (.app (.var 1)
    (.lam (tri Term.app p left (.var 2) (.var 1) (.var 0))))))
def bb (p : Perm) (left : Bool) (x : Term) : Term :=
  .lam (.app x (.lam (tri Term.app p left x (.var 1) (.var 0))))
def cc (p : Perm) (left : Bool) (x y : Term) : Term :=
  .lam (tri Term.app p left x y (.var 0))

theorem nn_closed (p left) : Closed (nn p left) := by
  cases p <;> cases left <;> decide
theorem bb_closed (p left) {x : Term} (hx : Closed x) : Closed (bb p left x) := by
  have h1 := closed_freeUnder hx 1
  have h2 := closed_freeUnder hx 2
  cases p <;> cases left <;> simp [bb, tri, branch, Closed, FreeUnder, h1, h2]
theorem cc_closed (p left) {x y : Term} (hx : Closed x) (hy : Closed y) :
    Closed (cc p left x y) := by
  have h1 := closed_freeUnder hx 1
  have h2 := closed_freeUnder hy 1
  cases p <;> cases left <;> simp [cc, tri, branch, Closed, FreeUnder, h1, h2]
theorem n_step (p left) {x : Term} (hx : Closed x) :
    weakStep (.app (nn p left) x) = some (.app x (bb p left x)) := by
  cases p <;> cases left <;>
    simp [nn, bb, tri, branch, weakStep, contract, substDec, shift_closed _ _ hx]
theorem b_step (p left) {x y : Term} (hx : Closed x) (hy : Closed y) :
    weakStep (.app (bb p left x) y) = some (.app x (cc p left x y)) := by
  cases p <;> cases left <;>
    simp [bb, cc, tri, branch, weakStep, contract, substDec,
      substDec_closed _ _ hx, shift_closed _ _ hy]
theorem c_step (p left) {x y : Term} (hx : Closed x) (hy : Closed y) (z : Term) :
    weakStep (.app (cc p left x y) z) = some (tri Term.app p left x y z) := by
  cases p <;> cases left <;>
    simp [cc, tri, branch, weakStep, contract, substDec,
      substDec_closed _ _ hx, substDec_closed _ _ hy]

inductive M where
  | n
  | b (x : M)
  | c (x y : M)
  | ap (f a : M)
def term (p : Perm) (left : Bool) : M → Term
  | .n => nn p left
  | .b x => bb p left (term p left x)
  | .c x y => cc p left (term p left x) (term p left y)
  | .ap f a => .app (term p left f) (term p left a)
theorem term_closed (p left) (t : M) : Closed (term p left t) := by
  induction t with
  | n => exact nn_closed p left
  | b x ih => exact bb_closed p left ih
  | c x y ihx ihy => exact cc_closed p left ihx ihy
  | ap f a ihf iha => exact ⟨ihf, iha⟩

theorem term_tri (p left) (x y z : M) :
    term p left (tri M.ap p left x y z) =
      tri Term.app p left (term p left x) (term p left y) (term p left z) := by
  cases p <;> cases left <;> rfl
theorem tri_nonempty (p left) (x y z : M) :
    ∃ r s, tri M.ap p left x y z = .ap r s := by
  cases p <;> cases left <;> exact ⟨_, _, rfl⟩

theorem progress (p left) (f a : M) : ∃ r s,
    Advance (term p left (.ap f a)) (term p left (.ap r s)) := by
  induction f generalizing a with
  | n => exact ⟨a, .b a, _, n_step p left (term_closed p left a), .refl _⟩
  | b x ih => exact ⟨x, .c x a, _,
      b_step p left (term_closed p left x) (term_closed p left a), .refl _⟩
  | c x y ihx ihy =>
      have hs := c_step p left (term_closed p left x) (term_closed p left y) (term p left a)
      obtain ⟨r, s, he⟩ := tri_nonempty p left x y a
      refine ⟨r, s, _, hs, ?_⟩
      rw [← term_tri, he]
      exact .refl _
  | ap f x ihf ihx =>
      obtain ⟨r, s, h⟩ := ihf x
      exact ⟨.ap r s, a, advance_left h (term p left a)⟩

theorem no_count (p left) (n : Nat) : ∀ f a : M,
    ¬ Count (term p left (.ap f a)) n := by
  induction n using Nat.strongRecOn with
  | ind n ih =>
      intro f a hn
      obtain ⟨r, s, v, hv, hrest⟩ := progress p left f a
      obtain ⟨k, hk, hck⟩ := head_decreases hn hv
      obtain ⟨j, hj, hcj⟩ := count_reduct k hck hrest
      exact ih j (by omega) r s hcj

theorem excluded (p left) : ¬ IsSelfInterpreter (diagonal (nn p left)) := by
  intro he
  have hp : Betas
      (.app (.app (diagonal (nn p left)) (.var 1)) (SelfintControl.quoteI (.var 0)))
      (tApps (term p left (.ap .n .n)) [.var 1, SelfintControl.quoteI (.var 0)]) :=
    .head (.appL _ (.appL _ (.beta _ _))) (.refl _)
  have hn := betas_preserve_hasNormalForm hp (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  obtain ⟨j, hj, hcj⟩ := count_apps_left _ hk
  exact no_count p left j .n .n hcj

#print axioms excluded
end Blc.Round3Floor38.OneArgument38
