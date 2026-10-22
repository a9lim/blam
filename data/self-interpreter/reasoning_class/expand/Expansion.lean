import Blc.SelfintSourceCost

/- Concrete positive pre-stream expansion and an unbounded family of
   reader endpoints. This file does NOT prove the reader lower bound. -/
namespace Blc.Expand
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintWiden SelfintSourceCost

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def ident : Term := .lam (.var 0)

def payload : Nat → Term
  | 0 => ident
  | n+1 => .app (payload n) (payload n)

theorem payload_scope (n k : Nat) : FreeUnder k (payload n) := by
  induction n with
  | zero => simp [payload, ident, FreeUnder]
  | succ n ih => exact ⟨ih, ih⟩

theorem payload_reduce (n : Nat) : Betas (payload n) ident := by
  induction n with
  | zero => exact .refl _
  | succ n ih =>
    exact betas_trans (betas_app ih ih)
      (.head (show Beta (.app ident ident) ident from .beta _ _) (.refl _))

theorem payload_weight (n d : Nat) : weight d (payload n) + 2 = 6*2^n := by
  induction n with
  | zero => simp [payload, ident, weight]
  | succ n ih =>
    simp only [payload, weight, Nat.pow_succ]
    omega

def arm : Term := .lam (.app (.app (.var 1) (.lam (.var 3)))
  (.app (.app (.var 1) (.var 1)) (.var 0)))

def endpoint (n : Nat) : Term :=
  .lam (.app (.app (.app (.var 0) (payload n)) arm) (.var 2))

theorem endpoint_scope (n : Nat) : FreeUnder 2 (endpoint n) := by
  exact ⟨⟨⟨by decide, payload_scope n 3⟩, by decide⟩, by decide⟩

theorem endpoint_reduce (n : Nat) : Betas (endpoint n) reader162 := by
  exact betas_lam (betas_appL (.var 2)
    (betas_appL arm (betas_appR (.var 0) (payload_reduce n))))

theorem endpoint_full (n : Nat) : FullReader (endpoint n) :=
  FullReader.of_betas (endpoint_scope n) (endpoint_reduce n) reader162_fullReader

theorem endpoint_weight (n : Nat) : weight 0 (endpoint n) = 40+6*2^n := by
  have h := payload_weight n 1
  simp only [endpoint, arm, weight, Nat.reduceAdd, Nat.reduceEqDiff,
    ↓reduceIte, Nat.reduceMul]
  omega

def stepper : Term := .lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))
def seed : Term := .lam (.lam (.lam
  (.app (.app (.app (.var 0) (.var 2))
    (.lam (.app (.app (.var 1) (.lam (.var 5)))
      (.app (.app (.var 1) (.var 1)) (.var 0))))) (.var 1))))

def iter (n : Nat) (f a : Term) : Term := match n with
  | 0 => a
  | k+1 => .app f (iter k f a)

def numeral (n : Nat) : Term := .lam (.lam (iter n (.var 1) (.var 0)))

theorem subst_iter (n : Nat) (f a s : Term) (k : Nat) :
    substDec k s (iter n f a) = iter n (substDec k s f) (substDec k s a) := by
  induction n with
  | zero => rfl
  | succ n ih => simp [iter, substDec, ih]

theorem numeral_apply (n : Nat) (f a : Term) :
    Betas (.app (.app (numeral n) f) a) (iter n f a) := by
  have h1 : Beta (.app (numeral n) f)
      (.lam (iter n (shift 1 0 f) (.var 0))) := by
    simpa [numeral, contract, substDec, subst_iter] using
      (Beta.beta (.lam (iter n (.var 1) (.var 0))) f)
  have h2 : Beta (.app (.lam (iter n (shift 1 0 f) (.var 0))) a)
      (iter n f a) := by
    simpa [contract, subst_iter, substDec, substDec_shift] using
      (Beta.beta (iter n (shift 1 0 f) (.var 0)) a)
  exact .head (.appL a h1) (.head h2 (.refl _))

