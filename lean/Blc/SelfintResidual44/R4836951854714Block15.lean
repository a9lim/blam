import Blc.SelfintResidual44.R4836951854714Data

set_option Elab.async false
namespace Certgen.R4836951854714
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok360 : Certgen.FloorIndex.rangeOK (Packed.valid d P 933) 360 24 = true := by decide +kernel
theorem ok384 : Certgen.FloorIndex.rangeOK (Packed.valid d P 933) 384 24 = true := by decide +kernel
theorem ok408 : Certgen.FloorIndex.rangeOK (Packed.valid d P 933) 408 24 = true := by decide +kernel
theorem ok432 : Certgen.FloorIndex.rangeOK (Packed.valid d P 933) 432 24 = true := by decide +kernel
theorem ok456 : Certgen.FloorIndex.rangeOK (Packed.valid d P 933) 456 24 = true := by decide +kernel
end Certgen.R4836951854714
