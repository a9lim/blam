import Blc.SelfintResidual44.R4785412247162Data

set_option Elab.async false
namespace Certgen.R4785412247162
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok600 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 600 24 = true := by decide +kernel
theorem ok624 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 624 24 = true := by decide +kernel
theorem ok648 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 648 24 = true := by decide +kernel
theorem ok672 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 672 24 = true := by decide +kernel
theorem ok696 : Certgen.FloorIndex.rangeOK (Packed.valid d P 791) 696 24 = true := by decide +kernel
end Certgen.R4785412247162
