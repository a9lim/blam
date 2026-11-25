import Blc.SelfintResidual45.Guided
import Blc.SelfintResidual45.Probe9692869757870D2

set_option Elab.async false
namespace Blc.Floor45.Probe9692869757870
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

theorem q407 (e : Env 4) (h0 : e 0 = 2) (h1 : e 1 = 3) : Typed Op92031aceec5b.G e lit31 2 := .app (q363 e h1) (q406 e h0) (by decide)
end Blc.Floor45.Probe9692869757870
