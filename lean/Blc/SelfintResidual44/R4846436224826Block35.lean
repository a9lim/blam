import Blc.SelfintResidual44.R4846436224826Data

set_option Elab.async false
namespace Certgen.R4846436224826
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok840 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 1007) 840 24 = true := by decide +kernel
theorem ok864 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 1007) 864 24 = true := by decide +kernel
theorem ok888 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 1007) 888 24 = true := by decide +kernel
theorem ok912 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 1007) 912 24 = true := by decide +kernel
theorem ok936 : Certgen.FloorIndex.rangeOK (SafePacked.valid d P 1007) 936 24 = true := by decide +kernel
end Certgen.R4846436224826
