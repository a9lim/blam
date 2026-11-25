import Blc.SelfintResidual44.R4846436224826Data

set_option Elab.async false
namespace Certgen.R4846436224826
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok600 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 1007) 600 24 = true := by decide +kernel
theorem ok624 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 1007) 624 24 = true := by decide +kernel
theorem ok648 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 1007) 648 24 = true := by decide +kernel
theorem ok672 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 1007) 672 24 = true := by decide +kernel
theorem ok696 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 1007) 696 24 = true := by decide +kernel
end Certgen.R4846436224826
