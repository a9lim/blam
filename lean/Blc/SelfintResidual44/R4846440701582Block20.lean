import Blc.SelfintResidual44.R4846440701582Data

set_option Elab.async false
namespace Certgen.R4846440701582
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok480 : Certgen.FloorIndex.rangeOK (Packed.valid d P 520) 480 24 = true := by decide +kernel
theorem ok504 : Certgen.FloorIndex.rangeOK (Packed.valid d P 520) 504 16 = true := by decide +kernel
end Certgen.R4846440701582
