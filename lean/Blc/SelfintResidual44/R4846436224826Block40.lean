import Blc.SelfintResidual44.R4846436224826Data

set_option Elab.async false
namespace Certgen.R4846436224826
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok960 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 1007) 960 24 = true := by decide +kernel
theorem ok984 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 1007) 984 23 = true := by decide +kernel
end Certgen.R4846436224826
