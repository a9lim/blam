import Blc.SelfintResidual44.R4785412247162Data

set_option Elab.async false
namespace Certgen.R4785412247162
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok720 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 720 24 = true := by decide +kernel
theorem ok744 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 744 24 = true := by decide +kernel
theorem ok768 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 768 23 = true := by decide +kernel
end Certgen.R4785412247162
