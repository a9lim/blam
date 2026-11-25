import Blc.SelfintResidual44.R4846426026986Data

set_option Elab.async false
namespace Certgen.R4846426026986
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok120 : Certgen.FloorIndex.rangeOK (Packed.valid d P 214) 120 24 = true := by decide +kernel
theorem ok144 : Certgen.FloorIndex.rangeOK (Packed.valid d P 214) 144 24 = true := by decide +kernel
theorem ok168 : Certgen.FloorIndex.rangeOK (Packed.valid d P 214) 168 24 = true := by decide +kernel
theorem ok192 : Certgen.FloorIndex.rangeOK (Packed.valid d P 214) 192 22 = true := by decide +kernel
end Certgen.R4846426026986
