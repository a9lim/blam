import Blc.SelfintResidual44.R4846434766662Data

set_option Elab.async false
namespace Certgen.R4846434766662
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
theorem ok240 : Certgen.FloorIndex.rangeOK (Packed.valid d P 467) 240 24 = true := by decide +kernel
theorem ok264 : Certgen.FloorIndex.rangeOK (Packed.valid d P 467) 264 24 = true := by decide +kernel
theorem ok288 : Certgen.FloorIndex.rangeOK (Packed.valid d P 467) 288 24 = true := by decide +kernel
theorem ok312 : Certgen.FloorIndex.rangeOK (Packed.valid d P 467) 312 24 = true := by decide +kernel
theorem ok336 : Certgen.FloorIndex.rangeOK (Packed.valid d P 467) 336 24 = true := by decide +kernel
end Certgen.R4846434766662
