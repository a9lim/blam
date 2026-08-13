import QalcConcreteCertificate

/-! Generated, untrusted carrier data for canonical qALC sectors.

`QalcConcrete.step` recomputes all rows.  Optional `rows_conform` declarations
are differential port checks against Python; `checked` and `reachable_rri`
depend only on the Lean transition function and carrier closure.
-/

namespace QalcCanonicalRRI
open QalcConcrete
set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace p_selector
def term : Term := .app (.app (.lam (.lam (.app (.lam (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.lam (.var 2))))) (.app (.var 2) (.lam (.lam (.var 2))))))) (.gate .h)) (.gate .t)
def certificate : Certificate := [([.fn, .fn, .body, .body, .arg, .arg], [])]
def state_0 : State := .run ({ path := [], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_1 : State := .run ({ path := [.fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_2 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_3 : State := .run ({ path := [.fn, .fn, .body], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_4 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_5 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_6 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_7 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_8 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_9 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_10 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_11 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_12 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_13 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_14 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_15 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_16 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_17 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_18 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_19 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body, .body], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_20 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_21 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_22 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_23 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_24 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_25 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_26 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_27 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_28 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_29 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })
def state_30 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })
def state_31 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })
def state_32 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })
def state_33 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })
def state_34 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })
def state_35 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_36 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_37 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_38 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_39 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_40 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_41 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_42 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_43 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_44 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_45 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_46 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_47 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh)], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_48 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_49 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh)], tape := [.bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_50 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh)], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_51 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh)], tape := [.rho], vb := none, frames := [], storage := [.bundle []] })
def state_52 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh)], tape := [.bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_53 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_54 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh)], tape := [.rho], vb := none, frames := [], storage := [.bundle []] })
def state_55 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh)], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_56 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_57 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_58 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_59 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_60 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_61 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_62 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_63 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_64 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_65 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_66 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_67 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_68 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_69 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_70 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_71 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_72 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_73 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_74 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_75 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_76 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_77 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_78 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_79 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_80 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_81 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_82 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_83 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_84 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_85 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_86 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .body], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_87 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_88 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_89 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_90 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_91 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_92 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_93 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_94 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_95 : State := .run ({ path := [], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_96 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_97 : State := .run ({ path := [], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def carrier_0 : List State := [
  state_0,
  state_1,
  state_2,
  state_3,
  state_4,
  state_5,
  state_6,
  state_7,
  state_8,
  state_9,
  state_10,
  state_11,
  state_12,
  state_13,
  state_14,
  state_15,
  state_16,
  state_17,
  state_18,
  state_19,
  state_20,
  state_21,
  state_22,
  state_23,
  state_24,
  state_25,
  state_26,
  state_27,
  state_28,
  state_29,
  state_30,
  state_31,
]
def index_0 : List StateSlot := [
  ⟨11104428816957240017, state_0⟩,
  ⟨7339597350593372449, state_1⟩,
  ⟨14509644395950887697, state_2⟩,
  ⟨6611543102426554859, state_3⟩,
  ⟨6653275306425141065, state_4⟩,
  ⟨8019723848072276233, state_5⟩,
  ⟨6003777709733011267, state_6⟩,
  ⟨15022430933761550039, state_7⟩,
  ⟨2569102869223720787, state_8⟩,
  ⟨811246888430294251, state_9⟩,
  ⟨14639933868934204141, state_10⟩,
  ⟨10274799822500145757, state_11⟩,
  ⟨3615392943315487567, state_12⟩,
  ⟨10470776494614842825, state_13⟩,
  ⟨5129744576261106505, state_14⟩,
  ⟨11164139736702339087, state_15⟩,
  ⟨4933767904146409437, state_16⟩,
  ⟨7865144881974094055, state_17⟩,
  ⟨7115859884512206061, state_18⟩,
  ⟨15782031291196455791, state_19⟩,
  ⟨14433873012719091489, state_20⟩,
  ⟨15946707454330998423, state_21⟩,
  ⟨2603447318532686373, state_22⟩,
  ⟨10259937401219377973, state_23⟩,
  ⟨15363421339130617539, state_24⟩,
  ⟨13776039148557161183, state_25⟩,
  ⟨432779012758849133, state_26⟩,
  ⟨10455914073334075041, state_27⟩,
  ⟨15559398011245314607, state_28⟩,
  ⟨3562988834867223512, state_29⟩,
  ⟨3561075684634514822, state_30⟩,
  ⟨12147627306473010201, state_31⟩,
]
def carrier_1 : List State := [
  state_32,
  state_33,
  state_34,
  state_35,
  state_36,
  state_37,
  state_38,
  state_39,
  state_40,
  state_41,
  state_42,
  state_43,
  state_44,
  state_45,
  state_46,
  state_47,
  state_48,
  state_49,
  state_50,
  state_51,
  state_52,
  state_53,
  state_54,
  state_55,
  state_56,
  state_57,
  state_58,
  state_59,
  state_60,
  state_61,
  state_62,
  state_63,
]
def index_1 : List StateSlot := [
  ⟨12145714156240301511, state_32⟩,
  ⟨2454250444364788230, state_33⟩,
  ⟨2452337294132079540, state_34⟩,
  ⟨16685699590626121417, state_35⟩,
  ⟨2813394274705239737, state_36⟩,
  ⟨2821357561618379855, state_37⟩,
  ⟨14404746001022410407, state_38⟩,
  ⟨16489722918511424349, state_39⟩,
  ⟨2617417602590542669, state_40⟩,
  ⟨17395024113185314609, state_41⟩,
  ⟨6982551649024601053, state_42⟩,
  ⟨17784510642022937535, state_43⟩,
  ⟨11600599946137217091, state_44⟩,
  ⟨5324193113474831255, state_45⟩,
  ⟨13358464723023669315, state_46⟩,
  ⟨4845717508163372365, state_47⟩,
  ⟨7365048713851946951, state_48⟩,
  ⟨2769669559249209927, state_49⟩,
  ⟨8712495050374334449, state_50⟩,
  ⟨2900727465390632581, state_51⟩,
  ⟨6348500847776857591, state_52⟩,
  ⟨17913679635348573351, state_53⟩,
  ⟨6689015089707399577, state_54⟩,
  ⟨1542983510553184173, state_55⟩,
  ⟨12232879054020687749, state_56⟩,
  ⟨2021450319771617375, state_57⟩,
  ⟨10154707786240658195, state_58⟩,
  ⟨14481776644412749343, state_59⟩,
  ⟨15979395055416837603, state_60⟩,
  ⟨14092281319482100729, state_61⟩,
  ⟨9992977306348417955, state_62⟩,
  ⟨13186980124808210469, state_63⟩,
]
def carrier_2 : List State := [
  state_64,
  state_65,
  state_66,
  state_67,
  state_68,
  state_69,
  state_70,
  state_71,
  state_72,
  state_73,
  state_74,
  state_75,
  state_76,
  state_77,
  state_78,
  state_79,
  state_80,
  state_81,
  state_82,
  state_83,
  state_84,
  state_85,
  state_86,
  state_87,
  state_88,
  state_89,
  state_90,
  state_91,
  state_92,
  state_93,
  state_94,
  state_95,
]
def index_2 : List StateSlot := [
  ⟨9603481981417769341, state_64⟩,
  ⟨17965367637717743279, state_65⟩,
  ⟨8698180786743879081, state_66⟩,
  ⟨13382956796922907537, state_67⟩,
  ⟨13476568299653411891, state_68⟩,
  ⟨5181144520995930013, state_69⟩,
  ⟨8894157458858576149, state_70⟩,
  ⟨16772496247313100683, state_71⟩,
  ⟨4097296580597565419, state_72⟩,
  ⟨4985167848881232945, state_73⟩,
  ⟨8679698625299375473, state_74⟩,
  ⟨9350301895315291329, state_75⟩,
  ⟨3901319908482868351, state_76⟩,
  ⟨13968350192427907367, state_77⟩,
  ⟨4806621103156758611, state_78⟩,
  ⟨15726214969314359591, state_79⟩,
  ⟨5196107631994381537, state_80⟩,
  ⟨9732798960142637227, state_81⟩,
  ⟨11182534177155826873, state_82⟩,
  ⟨714145736114098455, state_83⟩,
  ⟨5357846907979647465, state_84⟩,
  ⟨2730091874453363421, state_85⟩,
  ⟨7535350587137931257, state_86⟩,
  ⟨1363643332806228253, state_87⟩,
  ⟨16801883895999925275, state_88⟩,
  ⟨1321911128807642047, state_89⟩,
  ⟨8184848183830061055, state_90⟩,
  ⟨9220012422331974885, state_91⟩,
  ⟨15393703150354203901, state_92⟩,
  ⟨2049965376974459637, state_93⟩,
  ⟨4676331630173442167, state_94⟩,
  ⟨5814796843338327205, state_95⟩,
]
def carrier_3 : List State := [
  state_96,
  state_97,
]
def index_3 : List StateSlot := [
  ⟨16121757398521021491, state_96⟩,
  ⟨12636001694362160007, state_97⟩,
]
def carrier : List State := carrier_0 ++ carrier_1 ++ carrier_2 ++ carrier_3
def carrierIndex : List StateSlot := index_0 ++ index_1 ++ index_2 ++ index_3
def expectedRows_0 : List (List Edge) := [
  [⟨1, 0, 0, "b1", .run ({ path := [.fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .fn, .body], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "call", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body, .body], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })⟩],
]
def expectedRows_1 : List (List Edge) := [
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh)], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh)], tape := [.bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh)], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh)], tape := [.rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh)], tape := [.bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh)], tape := [.rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh)], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
]
def expectedRows_2 : List (List Edge) := [
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil), .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .body], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .body, .fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .body], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt1 ({ path := [], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .body, .fn, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
]
def expectedRows_3 : List (List Edge) := [
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt0 ({ path := [], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .body, .arg, .body, .body] (.nil), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .body, .fn, .fn] (.nil)) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
]
def exactRowsChunk (states : List State)
    (expected : List (List Edge)) : Bool :=
  eqBool states.length expected.length &&
    (states.zip expected).all (fun pair =>
      eqBool (step term pair.1 certificate) pair.2)
