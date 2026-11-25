import Blc.SelfintResidual44.R4845195964534Data

set_option Elab.async false
namespace Certgen.R4845195964534
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok120 : Certgen.FloorIndex.rangeOK (Packed.valid d P 211) 120 24 = true := by decide +kernel
theorem ok144 : Certgen.FloorIndex.rangeOK (Packed.valid d P 211) 144 24 = true := by decide +kernel
theorem ok168 : Certgen.FloorIndex.rangeOK (Packed.valid d P 211) 168 24 = true := by decide +kernel
theorem ok192 : Certgen.FloorIndex.rangeOK (Packed.valid d P 211) 192 19 = true := by decide +kernel
end Certgen.R4845195964534
