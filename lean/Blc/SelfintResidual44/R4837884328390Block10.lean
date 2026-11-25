import Blc.SelfintResidual44.R4837884328390Data

set_option Elab.async false
namespace Certgen.R4837884328390
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok240 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 240 24 = true := by decide +kernel
theorem ok264 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 264 24 = true := by decide +kernel
theorem ok288 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 288 24 = true := by decide +kernel
theorem ok312 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 312 24 = true := by decide +kernel
theorem ok336 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 336 24 = true := by decide +kernel
end Certgen.R4837884328390
