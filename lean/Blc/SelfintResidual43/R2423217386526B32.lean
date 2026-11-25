import Blc.SelfintResidual43.R2423217386526D14

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
theorem bl384 : rangeOK good 384 12 = true := by decide +kernel
theorem bl396 : rangeOK good 396 12 = true := by decide +kernel
theorem bl408 : rangeOK good 408 12 = true := by decide +kernel
theorem bl420 : rangeOK good 420 12 = true := by decide +kernel
end R2423217386526
end Blc.Floor43
