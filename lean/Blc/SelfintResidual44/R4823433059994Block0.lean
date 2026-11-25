import Blc.SelfintResidual44.R4823433059994Data

set_option Elab.async false
namespace Certgen.R4823433059994
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok0 : Certgen.FloorIndex.rangeOK (Packed.valid d P 204) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (Packed.valid d P 204) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (Packed.valid d P 204) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (Packed.valid d P 204) 72 24 = true := by decide +kernel
theorem ok96 : Certgen.FloorIndex.rangeOK (Packed.valid d P 204) 96 24 = true := by decide +kernel
end Certgen.R4823433059994
