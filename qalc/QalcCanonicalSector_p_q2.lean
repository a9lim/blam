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

namespace p_q2
def term : Term := .app (.app (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.lam (.lam (.var 2)))) (.lam (.lam (.var 1))))))) (.gate .h)) (.gate .t)
def certificate : Certificate := [([.fn, .fn, .body, .body, .arg], [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩]), ([.fn, .fn, .body, .body, .arg, .fn, .fn, .arg], [])]
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
def state_13 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_14 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_15 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_16 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_17 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_18 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_19 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.gam .h], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_20 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg], direction := .down, log := [.gam .h, .gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_21 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body], direction := .down, log := [.gam .h, .gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_22 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body, .body], direction := .down, log := [.gam .h, .gam .h], tape := [.mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_23 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg], direction := .up, log := [.gam .h, .gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_24 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg], direction := .up, log := [.gam .h, .gam .h], tape := [.ans .h false, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_25 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg], direction := .up, log := [.gam .h, .gam .h], tape := [.ans .h true, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_26 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .down, log := [.gam .h], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_27 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .down, log := [.gam .h], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_28 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_29 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_30 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_31 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_32 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })
def state_33 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })
def state_34 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })
def state_35 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })
def state_36 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })
def state_37 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })
def state_38 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_39 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_40 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_41 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_42 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_43 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_44 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .up, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_45 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_46 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_47 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_48 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_49 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_50 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_51 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_52 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_53 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_54 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .down, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_55 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_56 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_57 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_58 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_59 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_60 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_61 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_62 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_63 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_64 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_65 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_66 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_67 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_68 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_69 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_70 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_71 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_72 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_73 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_74 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_75 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_76 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_77 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_78 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_79 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_80 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_81 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_82 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_83 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_84 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_85 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_86 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_87 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_88 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_89 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_90 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_91 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_92 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_93 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_94 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_95 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_96 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_97 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_98 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_99 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_100 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_101 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_102 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_103 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_104 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_105 : State := .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
def state_106 : State := .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })
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
  ⟨15033488288343430899, state_13⟩,
  ⟨6213037360315127375, state_14⟩,
  ⟨1181058359054989113, state_15⟩,
  ⟨595522116384566019, state_16⟩,
  ⟨11958317185326445579, state_17⟩,
  ⟨5126704022271219033, state_18⟩,
  ⟨17575832429257006935, state_19⟩,
  ⟨2835551591784731313, state_20⟩,
  ⟨3832751920601474987, state_21⟩,
  ⟨2683991798156872169, state_22⟩,
  ⟨3576954440939827279, state_23⟩,
  ⟨5485164213678057781, state_24⟩,
  ⟨2687115224347131151, state_25⟩,
  ⟨16281769372062985219, state_26⟩,
  ⟨13483720382732058589, state_27⟩,
  ⟨7266294034768869213, state_28⟩,
  ⟨4468245045437942583, state_29⟩,
  ⟨10664254128132423863, state_30⟩,
  ⟨7866205138801497233, state_31⟩,
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
  ⟨4662872508053517366, state_32⟩,
  ⟨4660959357820808676, state_33⟩,
  ⟨3345711276516305603, state_34⟩,
  ⟨3343798126283596913, state_35⟩,
  ⟨15007313681953616692, state_36⟩,
  ⟨15005400531720908002, state_37⟩,
  ⟨7429580738971639739, state_38⟩,
  ⟨16838829797184666891, state_39⟩,
  ⟨11031274997574339209, state_40⟩,
  ⟨17424357243762064297, state_41⟩,
  ⟨13047095982902201095, state_42⟩,
  ⟨4009600967405676631, state_43⟩,
  ⟨15977520378320318999, state_44⟩,
  ⟨12830051895433980155, state_45⟩,
  ⟨8752323735370081885, state_46⟩,
  ⟨10946929779077409735, state_47⟩,
  ⟨16551124781036672143, state_48⟩,
  ⟨6938033423302244089, state_49⟩,
  ⟨9945254724666811221, state_50⟩,
  ⟨1103636907033971055, state_51⟩,
  ⟨6453032216474065633, state_52⟩,
  ⟨6692844379886696385, state_53⟩,
  ⟨12617351106690110031, state_54⟩,
  ⟨15365353095327210671, state_55⟩,
  ⟨15154907148007020891, state_56⟩,
  ⟨2753005537885932089, state_57⟩,
  ⟨7167705250650395013, state_58⟩,
  ⟨6761893097568072047, state_59⟩,
  ⟨9537391904076459535, state_60⟩,
  ⟨8645015213924642467, state_61⟩,
  ⟨449599926270234627, state_62⟩,
  ⟨18271308359605890559, state_63⟩,
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
  ⟨4051294184872934097, state_64⟩,
  ⟨13239329358345752297, state_65⟩,
  ⟨6067115170200795983, state_66⟩,
  ⟨12653793115675329203, state_67⟩,
  ⟨8997539565618913887, state_68⟩,
  ⟨6033556431810211145, state_69⟩,
  ⟨1646437012527314703, state_70⟩,
  ⟨6619083878387608551, state_71⟩,
  ⟨6011571058961373087, state_72⟩,
  ⟨11651071675740772501, state_73⟩,
  ⟨3471872388246278893, state_74⟩,
  ⟨17309929839636814283, state_75⟩,
  ⟨2024778530059524409, state_76⟩,
  ⟨11959044725070310459, state_77⟩,
  ⟨7350358102751294233, state_78⟩,
  ⟨141656413702953989, state_79⟩,
  ⟨7649279306060192553, state_80⟩,
  ⟨3040592683741176327, state_81⟩,
  ⟨4123921542208368649, state_82⟩,
  ⟨13469115162305632827, state_83⟩,
  ⟨8860428539986616601, state_84⟩,
  ⟨7604164131667933522, state_85⟩,
  ⟨7602250981435224832, state_86⟩,
  ⟨9106944172746534115, state_87⟩,
  ⟨9105031022513825425, state_88⟩,
  ⟨11776047125723535936, state_89⟩,
  ⟨11774133975490827246, state_90⟩,
  ⟨4826372239416557227, state_91⟩,
  ⟨13271419674276300059, state_92⟩,
  ⟨7269099751161058081, state_93⟩,
  ⟨18354765850107252009, state_94⟩,
  ⟨3316301802181234859, state_95⟩,
]
def carrier_3 : List State := [
  state_96,
  state_97,
  state_98,
  state_99,
  state_100,
  state_101,
  state_102,
  state_103,
  state_104,
  state_105,
  state_106,
]
def index_3 : List StateSlot := [
  ⟨11761349237040977691, state_96⟩,
  ⟨13146010163720922255, state_97⟩,
  ⟨10394900695393842523, state_98⟩,
  ⟨1908121056535513485, state_99⟩,
  ⟨10353168491395256317, state_100⟩,
  ⟨9637493610064303367, state_101⟩,
  ⟨18251269784919589155, state_102⟩,
  ⟨2636175304702331075, state_103⟩,
  ⟨11081222739562073907, state_104⟩,
  ⟨17597163674253021207, state_105⟩,
  ⟨14846054205925941475, state_106⟩,
]
def carrier : List State := carrier_0 ++ carrier_1 ++ carrier_2 ++ carrier_3
def carrierIndex : List StateSlot := index_0 ++ index_1 ++ index_2 ++ index_3
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
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "call", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.gam .h], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg], direction := .down, log := [.gam .h, .gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body], direction := .down, log := [.gam .h, .gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body, .body], direction := .down, log := [.gam .h, .gam .h], tape := [.mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg], direction := .up, log := [.gam .h, .gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg], direction := .up, log := [.gam .h, .gam .h], tape := [.ans .h false, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg], direction := .up, log := [.gam .h, .gam .h], tape := [.ans .h true, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .down, log := [.gam .h], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .down, log := [.gam .h], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })⟩],
]
def expectedRows_1 : List (List Edge) := [
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .up, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .down, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
]
def expectedRows_2 : List (List Edge) := [
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩, ⟨-1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
]
def expectedRows_3 : List (List Edge) := [
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt0 ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt1 ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn] (.cons (.gam .h) (.nil))⟩], .bundle []] })⟩],
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
-- states=107 recalls=2 fire=3 certified_fire=3 h_reconvergences=2
end p_q2
end QalcCanonicalRRI
