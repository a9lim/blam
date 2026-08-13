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

namespace p_HNH
def term : Term := .app (.app (.lam (.lam (.app (.var 2) (.app (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.var 2))))) (.app (.var 2) (.lam (.lam (.var 2)))))))) (.gate .h)) (.gate .t)
def certificate : Certificate := [([.fn, .fn, .body, .body, .arg], []), ([.fn, .fn, .body, .body, .arg, .arg, .arg], [])]
def state_0 : State := .run ({ path := [], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_1 : State := .run ({ path := [.fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_2 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_3 : State := .run ({ path := [.fn, .fn, .body], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_4 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_5 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_6 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_7 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_8 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_9 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_10 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_11 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_12 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_13 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_14 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_15 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body], direction := .down, log := [.gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_16 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_17 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_18 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_19 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_20 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_21 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil))), .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_22 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_23 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_24 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil))), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_25 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_26 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .arg], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_27 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .arg, .body], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_28 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .arg, .body, .body], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_29 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_30 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_31 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_32 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.gam .h, .ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_33 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.gam .h, .ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_34 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil))), .gam .h, .ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_35 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil))), .gam .h, .ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_36 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_37 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_38 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })
def state_39 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })
def state_40 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })
def state_41 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })
def state_42 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })
def state_43 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })
def state_44 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_45 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_46 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil))), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_47 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil))), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_48 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_49 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_50 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_51 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_52 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_53 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_54 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn], direction := .up, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_55 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_56 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_57 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn], direction := .up, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_58 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_59 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_60 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body], direction := .up, log := [.gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_61 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_62 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_63 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_64 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_65 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_66 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_67 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_68 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_69 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_70 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_71 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_72 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_73 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_74 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_75 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_76 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_77 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_78 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_79 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_80 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_81 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_82 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_83 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_84 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_85 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_86 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_87 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_88 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_89 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_90 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_91 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_92 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_93 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_94 : State := .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
def state_95 : State := .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })
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
  ⟨14613149257231576239, state_6⟩,
  ⟨9529794285307598601, state_7⟩,
  ⟨3840215417844738409, state_8⟩,
  ⟨15266216535964724895, state_9⟩,
  ⟨2330144980609416041, state_10⟩,
  ⟨17132631300492275139, state_11⟩,
  ⟨13150366171986860479, state_12⟩,
  ⟨6931189786580491453, state_13⟩,
  ⟨14733812734665986247, state_14⟩,
  ⟨10620777431350922645, state_15⟩,
  ⟨13483228115374156693, state_16⟩,
  ⟨9413226477735142805, state_17⟩,
  ⟨4662177588480488213, state_18⟩,
  ⟨10952794122420169895, state_19⟩,
  ⟨18305807626721221347, state_20⟩,
  ⟨16535474767555837009, state_21⟩,
  ⟨15344528004720282363, state_22⟩,
  ⟨7102535177806734755, state_23⟩,
  ⟨17939618484610072625, state_24⟩,
  ⟨10063814799807673739, state_25⟩,
  ⟨15659275819664841845, state_26⟩,
  ⟨17232888219565849807, state_27⟩,
  ⟨4085574555611899309, state_28⟩,
  ⟨8898106222075244171, state_29⟩,
  ⟨8575960578198949641, state_30⟩,
  ⟨17032323110476818771, state_31⟩,
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
  ⟨5825775700572796999, state_32⟩,
  ⟨14282138232850666129, state_33⟩,
  ⟨5572080167292556997, state_34⟩,
  ⟨14028442699570426127, state_35⟩,
  ⟨2864496078571858015, state_36⟩,
  ⟨11320858610849727145, state_37⟩,
  ⟨8053871427044019326, state_38⟩,
  ⟨8051958276811310636, state_39⟩,
  ⟨1651598676700422523, state_40⟩,
  ⟨1649685526467713833, state_41⟩,
  ⟨10236237148306209212, state_42⟩,
  ⟨10234323998073500522, state_43⟩,
  ⟨17121692286995217587, state_44⟩,
  ⟨10563574918980774275, state_45⟩,
  ⟨10951550052020828609, state_46⟩,
  ⟨11754512885723303233, state_47⟩,
  ⟨1636227835286604955, state_48⟩,
  ⟨13524854540981713259, state_49⟩,
  ⟨13112827322623748843, state_50⟩,
  ⟨6171841036680661807, state_51⟩,
  ⟨1685572385432354553, state_52⟩,
  ⟨18327959780357506053, state_53⟩,
  ⟨11573259677938721753, state_54⟩,
  ⟨4632273391995634717, state_55⟩,
  ⟨7238249339576486767, state_56⟩,
  ⟨8702275029634648605, state_57⟩,
  ⟨6467356710229315279, state_58⟩,
  ⟨16462194300310618319, state_59⟩,
  ⟨17111477835853372101, state_60⟩,
  ⟨7458079221462237371, state_61⟩,
  ⟨4883910147550189511, state_62⟩,
  ⟨13294386688939962673, state_63⟩,
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
  ⟨8866175276055604171, state_64⟩,
  ⟨17659520735374021057, state_65⟩,
  ⟨14965176406069489565, state_66⟩,
  ⟨10356489783750473339, state_67⟩,
  ⟨5005604669183969515, state_68⟩,
  ⟨396918046864953289, state_69⟩,
  ⟨695839250173851609, state_70⟩,
  ⟨14533896701564386999, state_71⟩,
  ⟨6515675106419291883, state_72⟩,
  ⟨1906988484100275657, state_73⟩,
  ⟨650724075781592578, state_74⟩,
  ⟨648810925548883888, state_75⟩,
  ⟨2153504116860193171, state_76⟩,
  ⟨2151590966627484481, state_77⟩,
  ⟨4822607069837194992, state_78⟩,
  ⟨4820693919604486302, state_79⟩,
  ⟨16319676257239767899, state_80⟩,
  ⟨6317979618389959115, state_81⟩,
  ⟨315659695274717137, state_82⟩,
  ⟨11401325794220911065, state_83⟩,
  ⟨14809605820004445531, state_84⟩,
  ⟨4807909181154636747, state_85⟩,
  ⟨6192570107834581311, state_86⟩,
  ⟨3441460639507501579, state_87⟩,
  ⟨13401425074358724157, state_88⟩,
  ⟨3399728435508915373, state_89⟩,
  ⟨2684053554177962423, state_90⟩,
  ⟨11297829729033248211, state_91⟩,
  ⟨14129479322525541747, state_92⟩,
  ⟨4127782683675732963, state_93⟩,
  ⟨10643723618366680263, state_94⟩,
  ⟨7892614150039600531, state_95⟩,
]
def carrier : List State := carrier_0 ++ carrier_1 ++ carrier_2
def carrierIndex : List StateSlot := index_0 ++ index_1 ++ index_2
def expectedRows_0 : List (List Edge) := [
  [⟨1, 0, 0, "b1", .run ({ path := [.fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "call", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body], direction := .down, log := [.gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil))), .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "call", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil))), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .arg], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .arg, .body], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .arg, .body, .body], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.gam .h, .ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.gam .h, .ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
]
def expectedRows_1 : List (List Edge) := [
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil))), .gam .h, .ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil))), .gam .h, .ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil))), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil))), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn], direction := .up, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh), .gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn], direction := .up, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh), .gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body], direction := .up, log := [.gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .body], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) false (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))) true (.fresh)) (.nil)), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
]
def expectedRows_2 : List (List Edge) := [
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩, ⟨-1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt0 ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt1 ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .arg, .fn] (.cons (.lp [.fn, .fn, .body, .body, .arg, .fn, .body, .body, .body, .fn, .fn] (.nil)) (.cons (.gam .h) (.nil)))⟩], .bundle []] })⟩],
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
theorem python_rows_conform :
    (exactRowsChunk carrier_0 expectedRows_0 && exactRowsChunk carrier_1 expectedRows_1 && exactRowsChunk carrier_2 expectedRows_2) = true := by
  simp [conform_0, conform_1, conform_2]
theorem initial_checked : memBool initial carrier = true := by
  decide +kernel
theorem index_aligned : carrierIndex.map (·.state) = carrier := by
  rfl
theorem closure_chunks :
    (closureChunk carrier_0 && closureChunk carrier_1 && closureChunk carrier_2) = true := by
  simp [closure_0, closure_1, closure_2]
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
    (rowsChunk carrier_0 && rowsChunk carrier_1 && rowsChunk carrier_2) = true := by
  simp [rows_0, rows_1, rows_2]
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
-- states=96 recalls=0 fire=3 certified_fire=3 h_reconvergences=2
end p_HNH
end QalcCanonicalRRI
