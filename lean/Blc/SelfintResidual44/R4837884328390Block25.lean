import Blc.SelfintResidual44.R4837884328390Data

set_option Elab.async false
namespace Certgen.R4837884328390
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok600 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 600 24 = true := by decide +kernel
theorem ok624 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 624 24 = true := by decide +kernel
theorem ok648 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 670) 648 22 = true := by decide +kernel
end Certgen.R4837884328390
