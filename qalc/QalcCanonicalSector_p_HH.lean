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

namespace p_HH
def term : Term := .app (.app (.lam (.lam (.app (.var 2) (.app (.var 2) (.lam (.lam (.var 2))))))) (.gate .h)) (.gate .t)
def certificate : Certificate := [([.fn, .fn, .body, .body, .arg, .arg], [])]
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
def state_13 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_14 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_15 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_16 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_17 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_18 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .down, log := [.gam .h, .gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_19 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body], direction := .down, log := [.gam .h, .gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_20 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body, .body], direction := .down, log := [.gam .h, .gam .h], tape := [.mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_21 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_22 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .gam .h], tape := [.ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_23 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .gam .h], tape := [.ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_24 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.gam .h], tape := [.gam .h, .ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_25 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.gam .h], tape := [.gam .h, .ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_26 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_27 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_28 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_29 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_30 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })
def state_31 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })
def state_32 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })
def state_33 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })
def state_34 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })
def state_35 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })
def state_36 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_37 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_38 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_39 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_40 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_41 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_42 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_43 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_44 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_45 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_46 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_47 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_48 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_49 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_50 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_51 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_52 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_53 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_54 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_55 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_56 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_57 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_58 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_59 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_60 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_61 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_62 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_63 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_64 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_65 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_66 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_67 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_68 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_69 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_70 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_71 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_72 : State := .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
def state_73 : State := .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })
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
  ⟨1556181922675042025, state_13⟩,
  ⟨6094730895344022083, state_14⟩,
  ⟨16299482142140026091, state_15⟩,
  ⟨8944866155408196537, state_16⟩,
  ⟨4908373345073312871, state_17⟩,
  ⟨12558503464304911361, state_18⟩,
  ⟨17699244999453208987, state_19⟩,
  ⟨13386652769162935865, state_20⟩,
  ⟨13864862971300782775, state_21⟩,
  ⟨5475188222839019157, state_22⟩,
  ⟨13931550755116888287, state_23⟩,
  ⟨670334245838436131, state_24⟩,
  ⟨9126696778116305261, state_25⟩,
  ⟨7363192036103157517, state_26⟩,
  ⟨15819554568381026647, state_27⟩,
  ⟨12061443042905149351, state_28⟩,
  ⟨2071061501473466865, state_29⟩,
  ⟨17250818391377310662, state_30⟩,
  ⟨17248905241144601972, state_31⟩,
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
  ⟨10848545641033713859, state_32⟩,
  ⟨10846632490801005169, state_33⟩,
  ⟨986440038929948932, state_34⟩,
  ⟨984526888697240242, state_35⟩,
  ⟨13771817800315004115, state_36⟩,
  ⟨7213700432300560803, state_37⟩,
  ⟨2413190987034470817, state_38⟩,
  ⟨2675142663538555057, state_39⟩,
  ⟨2380709003248290895, state_40⟩,
  ⟨14269335708943399199, state_41⟩,
  ⟨6745843049682349279, state_42⟩,
  ⟨18251600837448813859, state_43⟩,
  ⟨721083210036705129, state_44⟩,
  ⟨14559140661427240519, state_45⟩,
  ⟨9208255546860736695, state_46⟩,
  ⟨4599568924541720469, state_47⟩,
  ⟨4898490127850618789, state_48⟩,
  ⟨289803505531602563, state_49⟩,
  ⟨10718325984096059063, state_50⟩,
  ⟨6109639361777042837, state_51⟩,
  ⟨4853374953458359758, state_52⟩,
  ⟨4851461803225651068, state_53⟩,
  ⟨6356154994536960351, state_54⟩,
  ⟨6354241844304251661, state_55⟩,
  ⟨9025257947513962172, state_56⟩,
  ⟨9023344797281253482, state_57⟩,
  ⟨2075583061206983463, state_58⟩,
  ⟨10520630496066726295, state_59⟩,
  ⟨4518310572951484317, state_60⟩,
  ⟨15603976671897678245, state_61⟩,
  ⟨565512623971661095, state_62⟩,
  ⟨9010560058831403927, state_63⟩,
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
]
def index_2 : List StateSlot := [
  ⟨10395220985511348491, state_64⟩,
  ⟨7644111517184268759, state_65⟩,
  ⟨17604075952035491337, state_66⟩,
  ⟨7602379313185682553, state_67⟩,
  ⟨6886704431854729603, state_68⟩,
  ⟨15500480606710015391, state_69⟩,
  ⟨18332130200202308927, state_70⟩,
  ⟨8330433561352500143, state_71⟩,
  ⟨14846374496043447443, state_72⟩,
  ⟨12095265027716367711, state_73⟩,
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
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "call", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .down, log := [.gam .h, .gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body], direction := .down, log := [.gam .h, .gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body, .body], direction := .down, log := [.gam .h, .gam .h], tape := [.mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .gam .h], tape := [.ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .gam .h], tape := [.ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.gam .h], tape := [.gam .h, .ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.gam .h], tape := [.gam .h, .ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })⟩],
]
def expectedRows_1 : List (List Edge) := [
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.mu .h, .bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.gam .h], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) false (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))) true (.fresh), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩, ⟨-1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
]
def expectedRows_2 : List (List Edge) := [
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt0 ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt1 ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.decoded (⟨.h, .lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.gam .h) (.nil))⟩), .bundle []] })⟩],
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
-- states=74 recalls=0 fire=3 certified_fire=1 h_reconvergences=2
end p_HH
end QalcCanonicalRRI
