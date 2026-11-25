import Blc.SelfintResidual43.R2422406598006D7

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2422406598006
open Compact Certgen Certgen.FloorIndex
theorem bl432 : rangeOK good 432 12 = true := by decide +kernel
theorem bl444 : rangeOK good 444 12 = true := by decide +kernel
theorem bl456 : rangeOK good 456 12 = true := by decide +kernel
theorem bl468 : rangeOK good 468 12 = true := by decide +kernel
end R2422406598006
end Blc.Floor43
