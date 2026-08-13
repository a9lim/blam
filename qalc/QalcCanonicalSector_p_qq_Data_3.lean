import QalcCanonicalSector_p_qq_Core

namespace QalcCanonicalRRI
open QalcConcrete
set_option maxHeartbeats 0
set_option maxRecDepth 100000
namespace p_qq
def state_96 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_97 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg, .body], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_98 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_99 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_100 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg, .body, .body], direction := .down, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_101 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_102 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_103 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg, .body, .body] (.nil), .mu .h, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle []] })
def state_104 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_105 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_106 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_107 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .arg], direction := .up, log := [.gam .h, .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_108 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_109 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_110 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_111 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn], direction := .down, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_112 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_113 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_114 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil)), .gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_115 : State := .run ({ path := [.fn, .fn], direction := .up, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil)), .gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_116 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_117 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_118 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.gam .h, .ans .h false, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_119 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.gam .h, .ans .h true, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_120 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_121 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_122 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 0⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_123 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 0⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_124 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_125 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_126 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 1⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_127 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 1⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
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
  ⟨12781798581766567899, state_96⟩,
  ⟨7880585983751142521, state_97⟩,
  ⟨8398759415806654855, state_98⟩,
  ⟨5600710426475728225, state_99⟩,
  ⟨11607493835790200139, state_100⟩,
  ⟨748620500482030677, state_101⟩,
  ⟨16397315584860655663, state_102⟩,
  ⟨6930304076453456095, state_103⟩,
  ⟨16375583743575164687, state_104⟩,
  ⟨13577534754244238057, state_105⟩,
  ⟨2547264910493543051, state_106⟩,
  ⟨18195959994872168037, state_107⟩,
  ⟨9701040124453279209, state_108⟩,
  ⟨6902991135122352579, state_109⟩,
  ⟨13343870068878470489, state_110⟩,
  ⟨10545821079547543859, state_111⟩,
  ⟨3699658504374372712, state_112⟩,
  ⟨3697745354141664022, state_113⟩,
  ⟨5456700834238123375, state_114⟩,
  ⟨2658651844907196745, state_115⟩,
  ⟨2382497272837160949, state_116⟩,
  ⟨2380584122604452259, state_117⟩,
  ⟨4960830250810250937, state_118⟩,
  ⟨2162781261479324307, state_119⟩,
  ⟨14044099678274472038, state_120⟩,
  ⟨14042186528041763348, state_121⟩,
  ⟨17406192704440896056, state_122⟩,
  ⟨17404279554208187366, state_123⟩,
  ⟨3251325240851800797, state_124⟩,
  ⟨12660574299064827949, state_125⟩,
  ⟨16089031472903684293, state_126⟩,
  ⟨16087118322670975603, state_127⟩,
]
end p_qq
end QalcCanonicalRRI
