import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45TracePath4

set_option Elab.async false
namespace Blc.H45.Trace
open Term SelfintLowerBound SelfintControl SelfintProbe SelfintSharp
set_option maxRecDepth 15000
set_option maxHeartbeats 2500000
theorem p25 : Betas n283 n288 := sound (n := 22) (by decide)
theorem p26 : Betas n288 n295 := sound (n := 22) (by decide)
theorem p27 : Betas n295 n300 := sound (n := 22) (by decide)
theorem p28 : Betas n300 n305 := sound (n := 22) (by decide)
theorem p29 : Betas n305 n310 := sound (n := 22) (by decide)
end Blc.H45.Trace
