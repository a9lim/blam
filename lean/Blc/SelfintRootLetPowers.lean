/-
Algebraic collapse of a closed family of pre-stream handoffs.

J = lambda x. x (lambda y. x), and A_n = lambda x. x^n J.
For every m,n, A_m A_n reduces to J; for n>0, J A_n reduces to A_n.
Consequently an arbitrary finite application tree over J and positive A_n
reduces to J or one of its A_n leaves. A leading rigid operand is then
forced before the eventual stream, so the entire family fails the reader
laws. Separately, (lambda x.x x) A_n ->* J gives a strict source
simplification at ANY context, saving exactly 12+4n weighted bits.

These are unbounded symbolic theorems, not a finite-source classification.
The final three concrete instances close pending catalogue IDs 4995--4997
in data/self-interpreter/reasoning_class/pending/X_REMAINING.tsv. They do
not close the remaining root-let reader bound. All variables are 0-based.
-/
import Blc.SelfintNestedLets
namespace Blc.SelfintRootLetPowers
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

def J : Term := .lam (.app (.var 0) (.lam (.var 1)))
def iter (f : Term) : Nat → Term → Term
  | 0, a => a
  | n+1, a => .app f (iter f n a)
def power (n : Nat) : Term := .lam (iter (.var 0) n J)
def diagonal (n : Nat) : Term := .app (.lam (.app (.var 0) (.var 0))) (power n)

theorem J_idempotent : Betas (.app J J) J :=
  headSteps_beta_star (by decide : headSteps 3 (.app J J) = some J)

theorem iter_subst (f a : Term) (n : Nat) (k : Nat) (s : Term) :
    substDec k s (iter f n a) = iter (substDec k s f) n (substDec k s a) := by
  induction n with
  | zero => rfl
  | succ n ih => simp only [iter,substDec,ih]

theorem J_subst (k : Nat) (s : Term) : substDec k s J=J := by
  simp [J,substDec]

theorem power_apply (n : Nat) (a : Term) :
    Beta (.app (power n) a) (iter a n J) := by
  have h := Beta.beta (iter (.var 0) n J) a
  simpa only [power,contract,iter_subst,substDec,if_true,J_subst] using h

theorem iter_fixed {f a : Term} (h : Betas (.app f a) a) (n : Nat) :
    Betas (iter f n a) a := by
  induction n with
  | zero => exact .refl _
  | succ n ih => exact betas_trans (betas_appR f ih) h

theorem power_on_J (n : Nat) : Betas (.app (power n) J) J :=
  .head (power_apply n J) (iter_fixed J_idempotent n)

/-- Every two iterators collapse to J, regardless of their exponents. -/
theorem power_pair (m n : Nat) : Betas (.app (power m) (power n)) J :=
  .head (power_apply m (power n)) (iter_fixed (power_on_J n) m)

theorem diagonal_reduces (n : Nat) : Betas (diagonal n) J :=
  .head (Beta.beta _ _) (power_pair n n)


/-- K a, formed hygienically even when a has free variables. -/
def keep (a : Term) : Term := .lam (shift 1 0 a)

theorem keep_apply (a b : Term) : Beta (.app (keep a) b) a := by
  simpa only [keep,contract,substDec_shift] using Beta.beta (shift 1 0 a) b

theorem J_apply (a : Term) : Beta (.app J a) (.app a (keep a)) := by
  simpa only [J,keep,contract,substDec,if_true] using
    Beta.beta (.app (.var 0) (.lam (.var 1))) a

theorem J_power_pos (n : Nat) : Betas (.app J (power (n+1))) (power (n+1)) :=
  .head (J_apply _) (.head (power_apply _ _) (.head (keep_apply _ _) (.refl _)))

/-- Only an exponent and the distinguished idempotent survive. -/
inductive Value where
  | j : Value
  | power : Nat → Value

def Value.term : Value → Term
  | .j => J
  | .power n => SelfintRootLetPowers.power (n+1)

def Value.mul : Value → Value → Value
  | .j, b => b
  | .power _, _ => .j

theorem Value.mul_reduces (a b : Value) :
    Betas (.app a.term b.term) (a.mul b).term := by
  cases a with
  | j => cases b with
    | j => exact J_idempotent
    | power n => exact J_power_pos n
  | power m => cases b with
    | j => exact power_on_J (m+1)
    | power n => exact power_pair (m+1) (n+1)

/-- Finite application trees, with no bound on size or number of distinct
    exponents. This is not a candidate enumeration. -/
inductive Orbit : Term → Prop where
  | value (v : Value) : Orbit v.term
  | app {f a : Term} : Orbit f → Orbit a → Orbit (.app f a)

theorem orbit_reduces {t : Term} (h : Orbit t) :
    ∃ v : Value, Betas t v.term := by
  induction h with
  | value v => exact ⟨v,.refl _⟩
  | app hf ha ihf iha =>
    obtain ⟨f,hf⟩ := ihf
    obtain ⟨a,ha⟩ := iha
    exact ⟨f.mul a,betas_trans (betas_appL _ hf)
      (betas_trans (betas_appR _ ha) (f.mul_reduces a))⟩

theorem reader_betas {t u : Term} (h : Reader t) (hb : Betas t u) : Reader u := by
  induction hb with
  | refl => exact h
  | head hs htail ih => exact ih (h.beta hs)

