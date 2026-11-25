import Blc.SelfintResidual43.R2422406598006D7

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2422406598006
open Compact Certgen Certgen.FloorIndex
theorem bl96 : rangeOK good 96 12 = true := by decide +kernel
theorem bl108 : rangeOK good 108 12 = true := by decide +kernel
theorem bl120 : rangeOK good 120 12 = true := by decide +kernel
theorem bl132 : rangeOK good 132 12 = true := by decide +kernel
end R2422406598006
end Blc.Floor43
