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

namespace p_negative
def term : Term := .app (.app (.lam (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.lam (.var 1))) (.lam (.var 1))))) (.gate .h)) (.gate .t)
def certificate : Certificate := [([.fn, .fn, .body, .body, .fn, .fn, .arg], [])]
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
def state_41 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_42 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_43 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_44 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_45 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_46 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_47 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_48 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_49 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_50 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_51 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_52 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_53 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_54 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_55 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_56 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_57 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_58 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_59 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_60 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_61 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_62 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_63 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_64 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_65 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_66 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_67 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_68 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_69 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_70 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_71 : State := .run ({ path := [], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_72 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_73 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_74 : State := .run ({ path := [], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
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
  ⟨3786856500136574105, state_41⟩,
  ⟨13730023298776075379, state_42⟩,
  ⟨16409663909506494549, state_43⟩,
  ⟨4465400941123533629, state_44⟩,
  ⟨8642459760402307623, state_45⟩,
  ⟨4177971716855062151, state_46⟩,
  ⟨17824108870798032547, state_47⟩,
  ⟨13031589699626580453, state_48⟩,
  ⟨11349377248611032273, state_49⟩,
  ⟨12124377553743237925, state_50⟩,
  ⟨4048811259796672211, state_51⟩,
  ⟨17846193812378794725, state_52⟩,
  ⟨4092669942192314815, state_53⟩,
  ⟨5907947009641423131, state_54⟩,
  ⟨5929711954363277869, state_55⟩,
  ⟨4070896201377434389, state_56⟩,
  ⟨17867967553193675151, state_57⟩,
  ⟨17985147049461249983, state_58⟩,
  ⟨12146151294558118351, state_59⟩,
  ⟨1375444987922661421, state_60⟩,
  ⟨13053363440441460879, state_61⟩,
  ⟨13313700586753058703, state_62⟩,
  ⟨11686914898794325711, state_63⟩,
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
]
def index_2 : List StateSlot := [
  ⟨7591884328117501903, state_64⟩,
  ⟨11645182694795739505, state_65⟩,
  ⟨8499096474000844431, state_66⟩,
  ⟨1096539914610520727, state_67⟩,
  ⟨7132647932353709263, state_68⟩,
  ⟨12373236942962557095, state_69⟩,
  ⟨7090915728355123057, state_70⟩,
  ⟨16138068409326424663, state_71⟩,
  ⟨14989017021879455895, state_72⟩,
  ⟨7818969976521940647, state_73⟩,
  ⟨11583801442885808215, state_74⟩,
]
def carrier : List State := carrier_0 ++ carrier_1 ++ carrier_2
def carrierIndex : List StateSlot := index_0 ++ index_1 ++ index_2
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
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b1", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "recall", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
]
def expectedRows_2 : List (List Edge) := [
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .haltI ({ path := [], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .haltI ({ path := [], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .body] (.nil), .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })⟩],
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
-- states=75 recalls=2 fire=1 certified_fire=1 h_reconvergences=0
end p_negative
end QalcCanonicalRRI
