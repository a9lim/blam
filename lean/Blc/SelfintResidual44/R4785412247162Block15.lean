import Blc.SelfintResidual44.R4785412247162Data

set_option Elab.async false
namespace Certgen.R4785412247162
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok360 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 360 24 = true := by decide +kernel
theorem ok384 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 384 24 = true := by decide +kernel
theorem ok408 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 408 24 = true := by decide +kernel
theorem ok432 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 432 24 = true := by decide +kernel
theorem ok456 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 456 24 = true := by decide +kernel
end Certgen.R4785412247162
