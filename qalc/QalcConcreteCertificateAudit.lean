import QalcConcreteCertificate

namespace QalcConcreteAudit
open QalcConcrete
set_option maxHeartbeats 0
set_option maxRecDepth 100000

def negativeTerm : Term := .app (.app (.lam (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.lam (.var 1))) (.lam (.var 1))))) (.gate .h)) (.gate .t)
def negativeCert : Certificate := [([.fn, .fn, .body, .body, .fn, .fn, .arg], [])]
def bare : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def framed : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })

-- The old raw-WF alias pair now has structurally disjoint recall targets.
-- No reachability or finite-carrier RRI premise is used here.
theorem raw_recall_targets_disjoint :
    (step negativeTerm bare negativeCert).map (·.target) !=
      (step negativeTerm framed negativeCert).map (·.target) := by
  decide +kernel

-- A finite prefix is not a certificate: closure rejects the initial singleton.
theorem prefix_rejected :
    certificateBool negativeTerm negativeCert [initial] = false := by
  decide +kernel

def qprimeTerm : Term := .app (.app (.lam (.lam (.app (.var 2) (.app (.app (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.lam (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 2)))))) (.lam (.lam (.var 2))))))) (.gate .h)) (.gate .t)
def qprimeCert : Certificate := [([.fn, .fn, .body, .body, .arg], [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩]), ([.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg], [])]
def leftFire : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledPresent (.recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))) (.recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh)))⟩], storage := [.bundle []] })
def rightFire : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledPresent (.recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))) (.recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh)))⟩], storage := [.bundle []] })
def commonTarget : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })

def reaches (source target : State) : Bool :=
  (step qprimeTerm source qprimeCert).any
    (fun edge => eqBool edge.target target)

-- Two distinct certified Hadamard sources really reconverge on this exact Run.
theorem certified_hadamard_reconvergence :
    leftFire != rightFire ∧
    reaches leftFire commonTarget = true ∧
    reaches rightFire commonTarget = true := by
  decide +kernel

-- Both Hadamard arms are part of closure; silently dropping one changes the row.
theorem certified_fire_has_two_arms :
    (step qprimeTerm leftFire qprimeCert).length = 2 := by
  decide +kernel

end QalcConcreteAudit
