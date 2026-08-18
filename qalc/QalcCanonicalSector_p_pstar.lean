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

namespace p_pstar
def term : Term := .app (.app (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 2)) (.var 2)) (.lam (.lam (.var 2)))))) (.gate .h)) (.gate .t)
def certificate : Certificate := [([.fn, .fn, .body, .body, .arg], []), ([.fn, .fn, .body, .body, .fn, .fn, .fn, .arg], [])]
def state_0 : State := .run ({ path := [], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_1 : State := .run ({ path := [.fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_2 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_3 : State := .run ({ path := [.fn, .fn, .body], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_4 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_5 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_6 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_7 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_8 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_9 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_10 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_11 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_12 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_13 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_14 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_15 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg, .body], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_16 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg, .body, .body], direction := .down, log := [.gam .h], tape := [.mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_17 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_18 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_19 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_20 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_21 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_22 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_23 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_24 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_25 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_26 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })
def state_27 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })
def state_28 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })
def state_29 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })
def state_30 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })
def state_31 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })
def state_32 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_33 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_34 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_35 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_36 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_37 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_38 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_39 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_40 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_41 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_42 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_43 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_44 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_45 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_46 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_47 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_48 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_49 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_50 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_51 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_52 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_53 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_54 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_55 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_56 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_57 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_58 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_59 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_60 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_61 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_62 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_63 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_64 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_65 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_66 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_67 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_68 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_69 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_70 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_71 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_72 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_73 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_74 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .body], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_75 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_76 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .body, .body], direction := .down, log := [.gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_77 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_78 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_79 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .body], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_80 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_81 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_82 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .body, .body], direction := .down, log := [.gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_83 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_84 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_85 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_86 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_87 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_88 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_89 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_90 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_91 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_92 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_93 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_94 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_95 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_96 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_97 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_98 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_99 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_100 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_101 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_102 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_103 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_104 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_105 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_106 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_107 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_108 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_109 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_110 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_111 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_112 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_113 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_114 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_115 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_116 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_117 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_118 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_119 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_120 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_121 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_122 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_123 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_124 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_125 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_126 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_127 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_128 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_129 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_130 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_131 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_132 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_133 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_134 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_135 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_136 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_137 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_138 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_139 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_140 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_141 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_142 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_143 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_144 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_145 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_146 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_147 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_148 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_149 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_150 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_151 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_152 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_153 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_154 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_155 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_156 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_157 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_158 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_159 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_160 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_161 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_162 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_163 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_164 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_165 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_166 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_167 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_168 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_169 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_170 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_171 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_172 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_173 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_174 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_175 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_176 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_177 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_178 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_179 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_180 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_181 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_182 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_183 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_184 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_185 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_186 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_187 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_188 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_189 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_190 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_191 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_192 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_193 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_194 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_195 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_196 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_197 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_198 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_199 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_200 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_201 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_202 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_203 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_204 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_205 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_206 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_207 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_208 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_209 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_210 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_211 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_212 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_213 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_214 : State := .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_215 : State := .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_216 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_217 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_218 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_219 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_220 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_221 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_222 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_223 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_224 : State := .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
def state_225 : State := .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })
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
  ⟨12011527906582492489, state_8⟩,
  ⟨1223769886621101271, state_9⟩,
  ⟨10629104465879467541, state_10⟩,
  ⟨2387111638965919933, state_11⟩,
  ⟨12339484641560516923, state_12⟩,
  ⟨3769535079668944881, state_13⟩,
  ⟨2088646188055256091, state_14⟩,
  ⟨11448359286168291905, state_15⟩,
  ⟨15935707598552884419, state_16⟩,
  ⟨9390387720798744759, state_17⟩,
  ⟨13452075020298915503, state_18⟩,
  ⟨3461693478867233017, state_19⟩,
  ⟨17978240054143619757, state_20⟩,
  ⟨7987858512711937271, state_21⟩,
  ⟨1233352206352930719, state_22⟩,
  ⟨9689714738630799849, state_23⟩,
  ⟨16595816613440594809, state_24⟩,
  ⟨6605435072008912323, state_25⟩,
  ⟨3338447888203204504, state_26⟩,
  ⟨3336534737970495814, state_27⟩,
  ⟨15382919211569159317, state_28⟩,
  ⟨15381006061336450627, state_29⟩,
  ⟨5520813609465394390, state_30⟩,
  ⟨5518900459232685700, state_31⟩,
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
  ⟨14927320733027696247, state_32⟩,
  ⟨8369203365013252935, state_33⟩,
  ⟨14304648244649718933, state_34⟩,
  ⟨17410604063371412593, state_35⟩,
  ⟨16309744173730721195, state_36⟩,
  ⟨9751626805716277883, state_37⟩,
  ⟨17515413145901362935, state_38⟩,
  ⟨10574426859958275899, state_39⟩,
  ⟨16527891788118138129, state_40⟩,
  ⟨4852610601322719099, state_41⟩,
  ⟨1729010769606627031, state_42⟩,
  ⟨17206436229105097653, state_43⟩,
  ⟨18139246378089083857, state_44⟩,
  ⟨5447076578474176579, state_45⟩,
  ⟨12449667510626223665, state_46⟩,
  ⟨6052114599645291645, state_47⟩,
  ⟨1721228544769352899, state_48⟩,
  ⟨362535732182431453, state_49⟩,
  ⟨10838312920655277937, state_50⟩,
  ⟨14291031916676947943, state_51⟩,
  ⟨4780634473902968399, state_52⟩,
  ⟨11516857361642237461, state_53⟩,
  ⟨11046571524025307615, state_54⟩,
  ⟨2663043075791709983, state_55⟩,
  ⟨10412061154300893117, state_56⟩,
  ⟨15856465356720247739, state_57⟩,
  ⟨9664148083322282667, state_58⟩,
  ⟨8270474270594621647, state_59⟩,
  ⟨11688687392549604939, state_60⟩,
  ⟨16840432628579219377, state_61⟩,
  ⟨3194316321434650313, state_62⟩,
  ⟨6888050829891596699, state_63⟩,
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
  ⟨13071110833252629887, state_64⟩,
  ⟨11686774242316896249, state_65⟩,
  ⟨2210357845668704363, state_66⟩,
  ⟨3192403171201941623, state_67⟩,
  ⟨7463679638449718223, state_68⟩,
  ⟨13069197683019921197, state_69⟩,
  ⟨16915836154899613915, state_70⟩,
  ⟨2208444695435995673, state_71⟩,
  ⟨13271578401072921397, state_72⟩,
  ⟨7461766488217009533, state_73⟩,
  ⟨14548647325707733867, state_74⟩,
  ⟨16913923004666905225, state_75⟩,
  ⟨5258239860098197245, state_76⟩,
  ⟨13269665250840212707, state_77⟩,
  ⟨18239267041776063583, state_78⟩,
  ⟨14546734175475025177, state_79⟩,
  ⟨16862267620249372345, state_80⟩,
  ⟨12253580997930356119, state_81⟩,
  ⟨5256326709865488555, state_82⟩,
  ⟨6902695883363852295, state_83⟩,
  ⟨2294009261044836069, state_84⟩,
  ⟨18237353891543354893, state_85⟩,
  ⟨2535650885720341643, state_86⟩,
  ⟨16373708337110877033, state_87⟩,
  ⟨16860354470016663655, state_88⟩,
  ⟨12251667847697647429, state_89⟩,
  ⟨8640336062284542167, state_90⟩,
  ⟨4031649439965525941, state_91⟩,
  ⟨6900782733131143605, state_92⟩,
  ⟨2292096110812127379, state_93⟩,
  ⟨2349555571307515387, state_94⟩,
  ⟨16187613022698050777, state_95⟩,
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
  ⟨2533737735487632953, state_96⟩,
  ⟨16371795186878168343, state_97⟩,
  ⟨4051411797226377965, state_98⟩,
  ⟨17889469248616913355, state_99⟩,
  ⟨8638422912051833477, state_100⟩,
  ⟨4029736289732817251, state_101⟩,
  ⟨967132130604490439, state_102⟩,
  ⟨14805189581995025829, state_103⟩,
  ⟨2347642421074806697, state_104⟩,
  ⟨16185699872465342087, state_105⟩,
  ⟨8117488993256516377, state_106⟩,
  ⟨3508802370937500151, state_107⟩,
  ⟨4049498646993669275, state_108⟩,
  ⟨17887556098384204665, state_109⟩,
  ⟨17158889691614676035, state_110⟩,
  ⟨12550203069295659809, state_111⟩,
  ⟨965218980371781749, state_112⟩,
  ⟨14803276431762317139, state_113⟩,
  ⟨9499912433959541325, state_114⟩,
  ⟨4891225811640525099, state_115⟩,
  ⟨17889100706350516791, state_116⟩,
  ⟨13280414084031500565, state_117⟩,
  ⟨10322712488201539341, state_118⟩,
  ⟨5714025865882523115, state_119⟩,
  ⟨2526627503169827013, state_120⟩,
  ⟨16364684954560362403, state_121⟩,
  ⟨17528970116527421435, state_122⟩,
  ⟨12920283494208405209, state_123⟩,
  ⟨824780073343990123, state_124⟩,
  ⟨14662837524734525513, state_125⟩,
  ⟨17441683660400951877, state_126⟩,
  ⟨12832997038081935651, state_127⟩,
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
  ⟨7115560564321016903, state_128⟩,
  ⟨2506873942002000677, state_129⟩,
  ⟨1009633250466874999, state_130⟩,
  ⟨14847690701857410389, state_131⟩,
  ⟨1010875387756816379, state_132⟩,
  ⟨14848932839147351769, state_133⟩,
  ⟨13591426293538727310, state_134⟩,
  ⟨13589513143306018620, state_135⟩,
  ⟨18205601407281672269, state_136⟩,
  ⟨13596914784962656043, state_137⟩,
  ⟨15094206334617327903, state_138⟩,
  ⟨15092293184384619213, state_139⟩,
  ⟨12881434987829118583, state_140⟩,
  ⟨8272748365510102357, state_141⟩,
  ⟨17763309287594329724, state_142⟩,
  ⟨17761396137361621034, state_143⟩,
  ⟨7367332395499925713, state_144⟩,
  ⟨2758645773180909487, state_145⟩,
  ⟨17568024981241758935, state_146⟩,
  ⟨7566328342391950151, state_147⟩,
  ⟨1502381364862226408, state_148⟩,
  ⟨1500468214629517718, state_149⟩,
  ⟨3527584881900254125, state_150⟩,
  ⟨11557441092539290197, state_151⟩,
  ⟨3005161405940827001, state_152⟩,
  ⟨3003248255708118311, state_153⟩,
  ⟨15640617773592753755, state_154⟩,
  ⟨5638921134742944971, state_155⟩,
  ⟨5674264358917828822, state_156⟩,
  ⟨5672351208685120132, state_157⟩,
  ⟨9295170282597839621, state_158⟩,
  ⟨8517459141870407929, state_159⟩,
]
def carrier_5 : List State := [
  state_160,
  state_161,
  state_162,
  state_163,
  state_164,
  state_165,
  state_166,
  state_167,
  state_168,
  state_169,
  state_170,
  state_171,
  state_172,
  state_173,
  state_174,
  state_175,
  state_176,
  state_177,
  state_178,
  state_179,
  state_180,
  state_181,
  state_182,
  state_183,
  state_184,
  state_185,
  state_186,
  state_187,
  state_188,
  state_189,
  state_190,
  state_191,
]
def index_5 : List StateSlot := [
  ⟨17545535218000346813, state_160⟩,
  ⟨7543838579150538029, state_161⟩,
  ⟨11549334162187366005, state_162⟩,
  ⟨7311790169699766189, state_163⟩,
  ⟨14846129479933470667, state_164⟩,
  ⟨8893404842899668219, state_165⟩,
  ⟨1770136639944699955, state_166⟩,
  ⟨5306703036711789615, state_167⟩,
  ⟨9937060156072541753, state_168⟩,
  ⟨18382107590932284585, state_169⟩,
  ⟨10166910721484341057, state_170⟩,
  ⟨5929366728996741241, state_171⟩,
  ⟨1765690723243781231, state_172⟩,
  ⟨7919298612494144183, state_173⟩,
  ⟨7575471179281306671, state_174⟩,
  ⟨13112283420305068059, state_175⟩,
  ⟨10947339833639506155, state_176⟩,
  ⟨13641114871129700983, state_177⟩,
  ⟨6952798690903329357, state_178⟩,
  ⟨3706940044953676101, state_179⟩,
  ⟨9741670861468864415, state_180⟩,
  ⟨12818314816887702967, state_181⟩,
  ⟨8957894619984331619, state_182⟩,
  ⟨14494706861008093007, state_183⟩,
  ⟨7736583728480887841, state_184⟩,
  ⟨2030556796926311749, state_185⟩,
  ⟨10163563592154973359, state_186⟩,
  ⟨15317506915250091023, state_187⟩,
  ⟨8359247420765839467, state_188⟩,
  ⟨11435891376184678019, state_189⟩,
  ⟨981914481759248435, state_190⟩,
  ⟨9595690656614534223, state_191⟩,
]
def carrier_6 : List State := [
  state_192,
  state_193,
  state_194,
  state_195,
  state_196,
  state_197,
  state_198,
  state_199,
  state_200,
  state_201,
  state_202,
  state_203,
  state_204,
  state_205,
  state_206,
  state_207,
  state_208,
  state_209,
  state_210,
  state_211,
  state_212,
  state_213,
  state_214,
  state_215,
  state_216,
  state_217,
  state_218,
  state_219,
  state_220,
  state_221,
  state_222,
  state_223,
]
def index_6 : List StateSlot := [
  ⟨1193369120774135145, state_192⟩,
  ⟨6730181361797896533, state_193⟩,
  ⟨2057855367638133919, state_194⟩,
  ⟨10502902802497876751, state_195⟩,
  ⟨570696632396157831, state_196⟩,
  ⟨15771582060156056191, state_197⟩,
  ⟨11887563729177821315, state_198⟩,
  ⟨9136454260850741583, state_199⟩,
  ⟨2575792561477160093, state_200⟩,
  ⟨8112604802500921481, state_201⟩,
  ⟨649674621992412545, state_202⟩,
  ⟨9094722056852155377, state_203⟩,
  ⟨3781461533647801833, state_204⟩,
  ⟨8935404856742919497, state_205⟩,
  ⟨8379047175521202427, state_206⟩,
  ⟨16992823350376488215, state_207⟩,
  ⟨13046556496961628525, state_208⟩,
  ⟨3213588598107362697, state_209⟩,
  ⟨1377728870159230135, state_210⟩,
  ⟨9822776305018972967, state_211⟩,
  ⟨14122497382840514009, state_212⟩,
  ⟨4120800743990705225, state_213⟩,
  ⟨16338717239709920267, state_214⟩,
  ⟨13587607771382840535, state_215⟩,
  ⟨5505461670670649789, state_216⟩,
  ⟨2754352202343570057, state_217⟩,
  ⟨12714316637194792635, state_218⟩,
  ⟨2712619998344983851, state_219⟩,
  ⟨1996945117014030901, state_220⟩,
  ⟨10610721291869316689, state_221⟩,
  ⟨13442370885361610225, state_222⟩,
  ⟨3440674246511801441, state_223⟩,
]
def carrier_7 : List State := [
  state_224,
  state_225,
]
def index_7 : List StateSlot := [
  ⟨9956615181202748741, state_224⟩,
  ⟨7205505712875669009, state_225⟩,
]
def carrier : List State := carrier_0 ++ carrier_1 ++ carrier_2 ++ carrier_3 ++ carrier_4 ++ carrier_5 ++ carrier_6 ++ carrier_7
def carrierIndex : List StateSlot := index_0 ++ index_1 ++ index_2 ++ index_3 ++ index_4 ++ index_5 ++ index_6 ++ index_7
def expectedRows_0 : List (List Edge) := [
  [⟨1, 0, 0, "b1", .run ({ path := [.fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body], direction := .down, log := [], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "call", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg, .body], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg, .body, .body], direction := .down, log := [.gam .h], tape := [.mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
]
def expectedRows_1 : List (List Edge) := [
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "call", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "call", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
]
def expectedRows_2 : List (List Edge) := [
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .body], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .body, .body], direction := .down, log := [.gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.gam .h], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .body], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .body, .body], direction := .down, log := [.gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
]
def expectedRows_3 : List (List Edge) := [
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "replay", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "replay", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "replay", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "replay", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
]
def expectedRows_4 : List (List Edge) := [
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
]
def expectedRows_5 : List (List Edge) := [
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
]
def expectedRows_6 : List (List Edge) := [
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt0 ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt1 ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
]
def expectedRows_7 : List (List Edge) := [
  [⟨1, 0, 0, "rootdone", .runDone .halt0 ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) false (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt1 ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .arg] (.cons (.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.recalledAbsent (.fresh))) (.nil))) true (.fresh), .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledPresent (.recalledAbsent (.fresh)) (.recalledAbsent (.fresh))⟩], storage := [.bundle [], .bundle []] })⟩],
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
theorem conform_6 :
    exactRowsChunk carrier_6 expectedRows_6 = true := by
  decide +kernel
