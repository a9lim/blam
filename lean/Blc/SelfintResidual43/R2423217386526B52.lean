import Blc.SelfintResidual43.R2423217386526D14

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
theorem bl624 : rangeOK good 624 12 = true := by decide +kernel
theorem bl636 : rangeOK good 636 12 = true := by decide +kernel
theorem bl648 : rangeOK good 648 12 = true := by decide +kernel
theorem bl660 : rangeOK good 660 9 = true := by decide +kernel
end R2423217386526
end Blc.Floor43
