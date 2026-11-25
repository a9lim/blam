import Blc.SelfintResidual44.R4777782480694Data

set_option Elab.async false
namespace Certgen.R4777782480694
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok240 : Certgen.FloorIndex.rangeOK (Packed.valid d P 405) 240 24 = true := by decide +kernel
theorem ok264 : Certgen.FloorIndex.rangeOK (Packed.valid d P 405) 264 24 = true := by decide +kernel
theorem ok288 : Certgen.FloorIndex.rangeOK (Packed.valid d P 405) 288 24 = true := by decide +kernel
theorem ok312 : Certgen.FloorIndex.rangeOK (Packed.valid d P 405) 312 24 = true := by decide +kernel
theorem ok336 : Certgen.FloorIndex.rangeOK (Packed.valid d P 405) 336 24 = true := by decide +kernel
end Certgen.R4777782480694