theorem iter_rigid (v n : Nat) :
    Rigid (iter (.var v) (n+1) J) := by
  exact .app _ (.var v)

theorem value_not_reader_after_rigid (a : Value) (v : Nat) (cs : List Term) :
    ¬ Reader (spine a.term (.var v :: cs)) := by
  intro hr
  cases a with
  | j =>
    have hb := SelfintSourceCost.spine_beta (J_apply (.var v)) cs
    exact reader_not_rigid (hr.beta hb)
      (SelfintFlatPrefix.rigid_spine_of (.app _ (.var v)) cs)
  | power n =>
    have hb := SelfintSourceCost.spine_beta (power_apply (n+1) (.var v)) cs
    exact reader_not_rigid (hr.beta hb)
      (SelfintFlatPrefix.rigid_spine_of (iter_rigid v n) cs)

/-- Every member of the entire closed orbit forces a leading rigid operand
    before it can inspect the eventual stream. Thus no such stack is a
    reader, regardless of its remaining operands. -/
theorem orbit_not_reader_after_rigid {t : Term} (ht : Orbit t)
    (v : Nat) (cs : List Term) : ¬ Reader (spine t (.var v::cs)) := by
  intro hr
  obtain ⟨a,ha⟩ := orbit_reduces ht
  exact value_not_reader_after_rigid a v cs
    (reader_betas hr (betas_spine ha (.var v::cs)))

theorem diagonal_not_reader_after_rigid (n v : Nat) (cs : List Term) :
    ¬ Reader (spine (diagonal n) (.var v::cs)) := by
  intro hr
  exact value_not_reader_after_rigid .j v cs
    (reader_betas hr (betas_spine (diagonal_reduces n) (.var v::cs)))

theorem J_occ (k : Nat) : occ k J=0 := by simp [J,occ]

theorem iter_occ (f a : Term) (n k : Nat) :
    occ k (iter f n a)=n*occ k f+occ k a := by
  induction n with
  | zero => simp [iter]
  | succ n ih => simp [iter,occ,ih,Nat.succ_mul]; omega

theorem power_occ (n k : Nat) : occ k (power n)=0 := by
  simp [power,occ,iter_occ,J_occ]

theorem diagonal_occ (n k : Nat) : occ k (diagonal n)=0 := by
  simp [diagonal,occ,power_occ]

theorem J_weight (d : Nat) : weight d J=11 := by
  simp [J,weight]

theorem iter_weight (f a : Term) (n d : Nat) :
    weight d (iter f n a) = n*(2+weight d f)+weight d a := by
  induction n with
  | zero => simp [iter]
  | succ n ih => simp [iter,weight,ih,Nat.succ_mul]; omega

theorem power_weight (n d : Nat) : weight d (power n)=13+4*n := by
  simp [power,weight,iter_weight,J_weight,Nat.mul_comm]; omega

theorem diagonal_weight (n d : Nat) : weight d (diagonal n)=23+4*n := by
  simp [diagonal,weight,power_weight]; omega

theorem diagonal_scope (n k : Nat) : FreeUnder k (diagonal n) := by
  have hi : ∀ n, FreeUnder 1 (iter (.var 0) n J) := by
    intro n; induction n with
    | zero => decide
    | succ n ih => exact ⟨by decide,ih⟩
  have hc : FreeUnder 0 (diagonal n) := ⟨by decide,hi n⟩
  exact freeUnder_mono (by omega) hc

/-- A source-level strict simplification at arbitrary position. It neither
    bounds pre-stream expansion nor assumes an endpoint reader floor. -/
theorem no_minimum_diagonal_power (c : Context) (n : Nat) :
    ¬ MinimumReader (c.fill (diagonal n)) := by
  intro hm
  have hb := betas_context c (diagonal_reduces n)
  have hs : FreeUnder 2 (c.fill J) := betas_scope hb 2 hm.laws.scope
  have hl := laws_join hm.laws hs (join_symm (join_of_betas hb))
  have hj : occ 1 (c.fill J)=1 := by
    simpa only [occ_fill,J_occ,diagonal_occ] using hm.oneHole
  have hmin := hm.minimal _ hl hj
  simp only [weighted_fill,diagonal_weight,J_weight] at hmin
  omega

/-- The three original weight-45 sources with A_3 as their shared helper. -/
def pending4995 : Term := spine (diagonal 3) [.var 1,.var 0,.var 0]
def pending4996 : Term := spine (diagonal 3) [.var 0,.var 1,.var 0]
def pending4997 : Term := spine (diagonal 3) [.var 0,.var 0,.var 1]

theorem pending_weights :
    weight 0 pending4995=45 ∧ weight 0 pending4996=45 ∧ weight 0 pending4997=45 := by
  decide

theorem pending4995_not_reader : ¬ Reader pending4995 :=
  diagonal_not_reader_after_rigid 3 1 [.var 0,.var 0]

theorem pending4996_not_reader : ¬ Reader pending4996 :=
  diagonal_not_reader_after_rigid 3 0 [.var 1,.var 0]

theorem pending4997_not_reader : ¬ Reader pending4997 :=
  diagonal_not_reader_after_rigid 3 0 [.var 0,.var 1]

#print axioms orbit_not_reader_after_rigid
#print axioms power_pair
#print axioms no_minimum_diagonal_power
end Blc.SelfintRootLetPowers
