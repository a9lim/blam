import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45TracePath2

set_option Elab.async false
namespace Blc.H45.Trace
open Term SelfintLowerBound SelfintControl SelfintProbe SelfintSharp
set_option maxRecDepth 15000
set_option maxHeartbeats 2500000
theorem p15 : Betas n208 n217 := sound (n := 22) (by decide)
theorem p16 : Betas n217 n224 := sound (n := 22) (by decide)
theorem p17 : Betas n224 n231 := sound (n := 22) (by decide)
theorem p18 : Betas n231 n238 := sound (n := 22) (by decide)
theorem p19 : Betas n238 n245 := sound (n := 22) (by decide)
end Blc.H45.Trace
