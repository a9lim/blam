import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692869695990D2

set_option Elab.async false
namespace Blc.Floor45.Probe9692869695990
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q407 (e : Env 4) (h0 : e 0 = 0) (h1 : e 1 = 1) : Typed Op767ae883a0ae.G e lit31 0 := .app (q363 e h1) (q406 e h0) (by decide)
end Blc.Floor45.Probe9692869695990
