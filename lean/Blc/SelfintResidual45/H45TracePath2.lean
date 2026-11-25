import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45TracePath1

set_option Elab.async false
namespace Blc.H45.Trace
open Term SelfintLowerBound SelfintControl SelfintProbe SelfintSharp
set_option maxRecDepth 15000
set_option maxHeartbeats 2500000
theorem p10 : Betas n155 n166 := sound (n := 22) (by decide)
theorem p11 : Betas n166 n176 := sound (n := 22) (by decide)
theorem p12 : Betas n176 n186 := sound (n := 22) (by decide)
theorem p13 : Betas n186 n199 := sound (n := 22) (by decide)
theorem p14 : Betas n199 n208 := sound (n := 22) (by decide)
end Blc.H45.Trace
