import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45TracePath6

set_option Elab.async false
namespace Blc.H45.Trace
open Term SelfintLowerBound SelfintControl SelfintProbe SelfintSharp
set_option maxRecDepth 15000
set_option maxHeartbeats 2500000
theorem p35 : Betas n336 n342 := sound (n := 22) (by decide)
theorem p36 : Betas n342 n349 := sound (n := 22) (by decide)
theorem p37 : Betas n349 n352 := sound (n := 22) (by decide)
theorem p38 : Betas n352 n356 := sound (n := 22) (by decide)
theorem p39 : Betas n356 n358 := sound (n := 22) (by decide)
end Blc.H45.Trace
