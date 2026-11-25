import Blc.SelfintResidual43.R2423217386526D14

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
theorem bl576 : rangeOK good 576 12 = true := by decide +kernel
theorem bl588 : rangeOK good 588 12 = true := by decide +kernel
theorem bl600 : rangeOK good 600 12 = true := by decide +kernel
theorem bl612 : rangeOK good 612 12 = true := by decide +kernel
end R2423217386526
end Blc.Floor43
