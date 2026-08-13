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

namespace p_lone
def term : Term := .app (.app (.lam (.lam (.app (.var 2) (.lam (.lam (.var 2)))))) (.gate .h)) (.gate .t)
def certificate : Certificate := [([.fn, .fn, .body, .body, .arg], [])]
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
def state_12 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .body], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_13 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .body, .body], direction := .down, log := [.gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_14 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })
def state_15 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_16 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_17 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_18 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_19 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_20 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_21 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_22 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_23 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })
def state_24 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })
def state_25 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })
def state_26 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })
def state_27 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })
def state_28 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })
def state_29 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_30 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_31 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_32 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_33 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_34 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_35 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_36 : State := .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_37 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_38 : State := .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_39 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_40 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_41 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_42 : State := .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_43 : State := .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
def state_44 : State := .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })
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
  ⟨18409700225127087609, state_12⟩,
  ⟨9119292759517550987, state_13⟩,
  ⟨3653575867485865709, state_14⟩,
  ⟨13645354844083251107, state_15⟩,
  ⟨9036668221764234881, state_16⟩,
  ⟨3685783107197731057, state_17⟩,
  ⟨17523840558588266447, state_18⟩,
  ⟨17822761761897164767, state_19⟩,
  ⟨13214075139578148541, state_20⟩,
  ⟨5195853544433053425, state_21⟩,
  ⟨587166922114037199, state_22⟩,
  ⟨17777646587504905736, state_23⟩,
  ⟨17775733437272197046, state_24⟩,
  ⟨833682554873954713, state_25⟩,
  ⟨831769404641246023, state_26⟩,
  ⟨3502785507850956534, state_27⟩,
  ⟨3500872357618247844, state_28⟩,
  ⟨14999854695253529441, state_29⟩,
  ⟨4998158056403720657, state_30⟩,
  ⟨17442582206998030295, state_31⟩,
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
]
def index_1 : List StateSlot := [
  ⟨10081504232234672607, state_32⟩,
  ⟨13489784258018207073, state_33⟩,
  ⟨3488087619168398289, state_34⟩,
  ⟨4872748545848342853, state_35⟩,
  ⟨2121639077521263121, state_36⟩,
  ⟨12081603512372485699, state_37⟩,
  ⟨2079906873522676915, state_38⟩,
  ⟨1364231992191723965, state_39⟩,
  ⟨9978008167047009753, state_40⟩,
  ⟨12809657760539303289, state_41⟩,
  ⟨2807961121689494505, state_42⟩,
  ⟨9323902056380441805, state_43⟩,
  ⟨6572792588053362073, state_44⟩,
]
def carrier : List State := carrier_0 ++ carrier_1
def carrierIndex : List StateSlot := index_0 ++ index_1
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
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .body], direction := .down, log := [.gam .h], tape := [.bullet, .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "b2", .run ({ path := [.fn, .fn, .body, .body, .arg, .body, .body], direction := .down, log := [.gam .h], tape := [.mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.lp [.fn, .fn, .body, .body, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .rho], vb := none, frames := [], storage := [] })⟩],
  [⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩, ⟨1, 1, 0, "fire-h", .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .up, log := [.gam .h], tape := [.ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1g", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .down, log := [], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "var", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "arg", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "anshead", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, false, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vb2", .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.rho], vb := some ⟨.h, true, 2⟩, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "vvar", .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt1", .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
]
def expectedRows_1 : List (List Edge) := [
  [⟨1, 0, 0, "bt2", .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn, .fn, .body, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn, .body], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b4", .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [.fn], direction := .up, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "b3", .run ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt0 ({ path := [], direction := .up, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) false (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
  [⟨1, 0, 0, "rootdone", .runDone .halt1 ({ path := [], direction := .up, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn] (.nil)) true (.fresh), .rho], vb := none, frames := [], storage := [.bundle []] })⟩],
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
theorem python_rows_conform :
    (exactRowsChunk carrier_0 expectedRows_0 && exactRowsChunk carrier_1 expectedRows_1) = true := by
  simp [conform_0, conform_1]
theorem initial_checked : memBool initial carrier = true := by
  decide +kernel
theorem index_aligned : carrierIndex.map (·.state) = carrier := by
  rfl
theorem closure_chunks :
    (closureChunk carrier_0 && closureChunk carrier_1) = true := by
  simp [closure_0, closure_1]
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
    (rowsChunk carrier_0 && rowsChunk carrier_1) = true := by
  simp [rows_0, rows_1]
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
-- states=45 recalls=0 fire=1 certified_fire=1 h_reconvergences=0
end p_lone
end QalcCanonicalRRI
