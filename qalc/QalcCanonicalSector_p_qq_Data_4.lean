import QalcCanonicalSector_p_qq_Core

namespace QalcCanonicalRRI
open QalcConcrete
set_option maxHeartbeats 0
set_option maxRecDepth 100000
namespace p_qq
def state_128 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_129 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_130 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, false, 2⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_131 : State := .run ({ path := [.fn, .arg], direction := .down, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := some ⟨.h, true, 2⟩, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_132 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_133 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_134 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_135 : State := .run ({ path := [.fn, .arg], direction := .up, log := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_136 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_137 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_138 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_139 : State := .run ({ path := [.fn, .fn], direction := .down, log := [], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil)), .bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_140 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_141 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_142 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_143 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_144 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_145 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_146 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_147 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_148 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_149 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_150 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_151 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn], direction := .up, log := [.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_152 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body, .fn, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_153 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_154 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_155 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_156 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg], direction := .up, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body, .fn, .fn] (.nil), .bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_157 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg, .body, .fn, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, false, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_158 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .fn, .arg, .body, .fn], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) false (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
def state_159 : State := .run ({ path := [.fn, .fn, .body, .body, .arg, .fn, .arg, .body], direction := .down, log := [.alpha .h (.lp [.fn, .fn, .body, .body, .arg, .fn, .fn, .fn, .fn] (.cons (.lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)) (.nil))) true (.fresh), .lp [.fn, .fn, .body, .body, .fn, .arg, .body, .fn, .fn] (.nil)], tape := [.bullet, .bullet, .bullet, .bullet, .rho], vb := none, frames := [⟨⟨.h, .lp [.fn, .fn, .body, .body, .fn, .fn, .fn, .fn] (.nil)⟩, true, .recalledAbsent (.fresh)⟩], storage := [.bundle [], .bundle []] })
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
  ⟨7994839742696802219, state_128⟩,
  ⟨16529127660771513707, state_129⟩,
  ⟨9303889804631443766, state_130⟩,
  ⟨9301976654398735076, state_131⟩,
  ⟨12745649690590103881, state_132⟩,
  ⟨3708154675093579417, state_133⟩,
  ⟨14198471013574894019, state_134⟩,
  ⟨5160975998078369555, state_135⟩,
  ⟨9424407541521256421, state_136⟩,
  ⟨6276939058634917577, state_137⟩,
  ⟨1559497697900183249, state_138⟩,
  ⟨376757991126859957, state_139⟩,
  ⟨8297111036242959243, state_140⟩,
  ⟨9207363454053035481, state_141⟩,
  ⟨4134766757933561955, state_142⟩,
  ⟨13544015816146589107, state_143⟩,
  ⟨3900834552686963249, state_144⟩,
  ⟨11296367235949809771, state_145⟩,
  ⟨813524608864714495, state_146⟩,
  ⟨16112800199687927267, state_147⟩,
  ⟨9176293418928056841, state_148⟩,
  ⟨648424207906848413, state_149⟩,
  ⟨13358025253011379969, state_150⟩,
  ⟨596480521396493555, state_151⟩,
  ⟨7111003098857252369, state_152⟩,
  ⟨10306928105937836377, state_153⟩,
  ⟨8961748769455383975, state_154⟩,
  ⟨16357281452718230497, state_155⟩,
  ⟨1772984405917812711, state_156⟩,
  ⟨3365969811383371469, state_157⟩,
  ⟨14237207635696477567, state_158⟩,
  ⟨5709338424675269139, state_159⟩,
]
end p_qq
end QalcCanonicalRRI
