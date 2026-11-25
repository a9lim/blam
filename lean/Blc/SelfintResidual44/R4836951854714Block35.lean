import Blc.SelfintResidual44.R4836951854714Data

set_option Elab.async false
namespace Certgen.R4836951854714
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok840 : Certgen.FloorIndex.rangeOK (Packed.valid d P 933) 840 24 = true := by decide +kernel
theorem ok864 : Certgen.FloorIndex.rangeOK (Packed.valid d P 933) 864 24 = true := by decide +kernel
theorem ok888 : Certgen.FloorIndex.rangeOK (Packed.valid d P 933) 888 24 = true := by decide +kernel
theorem ok912 : Certgen.FloorIndex.rangeOK (Packed.valid d P 933) 912 21 = true := by decide +kernel
end Certgen.R4836951854714
