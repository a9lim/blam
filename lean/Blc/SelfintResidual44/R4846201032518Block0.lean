import Blc.SelfintResidual44.R4846201032518Data

set_option Elab.async false
namespace Certgen.R4846201032518
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok0 : Certgen.FloorIndex.rangeOK (Packed.valid d P 423) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (Packed.valid d P 423) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (Packed.valid d P 423) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (Packed.valid d P 423) 72 24 = true := by decide +kernel
theorem ok96 : Certgen.FloorIndex.rangeOK (Packed.valid d P 423) 96 24 = true := by decide +kernel
end Certgen.R4846201032518
