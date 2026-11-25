import Blc.SelfintResidual44.R4846434482806Data

set_option Elab.async false
namespace Certgen.R4846434482806
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok120 : Certgen.FloorIndex.rangeOK (Packed.valid d P 150) 120 24 = true := by decide +kernel
theorem ok144 : Certgen.FloorIndex.rangeOK (Packed.valid d P 150) 144 6 = true := by decide +kernel
end Certgen.R4846434482806
