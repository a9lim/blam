import Blc.SelfintResidual44.R4838381819718Data

set_option Elab.async false
namespace Certgen.R4838381819718
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok120 : Certgen.FloorIndex.rangeOK (Packed.valid d P 143) 120 23 = true := by decide +kernel
end Certgen.R4838381819718
