import Blc.SelfintResidual44.R4846224789318Data

set_option Elab.async false
namespace Certgen.R4846224789318
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok480 : Certgen.FloorIndex.rangeOK (Packed.valid d P 494) 480 14 = true := by decide +kernel
end Certgen.R4846224789318
