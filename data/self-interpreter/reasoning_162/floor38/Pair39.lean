/- A nonempty pair of active atoms survives; rigid trailing arguments
never become the selected head. This treats the literal-39 residual 180. -/
import RankRealization
namespace Blc.Round3Floor38.Pair39
open Term SelfintSharp SelfintLowerBound WeakHeadClock

def n : Term := .lam (.app (.var 0)
  (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))
def j (x : Term) : Term :=
  .lam (.app (.app (shift 1 0 x) (.var 0)) (.var 2))

theorem n_step (x : Term) : weakStep (.app n x) = some (.app x (j x)) := by
  rfl
theorem j_step (x y : Term) :
    weakStep (.app (j x) y) = some (.app (.app x y) (.var 1)) := by
  simp [j, weakStep, contract, substDec, substDec_shift]

inductive Atom where | n | j (x : Atom)
def term : Atom → Term
  | .n => n
  | .j x => j (term x)

theorem no_count (k : Nat) : ∀ f a : Atom, ¬ Count (.app (term f) (term a)) k := by
  induction k using Nat.strongRecOn with
  | ind k ih =>
      intro f a hk
      cases f with
      | n =>
          obtain ⟨l, hl, hcl⟩ := head_decreases hk (n_step (term a))
          exact ih l hl a (.j a) hcl
      | j x =>
          obtain ⟨l, hl, hcl⟩ := head_decreases hk (j_step (term x) (term a))
          obtain ⟨m, hm, hcm⟩ := count_app_left hcl
          exact ih m (by omega) x a hcm

theorem not_selfint_prefix {e : Term} (f a : Atom) (tail : List Term)
    (hp : Betas (.app (.app e (.var 1)) (SelfintControl.quoteI (.var 0)))
      (tApps (.app (term f) (term a)) tail)) : ¬ IsSelfInterpreter e := by
  intro he
  have hn := betas_preserve_hasNormalForm hp (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  obtain ⟨m, hm, hcm⟩ := count_apps_left tail hk
  exact no_count m f a hcm

#print axioms not_selfint_prefix
end Blc.Round3Floor38.Pair39
