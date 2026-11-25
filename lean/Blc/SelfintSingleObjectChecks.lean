import Blc.SelfintSingleObjectLayouts
import Blc.NormalOrder

namespace Blc.SelfintSingleObject.Layouts
open Term SelfintFloor SelfintLowerBound SelfintWireCost SelfintNonlinearChain

private def bits : Term → Nat
  | .var n => n+2
  | .lam b => bits b+2
  | .app f a => bits f+bits a+2

private theorem bits_wire (t : Term) : bits t = wire t := by
  induction t with
  | var n => simp [bits]
  | lam b ih => simp [bits, ih, wire_lam]
  | app f a ihf iha => simp [bits, ihf, iha, wire_app]

private def redexOK : Term → Term → Bool
  | .lam b, a => decide (bits (.app (.lam b) a) ≤ bits (contract b a))
  | _, _ => true

def nonshrinking : Term → Bool
  | .var _ => true
  | .lam b => nonshrinking b
  | .app f a => nonshrinking f && nonshrinking a && redexOK f a

private theorem nonshrinking_of (t : Term) (h : ∀ u, Beta t u → wire t ≤ wire u) :
    nonshrinking t = true := by
  induction t with
  | var => rfl
  | lam b ih =>
    exact ih (fun u hu => by have := h _ (.lam hu); simp only [wire_lam] at this; omega)
  | app f a ihf iha =>
    apply Bool.and_eq_true_iff.mpr
    refine ⟨Bool.and_eq_true_iff.mpr ⟨ihf ?_, iha ?_⟩, ?_⟩
    · intro u hu; have := h _ (.appL a hu); simp only [wire_app] at this; omega
    · intro u hu; have := h _ (.appR f hu); simp only [wire_app] at this; omega
    · cases f with
      | var | app => rfl
      | lam b => simpa only [redexOK, bits_wire, decide_eq_true_eq] using h _ (.beta b a)

/-- Bounded partial comparison with a specified normal form. Only an
observed constructor or index mismatch returns true. -/
def mismatch : Nat → Term → Term → Bool
  | 0, _, _ => false
  | n+1, t, u => match weakStep t with
    | some v => mismatch n v u
    | none => match t, u with
      | .var i, .var j => decide (i ≠ j)
      | .app f a, .app g b => mismatch n f g || mismatch n a b
      | .lam b, .lam c => mismatch n b c
      | _, _ => true

theorem mismatch_sound (n : Nat) {t u} (h : Betas t u) (hu : NFt u) :
    mismatch n t u = false := by
  induction n generalizing t u with
  | zero => rfl
  | succ n ih =>
    simp only [mismatch]
    cases w : weakStep t with
    | some v => exact ih (betas_preserve_nf (.head (weakStep_beta w) (.refl _))
        h (fun _ => nft_no_beta hu)) hu
    | none =>
      cases t with
      | var i => have he := var_betas_eq h; subst u; simp
      | lam b =>
        obtain ⟨c,rfl,hc⟩ := lam_betas_shape h
        exact ih hc hu
      | app f a =>
        have hr := weakStep_none_rigid w (fun h => h)
        cases hr with
        | app _ hf =>
          obtain ⟨g,b,rfl,hg,hb⟩ := SelfintProjections.rigid_app_betas h rfl hf
          simp only [ih hg hu.2.1, ih hb hu.2.2, Bool.false_or]

private def enough : Term → Bool
  | .lam (.lam b) => decide (2 ≤ nonlinear b)
  | .lam b => decide (4 ≤ live b)
  | _ => true

private theorem enough_of {t} (h : IsSelfInterpreter t) : enough t = true := by
  cases t with
  | var | app => rfl
  | lam b =>
    have hw := one_lambda_width h
    have hl := width_split_live b 0 (selfInterpreter_not_chain (E := .lam b) h) hw
    simp only [outerLive, Nat.add_zero] at hl
    cases b with
    | lam b => exact decide_eq_true (not_chain_two_nonlinear b (selfInterpreter_body_not_chain h))
    | app | var => exact decide_eq_true hl

private def enoughSteps : Nat → Term → Bool
  | 0, t => enough t
  | n+1, t => enough t && (match headStep t with
      | none => true
      | some u => enoughSteps n u)

private theorem enoughSteps_of (n : Nat) {t} (h : IsSelfInterpreter t) :
    enoughSteps n t = true := by
  induction n generalizing t with
  | zero => exact enough_of h
  | succ n ih =>
    simp only [enoughSteps, enough_of h, Bool.true_and]
    cases w : headStep t with
    | none => rfl
    | some u => exact ih (selfInterpreter_beta h (beta_of_headStep (headStep_sound w)))

/-- Positive necessary tests, in increasing computational cost. -/
def passes (bound : Nat) (t : Term) : Bool :=
  decide (bits t ≤ bound) && nonshrinking t && enoughSteps 4 t &&
    !mismatch 35 (idCall t) idOutput

theorem minimum_passes {t} (h : MinimalInterpreter t) {bound : Nat} (hw : wire t ≤ bound) :
    passes bound t = true := by
  have hn := nonshrinking_of t (fun _ hu => minimal_beta_nonshrinking h hu)
  simp [passes, bits_wire, hw, hn, enoughSteps_of 4 h.1,
    mismatch_sound 35 (interpreter_idCall_betas h.1) (by decide : NFt idOutput)]

end Blc.SelfintSingleObject.Layouts
