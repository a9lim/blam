import Blc.SelfintResidual45.H45Base
import Blc.SelfintResidual45.H45TraceNodes2

set_option Elab.async false
namespace Blc.H45.Trace
open Term SelfintLowerBound SelfintControl SelfintProbe SelfintSharp
set_option maxRecDepth 15000
set_option maxHeartbeats 2500000
theorem p0 : Betas n28 n59 := sound (n := 22) (by decide)
theorem p1 : Betas n59 n65 := sound (n := 22) (by decide)
theorem p2 : Betas n65 n77 := sound (n := 22) (by decide)
theorem p3 : Betas n77 n87 := sound (n := 22) (by decide)
theorem p4 : Betas n87 n98 := sound (n := 22) (by decide)
end Blc.H45.Trace
