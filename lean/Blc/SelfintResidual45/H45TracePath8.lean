import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45TracePath7

set_option Elab.async false
namespace Blc.H45.Trace
open Term SelfintLowerBound SelfintControl SelfintProbe SelfintSharp
set_option maxRecDepth 15000
set_option maxHeartbeats 2500000
theorem p40 : Betas n358 n364 := sound (n := 22) (by decide)
theorem p41 : Betas n364 n367 := sound (n := 22) (by decide)
theorem p42 : Betas n367 n369 := sound (n := 22) (by decide)
theorem p43 : Betas n369 n27 := sound (n := 5) (by decide)
end Blc.H45.Trace
