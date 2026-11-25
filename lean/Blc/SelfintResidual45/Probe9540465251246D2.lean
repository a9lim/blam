import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9540465251246D1

set_option Elab.async false
namespace Blc.Floor45.Probe9540465251246
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q287 (e : Env 4) (h0 : e 0 = 4) (h1 : e 1 = 0) : Typed Op64d01e7a837a.G e lit31 2 := .app (q243 e h1) (q286 e h0) (by decide)
end Blc.Floor45.Probe9540465251246
