import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45TracePath3

set_option Elab.async false
namespace Blc.H45.Trace
open Term SelfintLowerBound SelfintControl SelfintProbe SelfintSharp
set_option maxRecDepth 15000
set_option maxHeartbeats 2500000
theorem p20 : Betas n245 n253 := sound (n := 22) (by decide)
theorem p21 : Betas n253 n261 := sound (n := 22) (by decide)
theorem p22 : Betas n261 n269 := sound (n := 22) (by decide)
theorem p23 : Betas n269 n276 := sound (n := 22) (by decide)
theorem p24 : Betas n276 n283 := sound (n := 22) (by decide)
end Blc.H45.Trace
