import Blc.SelfintResidual43.R2423217386526D14

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
theorem bl480 : rangeOK good 480 12 = true := by decide +kernel
theorem bl492 : rangeOK good 492 12 = true := by decide +kernel
theorem bl504 : rangeOK good 504 12 = true := by decide +kernel
theorem bl516 : rangeOK good 516 12 = true := by decide +kernel
end R2423217386526
end Blc.Floor43
