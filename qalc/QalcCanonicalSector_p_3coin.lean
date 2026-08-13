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

namespace p_3coin
def term : Term := .app (.app (.lam (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.app (.var 2) (.lam (.lam (.var 2))))) (.app (.var 2) (.lam (.lam (.var 2))))))) (.gate .h)) (.gate .t)
def certificate : Certificate := [([.fn, .fn, .body, .body, .arg, .arg], []), ([.fn, .fn, .body, .body, .fn, .arg, .arg], []), ([.fn, .fn, .body, .body, .fn, .fn, .arg], [])]
def state_0 : State := .run ({ path := [], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_1 : State := .run ({ path := [.fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_2 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_3 : State := .run ({ path := [.fn, .fn, .body], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_4 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_5 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_6 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_7 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_8 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_9 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_10 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_11 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_12 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_13 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_14 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg, .body], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_15 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .body], direction := .down, log := [.gam .h], tape := [.mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_16 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_17 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_18 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_19 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_20 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_21 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_22 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_23 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_24 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_25 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })
def state_26 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })
def state_27 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })
def state_28 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })
def state_29 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })
def state_30 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })
def state_31 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_32 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_33 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_34 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_35 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_36 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_37 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_38 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_39 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_40 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_41 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_42 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_43 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_44 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_45 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_46 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_47 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_48 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_49 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_50 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_51 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .fn], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_52 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_53 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .arg], direction := .down, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_54 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_55 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .arg, .body], direction := .down, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_56 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .down, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_57 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .arg, .body, .body], direction := .down, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_58 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body], direction := .down, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_59 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .arg], direction := .up, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_60 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body, .body], direction := .down, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_61 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .arg], direction := .up, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_62 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .arg], direction := .up, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_63 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_64 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_65 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_66 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_67 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_68 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_69 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_70 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_71 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_72 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_73 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_74 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_75 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_76 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle [], .bundle []] })
def state_77 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle [], .bundle []] })
def state_78 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_79 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_80 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle [], .bundle []] })
def state_81 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle [], .bundle []] })
def state_82 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle [], .bundle []] })
def state_83 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle [], .bundle []] })
def state_84 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle [], .bundle []] })
def state_85 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle [], .bundle []] })
def state_86 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle [], .bundle []] })
def state_87 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle [], .bundle []] })
def state_88 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_89 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_90 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle [], .bundle []] })
def state_91 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle [], .bundle []] })
def state_92 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_93 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_94 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_95 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_96 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .fn], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_97 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .fn], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_98 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_99 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_100 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_101 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_102 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_103 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_104 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_105 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_106 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_107 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_108 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_109 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_110 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_111 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_112 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_113 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_114 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_115 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_116 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_117 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_118 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_119 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_120 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_121 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_122 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_123 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_124 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_125 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_126 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_127 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })
def state_128 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_129 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_130 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_131 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_132 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_133 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_134 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_135 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_136 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_137 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_138 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_139 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_140 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_141 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_142 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_143 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_144 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_145 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_146 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_147 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_148 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_149 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_150 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_151 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_152 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_153 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_154 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_155 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_156 : State := .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_157 : State := .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_158 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_159 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_160 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_161 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_162 : State := .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_163 : State := .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
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
  ⟨7112511702188933705, state_6⟩,
  ⟨12834327960824490505, state_7⟩,
  ⟨896081158087118911, state_8⟩,
  ⟨17505774423532681785, state_9⟩,
  ⟨12164742505178945465, state_10⟩,
  ⟨2884329247934690399, state_11⟩,
  ⟨7493296042470754185, state_12⟩,
  ⟨1093654009453151523, state_13⟩,
  ⟨10617210478367217945, state_14⟩,
  ⟨9869155886081342571, state_15⟩,
  ⟨3339614324124833029, state_16⟩,
  ⟨9175216581810055891, state_17⟩,
  ⟨14278700519721295457, state_18⟩,
  ⟨12819465539543722721, state_19⟩,
  ⟨17922949477454962287, state_20⟩,
  ⟨10171386381642905263, state_21⟩,
  ⟨15274870319554144829, state_22⟩,
  ⟨17490912002251914001, state_23⟩,
  ⟨4147651866453601951, state_24⟩,
  ⟨10597986763785062472, state_25⟩,
  ⟨10596073613552353782, state_26⟩,
  ⟨735881161681297545, state_27⟩,
  ⟨733968011448588855, state_28⟩,
  ⟨9489248373282627190, state_29⟩,
  ⟨9487335223049918500, state_30⟩,
  ⟨9048517821602803369, state_31⟩,
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
  ⟨13622956579391473305, state_32⟩,
  ⟨16349075014324137743, state_33⟩,
  ⟨15459998591562436359, state_34⟩,
  ⟨4377071358894612089, state_35⟩,
  ⟨8951510116683282025, state_36⟩,
  ⟨13642166322208438781, state_37⟩,
  ⟨3229693858047725225, state_38⟩,
  ⟨2962617601510048403, state_39⟩,
  ⟨4136906003931067753, state_40⟩,
  ⟨11977448923119682639, state_41⟩,
  ⟨13730023298776075379, state_42⟩,
  ⟨14497659401226020817, state_43⟩,
  ⟨12655993364106642163, state_44⟩,
  ⟨13536082399536079403, state_45⟩,
  ⟨18215725210093570365, state_46⟩,
  ⟨7846503532073219211, state_47⟩,
  ⟨1448950621092287191, state_48⟩,
  ⟨6108398602824097729, state_49⟩,
  ⟨14206115827338978615, state_50⟩,
  ⟨6287870055656822447, state_51⟩,
  ⟨231457901022141157, state_52⟩,
  ⟨11974631312675417209, state_53⟩,
  ⟨6966414496643781971, state_54⟩,
  ⟨17659493639310497251, state_55⟩,
  ⟨12653175753662376733, state_56⟩,
  ⟨17194831208752006353, state_57⟩,
  ⟨6818779237394103699, state_58⟩,
  ⟨8921664929031899281, state_59⟩,
  ⟨12407986710246829029, state_60⟩,
  ⟨15565320531851868157, state_61⟩,
  ⟨10956633909532851931, state_62⟩,
  ⟨2065874018390839719, state_63⟩,
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
  ⟨14721473857830612443, state_64⟩,
  ⟨10112787235511596217, state_65⟩,
  ⟨16243864972838827681, state_66⟩,
  ⟨11635178350519811455, state_67⟩,
  ⟨16060050797008366245, state_68⟩,
  ⟨11451364174689350019, state_69⟩,
  ⟨15400018298817571967, state_70⟩,
  ⟨10791331676498555741, state_71⟩,
  ⟨16280107334247009207, state_72⟩,
  ⟨11671420711927992981, state_73⟩,
  ⟨11501715274669241641, state_74⟩,
  ⟨6893028652350225415, state_75⟩,
  ⟨10415156303609309902, state_76⟩,
  ⟨10413243153376601212, state_77⟩,
  ⟨4192975555803216995, state_78⟩,
  ⟨18031033007193752385, state_79⟩,
  ⟨11917936344687910495, state_80⟩,
  ⟨11916023194455201805, state_81⟩,
  ⟨16774768598875069306, state_82⟩,
  ⟨16772855448642360616, state_83⟩,
  ⟨14587039297664912316, state_84⟩,
  ⟨14585126147432203626, state_85⟩,
  ⟨18277548639953669899, state_86⟩,
  ⟨18275635489720961209, state_87⟩,
  ⟨579362942406788903, state_88⟩,
  ⟨9024410377266531735, state_89⟩,
  ⟨2499907519221120104, state_90⟩,
  ⟨2497994368988411414, state_91⟩,
  ⟨11994947759672373661, state_92⟩,
  ⟨9985978582863447461, state_93⟩,
  ⟨558786329398085471, state_94⟩,
  ⟨9003833764257828303, state_95⟩,
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
  state_107,
  state_108,
  state_109,
  state_110,
  state_111,
  state_112,
  state_113,
  state_114,
  state_115,
  state_116,
  state_117,
  state_118,
  state_119,
  state_120,
  state_121,
  state_122,
  state_123,
  state_124,
  state_125,
  state_126,
  state_127,
]
def index_3 : List StateSlot := [
  ⟨17467473539699943755, state_96⟩,
  ⟨7465776900850134971, state_97⟩,
  ⟨4868661434228747277, state_98⟩,
  ⟨7323855483456534173, state_99⟩,
  ⟨1202055047567580467, state_100⟩,
  ⟨16897689652950052351, state_101⟩,
  ⟨11765829072412440443, state_102⟩,
  ⟨1764132433562631659, state_103⟩,
  ⟨11246324765144281105, state_104⟩,
  ⟨9130485503845865425, state_105⟩,
  ⟨5589271836559144607, state_106⟩,
  ⟨2838162368232064875, state_107⟩,
  ⟨1812501061834911457, state_108⟩,
  ⟨18312134614241590349, state_109⟩,
  ⟨11026768082049537709, state_110⟩,
  ⟨11691780351003583177, state_111⟩,
  ⟨11996836914493786423, state_112⟩,
  ⟨11837402992054590075, state_113⟩,
  ⟨9950827196170652225, state_114⟩,
  ⟨10784568205120240649, state_115⟩,
  ⟨6483947524543102737, state_116⟩,
  ⟨4536837003240230013, state_117⟩,
  ⟨685732232856825533, state_118⟩,
  ⟨16506384463755797449, state_119⟩,
  ⟨17873496436250306569, state_120⟩,
  ⟨4580695685635872617, state_121⟩,
  ⟨12657744684379376875, state_122⟩,
  ⟨4568137661018425855, state_123⟩,
  ⟨6727309555262089327, state_124⟩,
  ⟨6417737697806835671, state_125⟩,
  ⟨5357178695565016813, state_126⟩,
  ⟨2731086852754437113, state_127⟩,
]
def carrier_4 : List State := [
  state_128,
  state_129,
  state_130,
  state_131,
  state_132,
  state_133,
  state_134,
  state_135,
  state_136,
  state_137,
  state_138,
  state_139,
  state_140,
  state_141,
  state_142,
  state_143,
  state_144,
  state_145,
  state_146,
  state_147,
  state_148,
  state_149,
  state_150,
  state_151,
  state_152,
  state_153,
  state_154,
  state_155,
  state_156,
  state_157,
  state_158,
  state_159,
]
def index_4 : List StateSlot := [
  ⟨13202049973542115289, state_128⟩,
  ⟨18355993296637232953, state_129⟩,
  ⟨11491394377743135043, state_130⟩,
  ⟨16645337700838252707, state_131⟩,
  ⟨4020400863146390365, state_132⟩,
  ⟨12634177038001676153, state_133⟩,
  ⟨345207496754917801, state_134⟩,
  ⟨35635639299664145, state_135⟩,
  ⟨5096341749025275849, state_136⟩,
  ⟨13541389183885018681, state_137⟩,
  ⟨6819947915034943763, state_138⟩,
  ⟨11973891238130061427, state_139⟩,
  ⟨14926050110564963245, state_140⟩,
  ⟨12174940642237883513, state_141⟩,
  ⟨16085042878348770455, state_142⟩,
  ⟨6252074979494504627, state_143⟩,
  ⟨3688161003379554475, state_144⟩,
  ⟨12133208438239297307, state_145⟩,
  ⟨17160983764227655939, state_146⟩,
  ⟨7159287125377847155, state_147⟩,
  ⟨11417533556908344357, state_148⟩,
  ⟨1584565658054078529, state_149⟩,
  ⟨8543948052057791719, state_150⟩,
  ⟨5792838583730711987, state_151⟩,
  ⟨4416215251546372065, state_152⟩,
  ⟨12861262686406114897, state_153⟩,
  ⟨15752803018581934565, state_154⟩,
  ⟨5751106379732125781, state_155⟩,
  ⟨930459547387510581, state_156⟩,
  ⟨16626094152769982465, state_157⟩,
  ⟨5035431498401172831, state_158⟩,
  ⟨13649207673256458619, state_159⟩,
]
def carrier_5 : List State := [
  state_160,
  state_161,
  state_162,
  state_163,
]
def index_5 : List StateSlot := [
  ⟨16480857266748752155, state_160⟩,
  ⟨6479160627898943371, state_161⟩,
  ⟨12995101562589890671, state_162⟩,
  ⟨10243992094262810939, state_163⟩,
]
def carrier : List State := carrier_0 ++ carrier_1 ++ carrier_2 ++ carrier_3 ++ carrier_4 ++ carrier_5
def carrierIndex : List StateSlot := index_0 ++ index_1 ++ index_2 ++ index_3 ++ index_4 ++ index_5
def expectedRows_0 : List (List Edge) := [
  [⟨1, 0, 0, "b1", .run ({ path := [.fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "call", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg, .body], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .body], direction := .down, log := [.gam .h], tape := [.mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
]
def expectedRows_1 : List (List Edge) := [
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "call", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "call", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .fn], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .arg], direction := .down, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .arg, .body], direction := .down, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .down, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .arg, .body, .body], direction := .down, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body], direction := .down, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .arg], direction := .up, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg, .body, .body], direction := .down, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .arg], direction := .up, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .arg], direction := .up, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .arg, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg, .arg], direction := .up, log := [.gam .h, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
]
def expectedRows_2 : List (List Edge) := [
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .fn], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .fn], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
]
def expectedRows_3 : List (List Edge) := [
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
]
def expectedRows_4 : List (List Edge) := [
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt0 ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt1 ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
]
def expectedRows_5 : List (List Edge) := [
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt0 ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt1 ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
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
theorem conform_4 :
    exactRowsChunk carrier_4 expectedRows_4 = true := by
  decide +kernel
theorem conform_5 :
    exactRowsChunk carrier_5 expectedRows_5 = true := by
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
theorem closure_4 : closureChunk carrier_4 = true := by
  decide +kernel
theorem rows_4 : rowsChunk carrier_4 = true := by
  decide +kernel
theorem closure_5 : closureChunk carrier_5 = true := by
  decide +kernel
theorem rows_5 : rowsChunk carrier_5 = true := by
  decide +kernel
theorem python_rows_conform :
    (exactRowsChunk carrier_0 expectedRows_0 && exactRowsChunk carrier_1 expectedRows_1 && exactRowsChunk carrier_2 expectedRows_2 && exactRowsChunk carrier_3 expectedRows_3 && exactRowsChunk carrier_4 expectedRows_4 && exactRowsChunk carrier_5 expectedRows_5) = true := by
  simp [conform_0, conform_1, conform_2, conform_3, conform_4, conform_5]
theorem initial_checked : memBool initial carrier = true := by
  decide +kernel
theorem index_aligned : carrierIndex.map (·.state) = carrier := by
  rfl
theorem closure_chunks :
    (closureChunk carrier_0 && closureChunk carrier_1 && closureChunk carrier_2 && closureChunk carrier_3 && closureChunk carrier_4 && closureChunk carrier_5) = true := by
  simp [closure_0, closure_1, closure_2, closure_3, closure_4, closure_5]
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
    (rowsChunk carrier_0 && rowsChunk carrier_1 && rowsChunk carrier_2 && rowsChunk carrier_3 && rowsChunk carrier_4 && rowsChunk carrier_5) = true := by
  simp [rows_0, rows_1, rows_2, rows_3, rows_4, rows_5]
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
-- states=164 recalls=4 fire=3 certified_fire=3 h_reconvergences=0
end p_3coin
end QalcCanonicalRRI
