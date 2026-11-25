import Blc.Selfint162
import Blc.SelfintClass
import Blc.SelfintSingleObjectWidth

/-! # Four live binders are necessary and sufficient

`U = λa b c. a (λ_ _ _ _. c) c (b c)` is a one-point applicative basis with
exactly three live binders: `U U U →* K` and `U (K f) g →* λx. f x (g x)`.
Compiling the 162 to an applicative tree over `U` and sharing `U` through one
outer binder gives an exact self-interpreter with four live binders, two of
them nonlinear (`witness`, 7,625 bits). With `interpreter_counts` this makes
the live-binder minimum exactly four (`minimum_live`). Codex's construction. -/
namespace Blc.FourLiveWitness
open Term

-- U a b c = a (λ_ _ _ _. c) c (b c).
def U : Term := .lam (.lam (.lam
  (.app (.app (.app (.var 2) (.lam (.lam (.lam (.lam (.var 4)))))) (.var 0))
    (.app (.var 1) (.var 0)))))
def S : Term := .lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))
abbrev K := churchTrue
abbrev I := idT

-- These same application trees, interpreted at a variable, become the wire body.
def kTree (u : Term) : Term := .app (.app u u) u
def sTree (u : Term) : Term :=
  let k := kTree u
  .app (.app u (.app k (.app k u))) k
def iTree (u : Term) : Term := .app (.app (sTree u) (kTree u)) (kTree u)

theorem kTree_ok : Betas (kTree U) K :=
  SelfintClass.normalSteps_sound (by decide : SelfintClass.normalSteps 8 (kTree U) = some K)

-- Check the S macro in stages, contracting its three copies of the K macro first.
theorem sTree_ok : Betas (sTree U) S := by
  refine betas_trans
    (betas_app (betas_appR U (betas_app kTree_ok (betas_appL U kTree_ok))) kTree_ok) ?_
  exact SelfintClass.normalSteps_sound
    (by decide : SelfintClass.normalSteps 9 (.app (.app U (.app K (.app K U))) K) = some S)

theorem iTree_ok : Betas (iTree U) I :=
  betas_trans (betas_app (betas_app sTree_ok kTree_ok) kTree_ok)
    (SelfintClass.normalSteps_sound
      (by decide : SelfintClass.normalSteps 4 (.app (.app S K) K) = some I))

private theorem k_abs (t : Term) : Betas (.app K t) (.lam (shift 1 0 t)) :=
  .head (.beta _ _) (.refl _)

private theorem shifted_lam_apply (b : Term) :
    Betas (.app (shift 1 0 (.lam b)) (.var 0)) b := by
  exact .head (.beta _ _) (by simpa only [contract, substDec_var_shift] using Betas.refl b)

private theorem distribute (f a : Term) :
    Betas (.app (.app S (.lam f)) (.lam a)) (.lam (.app f a)) := by
  refine .head (.appL _ (.beta _ _)) (.head (.beta _ _) ?_)
  have h := betas_lam (betas_app (shifted_lam_apply f) (shifted_lam_apply a))
  have hshift (b : Term) : shift 1 1 (shift 1 1 b) = shift 2 1 b :=
    shift_shift_add b 1 1 1 1 (by decide) (by decide)
  have hsubst (s : Term) : substDec 2 s (shift 2 1 f) = shift 1 1 f :=
    substDec_shift_mid f s 2 1 2 (by decide) (by decide)
  simpa [S, contract, substDec, shift, hshift, hsubst] using h

inductive Expr where
  | v (i : Nat) | k | s | ident | ap (f a : Expr)

def decode : Expr → Term
  | .v i => .var i
  | .k => K
  | .s => S
  | .ident => I
  | .ap f a => .app (decode f) (decode a)

-- A constant node is already lowered out of the binder. A varying node is abstracted.
inductive Br where
  | const (e : Expr) | varying (e : Expr)

def Br.force : Br → Expr
  | .const e => .ap .k e
  | .varying e => e

def bracket : Expr → Br
  | .v 0 => .varying .ident
  | .v (i+1) => .const (.v i)
  | .k => .const .k
  | .s => .const .s
  | .ident => .const .ident
  | .ap f a =>
    match bracket f, bracket a with
    | .const l, .const r => .const (.ap l r)
    | l, r => .varying (.ap (.ap .s l.force) r.force)

