import Blc.SelfintResidual44.R4846426787450Data

set_option Elab.async false
namespace Certgen.R4846426787450
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok480 : Certgen.FloorIndex.rangeOK (Packed.valid d P 543) 480 24 = true := by decide +kernel
theorem ok504 : Certgen.FloorIndex.rangeOK (Packed.valid d P 543) 504 24 = true := by decide +kernel
theorem ok528 : Certgen.FloorIndex.rangeOK (Packed.valid d P 543) 528 15 = true := by decide +kernel
end Certgen.R4846426787450
