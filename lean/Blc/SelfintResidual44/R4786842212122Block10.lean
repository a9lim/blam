import Blc.SelfintResidual44.R4786842212122Data

set_option Elab.async false
namespace Certgen.R4786842212122
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok240 : Certgen.FloorIndex.rangeOK (Packed.valid d P 286) 240 24 = true := by decide +kernel
theorem ok264 : Certgen.FloorIndex.rangeOK (Packed.valid d P 286) 264 22 = true := by decide +kernel
end Certgen.R4786842212122
