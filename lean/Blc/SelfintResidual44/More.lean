import Blc.SelfintResidual44.Weighted
import Blc.SelfintSingleObject

set_option Elab.async false
namespace Blc.Floor44
open Term SelfintSharp SelfintLowerBound SelfintSingleObject WeakHeadClock
open Round3Floor38
theorem reduct_interp {e t} (h : Betas e t) (he : IsSelfInterpreter e) : IsSelfInterpreter t := by
  induction h with
  | refl => exact he
  | head h _ ih => exact ih (SelfintWireCost.selfInterpreter_beta he h)
def diag := Term.lam (.app (.var 0) (.var 0))
theorem deltaCount {e : Term} (he : IsSelfInterpreter e) : ∃ n, Count (.app e diag) n := by
  obtain ⟨k,h⟩ := inputCount (e := e) (c := diag) (m := SelfintControl.identity) (r := .var 0)
    (args := []) (k := 3) he (by decide) (by decide)
  obtain ⟨m,_,hm⟩ := count_app_left h
  exact ⟨m,hm⟩

inductive Plan where
  | v
  | a (f x : Plan)
  | c (b : Plan)
  | d (b : Plan)
  | slot (r g : Term) (b obj : Plan)

def Plan.verifies : Plan → Term → Bool
  | .v, .var _ => true
  | .a f x, .app s t => f.verifies s && x.verifies t
  | .c p, .lam b => decide (Closed (.lam b)) && p.verifies b
  | .d p, .lam b => decide (occ 0 b = 0) && p.verifies b
  | .slot r g p q, .lam b =>
    decide (FreeUnder 1 (.lam g) ∧ Term.lam b = substDec 0 r (.lam g)) && p.verifies b && q.verifies r
  | _, _ => false

theorem Plan.sound (p : Plan) (t : Term) (h : p.verifies t = true) : SO t := by
  induction p generalizing t with
  | v => cases t <;> simp_all [verifies, SO.var]
  | a f x hf hx =>
    cases t <;> simp [verifies] at h
    exact SO.app (hf _ h.1) (hx _ h.2)
  | c p ih =>
    cases t <;> simp [verifies] at h
    exact so_closed_lam h.1 (ih _ h.2)
  | d p ih =>
    cases t <;> simp [verifies] at h
    exact so_dead h.1 (ih _ h.2)
  | slot r g p q ih iq =>
    cases t <;> simp [verifies] at h
    exact SO.lam (ih _ h.1.2) (iq _ h.2) h.1.1.1 h.1.1.2
end Blc.Floor44