theorem conform_0 :
    exactRowsChunk carrier_0 expectedRows_0 = true := by
  decide +kernel
theorem conform_1 :
    exactRowsChunk carrier_1 expectedRows_1 = true := by
  decide +kernel
theorem conform_2 :
    exactRowsChunk carrier_2 expectedRows_2 = true := by
  decide +kernel
theorem conform_3 :
    exactRowsChunk carrier_3 expectedRows_3 = true := by
  decide +kernel
def closureChunk (chunk : List State) : Bool :=
  chunk.all (fun state =>
    (step term state certificate).all (indexedTargetCovered carrierIndex))
def rowsChunk (chunk : List State) : Bool :=
  chunk.all (recallRowWellFormed term certificate)
theorem closure_0 : closureChunk carrier_0 = true := by
  decide +kernel
theorem rows_0 : rowsChunk carrier_0 = true := by
  decide +kernel
theorem closure_1 : closureChunk carrier_1 = true := by
  decide +kernel
theorem rows_1 : rowsChunk carrier_1 = true := by
  decide +kernel
theorem closure_2 : closureChunk carrier_2 = true := by
  decide +kernel
theorem rows_2 : rowsChunk carrier_2 = true := by
  decide +kernel
theorem closure_3 : closureChunk carrier_3 = true := by
  decide +kernel