def Br.Good (b : Br) (t : Term) : Prop :=
  match b with
  | .const e => shift 1 0 (decode e) = t
  | .varying e => Betas (decode e) (.lam t)

theorem Br.good_force {b : Br} {t : Term} (h : b.Good t) :
    Betas (decode b.force) (.lam t) := by
  cases b with
  | const e => exact h ▸ k_abs (decode e)
  | varying e => exact h

private theorem combine {l r : Br} {f a : Term} (hl : l.Good f) (hr : r.Good a) :
    Betas (decode (.ap (.ap .s l.force) r.force)) (.lam (.app f a)) :=
  betas_trans (betas_app (betas_appR S (Br.good_force hl)) (Br.good_force hr)) (distribute f a)

theorem bracket_ok (e : Expr) : (bracket e).Good (decode e) := by
  induction e with
  | v i => cases i with
    | zero => exact Betas.refl _
    | succ j => rfl
  | k => rfl
  | s => rfl
  | ident => rfl
  | ap f a hf ha =>
    unfold bracket
    cases h : bracket f with
    | const l =>
      rw [h] at hf
      cases h' : bracket a with
      | const r =>
        rw [h'] at ha
        change Term.app (shift 1 0 (decode l)) (shift 1 0 (decode r)) = Term.app (decode f) (decode a)
        rw [show shift 1 0 (decode l) = decode f from hf,
            show shift 1 0 (decode r) = decode a from ha]
      | varying r => rw [h'] at ha; exact combine hf ha
    | varying l =>
      rw [h] at hf
      cases h' : bracket a <;> rw [h'] at ha <;> exact combine hf ha

def compile : Term → Expr
  | .var i => .v i
  | .app f a => .ap (compile f) (compile a)
  | .lam b => (bracket (compile b)).force

theorem compile_ok (t : Term) : Betas (decode (compile t)) t := by
  induction t with
  | var i => exact .refl _
  | app f a hf ha => exact betas_app hf ha
  | lam b hb => exact betas_trans (Br.good_force (bracket_ok _)) (betas_lam hb)

def emit (u : Term) : Expr → Term
  | .v i => .var i
  | .k => kTree u
  | .s => sTree u
  | .ident => iTree u
  | .ap f a => .app (emit u f) (emit u a)

theorem emit_ok (e : Expr) : Betas (emit U e) (decode e) := by
  induction e with
  | v i => exact .refl _
  | k => exact kTree_ok
  | s => exact sTree_ok
  | ident => exact iTree_ok
  | ap f a hf ha => exact betas_app hf ha

def witness : Term := .app (.lam (emit (.var 0) (compile intL162))) U

theorem witness_reduces : Betas witness intL162 :=
  .head (.beta _ _) (betas_trans (emit_ok (compile intL162)) (compile_ok intL162))

theorem witness_isSelfInterpreter : IsSelfInterpreter witness := by
  refine ⟨by decide, fun M hM => ?_⟩
  obtain ⟨r, h, h'⟩ := isSelfInterpreter_intL162.2 M hM
  exact ⟨r, betas_trans (betas_appL _ (betas_appL _ witness_reduces)) h, h'⟩

theorem witness_live : SelfintFloor.live witness = 4 := by decide

theorem minimum_live : (∃ E, IsSelfInterpreter E ∧ SelfintFloor.live E = 4) ∧
    (∀ E, IsSelfInterpreter E → 4 ≤ SelfintFloor.live E) :=
  ⟨⟨witness, witness_isSelfInterpreter, witness_live⟩,
   fun _ h => (SelfintSingleObject.interpreter_counts h).1⟩

theorem witness_size : (blcCode witness).length = 7625 := by
  have h := SelfintFloor.wire_identity witness
  have hc : 2 * SelfintFloor.lamCount witness + 4 * SelfintFloor.leafCount witness +
      SelfintCapture.indexSum witness = 7627 := by decide
  change SelfintWireCost.wire witness = 7625
  omega
theorem witness_nonlinear : SelfintLowerBound.nonlinear witness = 2 := by decide

/- The wire of `witness` is `data/self-interpreter/machines/int7625_four_live.blc`
(checked byte for byte against `blcCode witness` when the module was written). -/
#print axioms witness_reduces
#print axioms minimum_live
end Blc.FourLiveWitness
