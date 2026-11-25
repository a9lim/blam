import Blc.SelfintResidual44.R4837884328390Data

set_option Elab.async false
namespace Certgen.R4837884328390
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok0 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 0 24 = true := by decide +kernel
theorem ok24 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 24 24 = true := by decide +kernel
theorem ok48 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 48 24 = true := by decide +kernel
theorem ok72 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 72 24 = true := by decide +kernel
theorem ok96 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 96 24 = true := by decide +kernel
end Certgen.R4837884328390
