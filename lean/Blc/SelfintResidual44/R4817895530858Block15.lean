import Blc.SelfintResidual44.R4817895530858Data

set_option Elab.async false
namespace Certgen.R4817895530858
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok360 : Certgen.FloorIndex.rangeOK (Packed.valid d P 377) 360 17 = true := by decide +kernel
end Certgen.R4817895530858
