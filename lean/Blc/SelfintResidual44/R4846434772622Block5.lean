import Blc.SelfintResidual44.R4846434772622Data

set_option Elab.async false
namespace Certgen.R4846434772622
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok120 : Certgen.FloorIndex.rangeOK (Packed.valid d P 140) 120 20 = true := by decide +kernel
end Certgen.R4846434772622
