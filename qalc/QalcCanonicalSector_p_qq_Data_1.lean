import QalcCanonicalSector_p_qq_Core

namespace QalcCanonicalRRI
open QalcConcrete
set_option maxHeartbeats 0
set_option maxRecDepth 100000
namespace p_qq
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
def state_42 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_43 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_44 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_45 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_46 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_47 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .body, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_48 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_49 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_50 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_51 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh)], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_52 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_53 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .down, log := [], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_54 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_55 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_56 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_57 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .down, log := [], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_58 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_59 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_60 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_61 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [], storage := [.bundle []] })
def state_62 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_63 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
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
  ⟨17675232626461194343, state_42⟩,
  ⟨17206436229105097653, state_43⟩,
  ⟨14958948092799717007, state_44⟩,
  ⟨6834518224544800791, state_45⟩,
  ⟨18026272762054571143, state_46⟩,
  ⟨10172103594294539683, state_47⟩,
  ⟨17895477919901223821, state_48⟩,
  ⟨13472005795613954695, state_49⟩,
  ⟨8034712826861293083, state_50⟩,
  ⟨15874899971265072243, state_51⟩,
  ⟨1743932335884266303, state_52⟩,
  ⟨1551417214522671377, state_53⟩,
  ⟨3445788561803128881, state_54⟩,
  ⟨2188121954351843137, state_55⟩,
  ⟨361508895181241355, state_56⟩,
  ⟨8454059004474182353, state_57⟩,
  ⟨7062299349969627283, state_58⟩,
  ⟨7819548634749767855, state_59⟩,
  ⟨7810203624855212045, state_60⟩,
  ⟨7071635563771157405, state_61⟩,
  ⟨8444722790672652231, state_62⟩,
  ⟨4361263810113807491, state_63⟩,
]
end p_qq
end QalcCanonicalRRI
