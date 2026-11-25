import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692402110306D1

set_option Elab.async false
namespace Blc.Floor45.Probe9692402110306
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q282 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op6cd54e290b69.G e lit30 0 := .app (q239 e h1) (q281 e h0) (by decide)
end Blc.Floor45.Probe9692402110306