theorem stepper_apply (p x : Term) :
    Betas (.app (.app stepper p) x) (.app p (.app x x)) := by
  have h1 : Beta (.app stepper p)
      (.lam (.app (shift 1 0 p) (.app (.var 0) (.var 0)))) := by
    simpa [stepper, contract, substDec] using
      (Beta.beta (.lam (.app (.var 1) (.app (.var 0) (.var 0)))) p)
  have h2 : Beta
      (.app (.lam (.app (shift 1 0 p) (.app (.var 0) (.var 0)))) x)
      (.app p (.app x x)) := by
    simpa [contract, substDec, substDec_shift] using
      (Beta.beta (.app (shift 1 0 p) (.app (.var 0) (.var 0))) x)
  exact .head (.appL x h1) (.head h2 (.refl _))

theorem iter_payload (n m : Nat) (h : Term) :
    Betas (.app (iter n stepper h) (payload m))
      (.app h (payload (n+m))) := by
  induction n generalizing m with
  | zero => simpa [iter] using (Betas.refl (.app h (payload m)))
  | succ n ih =>
    have hs := stepper_apply (iter n stepper h) (payload m)
    have hi := ih (m+1)
    simpa [iter, payload, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
      betas_trans hs hi

theorem payload_shift (n d k : Nat) : shift d k (payload n) = payload n := by
  induction n with
  | zero => simp [payload, ident, shift]
  | succ n ih => simp [payload, shift, ih]

theorem seed_apply (n : Nat) :
    Betas (.app (.app seed (payload n)) (.var 1)) (endpoint n) := by
  have hp (k : Nat) (a : Term) : substDec k a (payload n) = payload n :=
    substDec_of_freeUnder _ _ _ (payload_scope n k)
  apply headSteps_beta_star (n := 2)
  simp [headSteps, headStep, seed, contract, substDec, endpoint, arm,
    payload_shift, hp, shift]

def literal (n : Nat) : Term := spine (numeral n) [stepper,seed,ident,.var 1]

theorem literal_head (n : Nat) : Betas (literal n) (endpoint n) := by
  have hnum := betas_appL (.var 1) (betas_appL ident (numeral_apply n stepper seed))
  have hit := betas_appL (.var 1) (iter_payload n 0 seed)
  have hseed := seed_apply n
  exact betas_trans hnum (betas_trans (by simpa [payload] using hit) hseed)

theorem numeral_scope (n k : Nat) : FreeUnder k (numeral n) := by
  change FreeUnder (k+1+1) (iter n (.var 1) (.var 0))
  induction n with
  | zero => change 0 < k+1+1; omega
  | succ n ih => exact ⟨by change 1 < k+1+1; omega, ih⟩

theorem literal_scope (n : Nat) : FreeUnder 2 (literal n) := by
  exact ⟨⟨⟨⟨numeral_scope n 2, by decide⟩, by decide⟩, by decide⟩, by decide⟩

theorem literal_full (n : Nat) : FullReader (literal n) :=
  FullReader.of_betas (literal_scope n) (literal_head n) (endpoint_full n)

theorem numeral_wire (n : Nat) : wire (numeral n) = 6+5*n := by
  have h : wire (iter n (.var 1) (.var 0)) = 2+5*n := by
    induction n with
    | zero => rfl
    | succ n ih => simp only [iter,wire_app,wire_var]; omega
  simp only [numeral,wire_lam]
  omega

theorem literal_weight (n : Nat) : weight 0 (literal n) = 84+5*n := by
  have hw : weight 0 (numeral n) = 6+5*n := by
    rw [weight_no_hole _ 0 (occ_of_freeUnder _ 0 1 (numeral_scope n 0) (by omega))]
    exact numeral_wire n
  change 2+(2+(2+(2+weight 0 (numeral n)+weight 0 stepper)+weight 0 seed)+
    weight 0 ident)+weight 0 (.var 1) = _
  have hf : weight 0 stepper = 15 := by decide
  have hh : weight 0 seed = 51 := by decide
  have hi : weight 0 ident = 4 := by decide
  have hj : weight 0 (.var 1) = 0 := by decide
  omega

def literal4 : Term := spine (numeral 4) [stepper,seed,ident,.var 1]
def shared4 : Term := spine
  (.app (.lam (.app (.var 0) (.var 0))) (numeral 2))
  [stepper,seed,ident,.var 1]

def shared16 : Term := spine
  (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (numeral 2))
  [stepper,seed,ident,.var 1]

theorem shared16_prefix : Betas
    (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (numeral 2))
    (numeral 16) := normalSteps_sound (by decide : normalSteps 43
      (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (numeral 2)) =
      some (numeral 16))

theorem shared16_literal : Betas shared16 (literal 16) :=
  betas_appL (.var 1) (betas_appL ident
    (betas_appL seed (betas_appL stepper shared16_prefix)))

theorem shared16_full : FullReader shared16 :=
  FullReader.of_betas (by decide) shared16_literal (literal_full 16)

theorem shared16_endpoint : Betas shared16 (endpoint 16) :=
  betas_trans shared16_literal (literal_head 16)

theorem shared16_prices :
    weight 0 shared16 = 108 ∧ weight 0 (endpoint 16) = 393256 ∧
    occ 1 shared16 = 1 ∧ depth shared16 = 0 := by
  refine ⟨by decide, ?_, by decide, by decide⟩
  rw [endpoint_weight]

def simplified (n : Nat) : Term := spine (numeral n) [ident,seed,ident,.var 1]

theorem iter_ident (n : Nat) (a : Term) : Betas (iter n ident a) a := by
  induction n with
  | zero => exact .refl _
  | succ n ih => exact .head (show Beta (.app ident (iter n ident a))
      (iter n ident a) from .beta _ _) ih

theorem simplified_reduce (n : Nat) : Betas (simplified n) reader162 := by
  have h1 := betas_appL (.var 1) (betas_appL ident (numeral_apply n ident seed))
  have h2 := betas_appL (.var 1) (betas_appL ident (iter_ident n seed))
  exact betas_trans h1 (betas_trans h2 (seed_apply 0))

theorem simplified_full (n : Nat) : FullReader (simplified n) :=
  FullReader.of_betas
    ⟨⟨⟨⟨numeral_scope n 2, by decide⟩, by decide⟩, by decide⟩, by decide⟩
    (simplified_reduce n) reader162_fullReader

theorem simplified_saves (n : Nat) :
    weight 0 (simplified n)+11 = weight 0 (literal n) := by
  change (2+(2+(2+(2+weight 0 (numeral n)+4)+51)+4)+0)+11 =
    2+(2+(2+(2+weight 0 (numeral n)+15)+51)+4)+0
  omega

theorem literal4_head : Betas literal4 (endpoint 4) :=
  headSteps_beta_star (by decide : headSteps 12 literal4 = some (endpoint 4))

theorem shared4_head : Betas shared4 (endpoint 4) :=
  headSteps_beta_star (by decide : headSteps 19 shared4 = some (endpoint 4))

theorem literal4_full : FullReader literal4 :=
  FullReader.of_betas (by decide) literal4_head (endpoint_full 4)

theorem shared4_full : FullReader shared4 :=
  FullReader.of_betas (by decide) shared4_head (endpoint_full 4)

theorem positive_expansion :
    weight 0 shared4 = 104 ∧ weight 0 (endpoint 4) = 136 ∧
    occ 1 shared4 = 1 ∧ depth shared4 = 0 ∧
    occ 1 (endpoint 4) = 1 ∧ depth (endpoint 4) = 1 := by decide

/- Both are explicitly non-minimal: they reduce to the known 46 reader. -/
theorem shared4_not_minimum : ¬ MinimumReader shared4 := by
  intro hm
  have hcanon : ReaderLaws reader162 :=
    ⟨reader162_fullReader.scope, reader162_fullReader.zero,
      fun n => by simpa only [← unary_stream] using reader162_fullReader.unary_law n⟩
  have h := hm.minimal reader162 hcanon (by decide)
  have hsrc : weight 0 shared4 = 104 := by decide
  have hdst : weight 0 reader162 = 46 := by decide
  omega

#print axioms payload_reduce
#print axioms payload_weight
#print axioms endpoint_full
#print axioms endpoint_weight
#print axioms literal_head
#print axioms literal_full
#print axioms literal_weight
#print axioms shared4_head
#print axioms shared4_full
#print axioms positive_expansion
#print axioms shared4_not_minimum
#print axioms shared16_full
#print axioms shared16_endpoint
#print axioms shared16_prices
#print axioms simplified_full
#print axioms simplified_saves
end Blc.Expand
