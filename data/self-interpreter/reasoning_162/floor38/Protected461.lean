/- Complete non-interpreter proof for residual 461. Closed active terms are
kept separate from a nonempty list of arbitrary trailing arguments. -/
import RankRealization

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
