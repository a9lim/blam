import Blc.SelfintResidual43.R2423217386526D14

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
theorem bl528 : rangeOK good 528 12 = true := by decide +kernel
theorem bl540 : rangeOK good 540 12 = true := by decide +kernel
theorem bl552 : rangeOK good 552 12 = true := by decide +kernel
theorem bl564 : rangeOK good 564 12 = true := by decide +kernel
end R2423217386526
end Blc.Floor43
