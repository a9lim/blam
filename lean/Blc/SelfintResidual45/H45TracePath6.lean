import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45TracePath5

set_option Elab.async false
namespace Blc.H45.Trace
open Term SelfintLowerBound SelfintControl SelfintProbe SelfintSharp
set_option maxRecDepth 15000
set_option maxHeartbeats 2500000
theorem p30 : Betas n310 n316 := sound (n := 22) (by decide)
theorem p31 : Betas n316 n321 := sound (n := 22) (by decide)
theorem p32 : Betas n321 n327 := sound (n := 22) (by decide)
theorem p33 : Betas n327 n332 := sound (n := 22) (by decide)
theorem p34 : Betas n332 n336 := sound (n := 22) (by decide)
end Blc.H45.Trace
