import Blc.SelfintResidual44.R4779506667130Data

set_option Elab.async false
namespace Certgen.R4779506667130
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok480 : Certgen.FloorIndex.rangeOK (Packed.valid d P 795) 480 24 = true := by decide +kernel
theorem ok504 : Certgen.FloorIndex.rangeOK (Packed.valid d P 795) 504 24 = true := by decide +kernel
theorem ok528 : Certgen.FloorIndex.rangeOK (Packed.valid d P 795) 528 24 = true := by decide +kernel
theorem ok552 : Certgen.FloorIndex.rangeOK (Packed.valid d P 795) 552 24 = true := by decide +kernel
theorem ok576 : Certgen.FloorIndex.rangeOK (Packed.valid d P 795) 576 24 = true := by decide +kernel
end Certgen.R4779506667130
