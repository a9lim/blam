import Blc.SelfintClass

/- A finite reader with an unbounded live Church counter.
   Theorems below quantify over every unary length and arbitrary suffix N.
   This file proves beta reductions, not a theorem about every possible
   quotient of operational states. The exact clock is proved in REPORT.md. -/
namespace Blc.LoopLane
open Term SelfintControl SelfintClass

set_option maxRecDepth 10000
set_option maxHeartbeats 1000000
set_option linter.unusedSimpArgs false

def iT : Term := .lam (.var 0)
def oT : Term := .lam (.lam (.var 0))
def succT : Term := .lam (.lam (.lam
  (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))
def wT : Term := .lam (.lam (.lam
  (.app (.var 1) (.lam (.lam
    (.app (.app (.var 1) (.var 0))
      (.app (.app (.var 2) iT)
        (.app (.app (.app (.var 4) (.var 4)) (.var 0))
          (.app succT (.var 2))))))))))
def gT : Term := .app wT wT
def counter : Nat → Term
  | 0 => oT
  | n+1 => .app succT (counter n)
def unary (N : Term) : Nat → Term
  | 0 => pairT churchTrue N
  | n+1 => pairT churchFalse (unary N n)

theorem i_closed : Closed iT := by decide
theorem o_closed : Closed oT := by decide
theorem succ_closed : Closed succT := by decide
theorem g_closed : Closed gT := by decide
theorem counter_closed (n : Nat) : Closed (counter n) := by
  induction n with
  | zero => exact o_closed
  | succ n ih => exact ⟨succ_closed, ih⟩

@[simp] theorem subst_i (j : Nat) (s : Term) : substDec j s iT = iT :=
  substDec_closed j s i_closed
@[simp] theorem subst_o (j : Nat) (s : Term) : substDec j s oT = oT :=
  substDec_closed j s o_closed
@[simp] theorem subst_succ (j : Nat) (s : Term) : substDec j s succT = succT :=
  substDec_closed j s succ_closed
@[simp] theorem subst_g (j : Nat) (s : Term) : substDec j s gT = gT :=
  substDec_closed j s g_closed
@[simp] theorem subst_counter (j n : Nat) (s : Term) :
    substDec j s (counter n) = counter n :=
  substDec_closed j s (counter_closed n)

theorem counter_zero_generic :
    Betas (.app (.app oT iT) (.var 0)) (.var 0) :=
  headSteps_beta_star (by decide : headSteps 2 _ = some _)

theorem counter_succ_generic :
    Betas (.app (.app (.app succT (.var 0)) iT) (.var 1))
      (.app (.app (.var 0) iT) (.var 1)) :=
  headSteps_beta_star (by decide : headSteps 4 _ = some _)

theorem counter_identity (n : Nat) (x : Term) :
    Betas (.app (.app (counter n) iT) x) x := by
  induction n with
  | zero =>
      simpa only [counter, substDec, subst_i, subst_o, ↓reduceIte]
        using betas_subst counter_zero_generic 0 x
  | succ n ih =>
      have h := betas_subst (betas_subst counter_succ_generic 0 (counter n)) 0 x
      simp only [substDec, subst_succ, subst_i, subst_counter,
        Nat.reduceEqDiff, Nat.reduceLT, Nat.reduceSub, ↓reduceIte] at h
      exact betas_trans h ih

theorem g_zero_generic :
    Betas (.app (.app gT (pairT churchTrue (.var 0))) (.var 1)) (.var 0) :=
  headSteps_beta_star (by decide : headSteps 8 _ = some _)

theorem g_one_generic :
    Betas (.app (.app gT (pairT churchFalse (.var 0))) (.var 1))
      (.app (.app (.var 1) iT)
        (.app (.app gT (.var 0)) (.app succT (.var 1)))) :=
  headSteps_beta_star (by decide : headSteps 8 _ = some _)

theorem g_zero (n : Nat) (r : Term) :
    Betas (.app (.app gT (pairT churchTrue r)) (counter n)) r := by
  have h := betas_subst (betas_subst g_zero_generic 1 (counter n)) 0 r
  simpa only [subst_pairT, substDec_churchTrue, substDec, subst_g,
    subst_counter, Nat.reduceEqDiff, Nat.reduceGT, Nat.reduceLT, ↓reduceIte] using h

theorem g_one (n : Nat) (r : Term) :
    Betas (.app (.app gT (pairT churchFalse r)) (counter n))
      (.app (.app (counter n) iT)
        (.app (.app gT r) (counter (n+1)))) := by
  have h := betas_subst (betas_subst g_one_generic 1 (counter n)) 0 r
  simpa only [subst_pairT, substDec_churchFalse, substDec, subst_g,
    subst_i, subst_succ, subst_counter, counter, Nat.reduceEqDiff,
    Nat.reduceGT, Nat.reduceLT, ↓reduceIte] using h

/-- The deliberately delayed skip is correct at every unary length. -/
theorem slow_skip (m n : Nat) (N : Term) :
    Betas (.app (.app gT (unary N m)) (counter n)) N := by
  induction m generalizing n with
  | zero => exact g_zero n N
  | succ m ih =>
      exact betas_trans (g_one n (unary N m))
        (betas_trans (counter_identity n _) (ih (n+1)))

def slowR : Term := .lam
  (.app (.app (.app (.var 0) iT)
    (.lam (.app (.app (.var 1) (.lam (.var 3)))
      (.app (.app gT (.var 1)) oT)))) (.var 2))

theorem slow_scope : FreeUnder 2 slowR := by decide
theorem slow_price : cost slowR = 217 ∧ depth slowR = 1 ∧
    occ 1 slowR = 1 := by decide
@[simp] theorem subst_slow (s : Term) : substDec 2 s slowR = slowR :=
  substDec_of_freeUnder slowR 2 s slow_scope

theorem reader_zero_generic :
    Betas (.app slowR (pairT churchTrue (.var 2))) (.app (.var 2) (.var 1)) :=
  headSteps_beta_star (by decide : headSteps 5 _ = some _)

theorem reader_one_generic :
    Betas (.app slowR (pairT churchFalse (.var 2)))
      (.app (.app (.var 0) (.var 2))
        (.app (.app gT (pairT churchFalse (.var 2))) oT)) :=
  headSteps_beta_star (by decide : headSteps 8 _ = some _)

/-- Zero law, with rigid c=0, j=1 and any tail r. -/
theorem slow_reader_zero (r : Term) :
    Betas (.app slowR (pairT churchTrue r)) (.app r (.var 1)) := by
  simpa only [subst_pairT, substDec_churchTrue, substDec, subst_slow,
    Nat.reduceEqDiff, Nat.reduceGT, Nat.reduceLT, ↓reduceIte]
    using betas_subst reader_zero_generic 2 r

/-- Every variable law, with rigid c=0, j=1 and any suffix N. -/
theorem slow_reader_unary (n : Nat) (N : Term) :
    Betas (.app slowR (unary N (n+1)))
      (.app (.app (.var 0) (unary N n)) N) := by
  have h := betas_subst reader_one_generic 2 (unary N n)
  simp only [subst_pairT, substDec_churchFalse, substDec, subst_slow,
    subst_g, subst_o, Nat.reduceEqDiff, Nat.reduceLT, ↓reduceIte] at h
  exact betas_trans h (betas_appR _ (slow_skip (n+1) 0 N))

#print axioms slow_reader_zero
#print axioms slow_reader_unary
end Blc.LoopLane