theorem conform_7 :
    exactRowsChunk carrier_7 expectedRows_7 = true := by
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
theorem closure_6 : closureChunk carrier_6 = true := by
  decide +kernel
theorem rows_6 : rowsChunk carrier_6 = true := by
  decide +kernel
theorem closure_7 : closureChunk carrier_7 = true := by
  decide +kernel
theorem rows_7 : rowsChunk carrier_7 = true := by
  decide +kernel
theorem python_rows_conform :
    (exactRowsChunk carrier_0 expectedRows_0 && exactRowsChunk carrier_1 expectedRows_1 && exactRowsChunk carrier_2 expectedRows_2 && exactRowsChunk carrier_3 expectedRows_3 && exactRowsChunk carrier_4 expectedRows_4 && exactRowsChunk carrier_5 expectedRows_5 && exactRowsChunk carrier_6 expectedRows_6 && exactRowsChunk carrier_7 expectedRows_7) = true := by
  simp [conform_0, conform_1, conform_2, conform_3, conform_4, conform_5, conform_6, conform_7]
theorem initial_checked : memBool initial carrier = true := by
  decide +kernel
theorem index_aligned : carrierIndex.map (·.state) = carrier := by
  rfl
theorem closure_chunks :
    (closureChunk carrier_0 && closureChunk carrier_1 && closureChunk carrier_2 && closureChunk carrier_3 && closureChunk carrier_4 && closureChunk carrier_5 && closureChunk carrier_6 && closureChunk carrier_7) = true := by
  simp [closure_0, closure_1, closure_2, closure_3, closure_4, closure_5, closure_6, closure_7]
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
    (rowsChunk carrier_0 && rowsChunk carrier_1 && rowsChunk carrier_2 && rowsChunk carrier_3 && rowsChunk carrier_4 && rowsChunk carrier_5 && rowsChunk carrier_6 && rowsChunk carrier_7) = true := by
  simp [rows_0, rows_1, rows_2, rows_3, rows_4, rows_5, rows_6, rows_7]
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
-- states=226 recalls=6 fire=3 certified_fire=3 h_reconvergences=0
end p_pstar
end QalcCanonicalRRI
