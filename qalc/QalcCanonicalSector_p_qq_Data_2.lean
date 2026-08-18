import QalcCanonicalSector_p_qq_Core

namespace QalcCanonicalRRI
open QalcConcrete
set_option maxHeartbeats 0
set_option maxRecDepth 100000
namespace p_qq
def state_64 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_65 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_66 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_67 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_68 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_69 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn, .fn], direction := .up, log := [], tape := [.bullet, .bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_70 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_71 : State := .run ({ path := [.fn, .fn, .body, .body, .fn, .fn], direction := .up, log := [], tape := [.bullet, .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_72 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_73 : State := .run ({ path := [.fn, .fn, .body, .body, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_74 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_75 : State := .run ({ path := [.fn, .fn, .body, .body, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_76 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_77 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_78 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_79 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_80 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_81 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_82 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_83 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_84 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_85 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_86 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_87 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_88 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_89 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_90 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_91 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil)), .gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_92 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg, .body], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_93 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.gam .h, .bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_94 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg, .body, .body], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_95 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
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
  ⟨2178785740550313015, state_64⟩,
  ⟨5109168084999392253, state_65⟩,
  ⟨1542081000721141255, state_66⟩,
  ⟨5743687250816832439, state_67⟩,
  ⟨5526257080436008183, state_68⟩,
  ⟨17924494274404044839, state_69⟩,
  ⟨4561907159160164733, state_70⟩,
  ⟨17287789534574873079, state_71⟩,
  ⟨196773112726106349, state_72⟩,
  ⟨2825221540580188391, state_73⟩,
  ⟨7547875665817705533, state_74⟩,
  ⟨17157156727556604545, state_75⟩,
  ⟨4617451270399587629, state_76⟩,
  ⟨12792022681122546161, state_77⟩,
  ⟨2048666886858249469, state_78⟩,
  ⟨1696381160504593729, state_79⟩,
  ⟨14869648668629209447, state_80⟩,
  ⟨17212700838796027441, state_81⟩,
  ⟨11001086510829498001, state_82⟩,
  ⟨14643916455254689281, state_83⟩,
  ⟨3917137506061825945, state_84⟩,
  ⟨1476667426327985819, state_85⟩,
  ⟨3618535568992004071, state_86⟩,
  ⟨6260876637186469729, state_87⟩,
  ⟨13411461955800129029, state_88⟩,
  ⟨17623671706128349289, state_89⟩,
  ⟨17117925192037405023, state_90⟩,
  ⟨15376804666261635095, state_91⟩,
  ⟨13732080489064254325, state_92⟩,
  ⟨7559967450487017225, state_93⟩,
  ⟨17458988341103311943, state_94⟩,
  ⟨11266430686724293219, state_95⟩,
]
end p_qq
end QalcCanonicalRRI
