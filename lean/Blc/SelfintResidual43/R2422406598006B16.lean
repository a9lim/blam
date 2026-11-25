import Blc.SelfintResidual43.R2422406598006D7

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2422406598006
open Compact Certgen Certgen.FloorIndex
theorem bl192 : rangeOK good 192 12 = true := by decide +kernel
theorem bl204 : rangeOK good 204 12 = true := by decide +kernel
theorem bl216 : rangeOK good 216 12 = true := by decide +kernel
theorem bl228 : rangeOK good 228 12 = true := by decide +kernel
end R2422406598006
end Blc.Floor43
