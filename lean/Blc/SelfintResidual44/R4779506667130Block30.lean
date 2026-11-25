import Blc.SelfintResidual44.R4779506667130Data

set_option Elab.async false
namespace Certgen.R4779506667130
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok720 : Certgen.FloorIndex.rangeOK (Packed.valid d P 795) 720 24 = true := by decide +kernel
theorem ok744 : Certgen.FloorIndex.rangeOK (Packed.valid d P 795) 744 24 = true := by decide +kernel
theorem ok768 : Certgen.FloorIndex.rangeOK (Packed.valid d P 795) 768 24 = true := by decide +kernel
theorem ok792 : Certgen.FloorIndex.rangeOK (Packed.valid d P 795) 792 3 = true := by decide +kernel
end Certgen.R4779506667130
