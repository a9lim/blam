import Blc.SelfintResidual44.R4846166069162Data

set_option Elab.async false
namespace Certgen.R4846166069162
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok120 : Certgen.FloorIndex.rangeOK (Packed.valid d P 122) 120 2 = true := by decide +kernel
end Certgen.R4846166069162
