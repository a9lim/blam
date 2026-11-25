import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45TracePath0

set_option Elab.async false
namespace Blc.H45.Trace
open Term SelfintLowerBound SelfintControl SelfintProbe SelfintSharp
set_option maxRecDepth 15000
set_option maxHeartbeats 2500000
theorem p5 : Betas n98 n110 := sound (n := 22) (by decide)
theorem p6 : Betas n110 n125 := sound (n := 22) (by decide)
theorem p7 : Betas n125 n136 := sound (n := 22) (by decide)
theorem p8 : Betas n136 n145 := sound (n := 22) (by decide)
theorem p9 : Betas n145 n155 := sound (n := 22) (by decide)
end Blc.H45.Trace
