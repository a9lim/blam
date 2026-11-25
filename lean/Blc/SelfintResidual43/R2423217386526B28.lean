import Blc.SelfintResidual43.R2423217386526D14

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
theorem bl336 : rangeOK good 336 12 = true := by decide +kernel
theorem bl348 : rangeOK good 348 12 = true := by decide +kernel
theorem bl360 : rangeOK good 360 12 = true := by decide +kernel
theorem bl372 : rangeOK good 372 12 = true := by decide +kernel
end R2423217386526
end Blc.Floor43
