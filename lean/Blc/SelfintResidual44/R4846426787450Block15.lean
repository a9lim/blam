import Blc.SelfintResidual44.R4846426787450Data

set_option Elab.async false
namespace Certgen.R4846426787450
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok360 : Certgen.FloorIndex.rangeOK (Packed.valid d P 543) 360 24 = true := by decide +kernel
theorem ok384 : Certgen.FloorIndex.rangeOK (Packed.valid d P 543) 384 24 = true := by decide +kernel
theorem ok408 : Certgen.FloorIndex.rangeOK (Packed.valid d P 543) 408 24 = true := by decide +kernel
theorem ok432 : Certgen.FloorIndex.rangeOK (Packed.valid d P 543) 432 24 = true := by decide +kernel
theorem ok456 : Certgen.FloorIndex.rangeOK (Packed.valid d P 543) 456 24 = true := by decide +kernel
end Certgen.R4846426787450