theorem rows_3 : rowsChunk carrier_3 = true := by
  decide +kernel
theorem python_rows_conform :
    (exactRowsChunk carrier_0 expectedRows_0 && exactRowsChunk carrier_1 expectedRows_1 && exactRowsChunk carrier_2 expectedRows_2 && exactRowsChunk carrier_3 expectedRows_3) = true := by
  simp [conform_0, conform_1, conform_2, conform_3]
theorem initial_checked : memBool initial carrier = true := by
  decide +kernel
theorem index_aligned : carrierIndex.map (·.state) = carrier := by
  rfl
theorem closure_chunks :
    (closureChunk carrier_0 && closureChunk carrier_1 && closureChunk carrier_2 && closureChunk carrier_3) = true := by
  simp [closure_0, closure_1, closure_2, closure_3]
theorem all_indexed_closed :
    carrier.all (fun state =>
      (step term state certificate).all
        (indexedTargetCovered carrierIndex)) = true := by
  simpa only [carrier, List.all_append, closureChunk] using closure_chunks
theorem indexed_closed_checked :
    carrierIndexedClosed term certificate carrier carrierIndex = true := by
  unfold carrierIndexedClosed
  rw [initial_checked]
  have alignedBool : eqBool (carrierIndex.map (·.state)) carrier = true := by
    simp [eqBool, index_aligned]
  rw [alignedBool, all_indexed_closed]
  rfl
theorem closed_checked : carrierClosed term certificate carrier = true := by
  exact carrierIndexedClosed_sound indexed_closed_checked
theorem row_chunks :
    (rowsChunk carrier_0 && rowsChunk carrier_1 && rowsChunk carrier_2 && rowsChunk carrier_3) = true := by
  simp [rows_0, rows_1, rows_2, rows_3]
theorem rows_checked :
    carrier.all (recallRowWellFormed term certificate) = true := by
  simpa only [carrier, List.all_append, rowsChunk] using row_chunks
theorem rri_checked : carrierRRI term certificate carrier = true := by
  decide +kernel
theorem targets_checked :
    carrierTargetFacts term certificate carrier = true := by
  decide +kernel
theorem checked : certificateBool term certificate carrier = true := by
  simp [certificateBool, closed_checked, rows_checked, rri_checked,
    targets_checked]
theorem reachable_rri : RRIOn term certificate (Reachable term certificate) :=
  certificate_sound checked
theorem recall_target_rri :
    RecallTargetRRIOn term certificate (Reachable term certificate) :=
  certificate_target_sound checked
-- states=98 recalls=2 fire=1 certified_fire=1 h_reconvergences=0
end p_selector
end QalcCanonicalRRI
