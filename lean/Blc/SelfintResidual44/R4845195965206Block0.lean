import Blc.SelfintResidual44.R4845195965206Data

set_option Elab.async false
namespace Certgen.R4845195965206
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok0 : Certgen.FloorIndex.rangeOK (Packed.valid d P 298) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (Packed.valid d P 298) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (Packed.valid d P 298) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (Packed.valid d P 298) 72 24 = true := by decide +kernel
theorem ok96 : Certgen.FloorIndex.rangeOK (Packed.valid d P 298) 96 24 = true := by decide +kernel
end Certgen.R4845195965206
