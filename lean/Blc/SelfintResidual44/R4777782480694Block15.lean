import Blc.SelfintResidual44.R4777782480694Data

set_option Elab.async false
namespace Certgen.R4777782480694
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok360 : Certgen.FloorIndex.rangeOK (Packed.valid d P 405) 360 24 = true := by decide +kernel
theorem ok384 : Certgen.FloorIndex.rangeOK (Packed.valid d P 405) 384 21 = true := by decide +kernel
end Certgen.R4777782480694
