import Blc.SelfintResidual43.R2423217386526D14

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
theorem bl288 : rangeOK good 288 12 = true := by decide +kernel
theorem bl300 : rangeOK good 300 12 = true := by decide +kernel
theorem bl312 : rangeOK good 312 12 = true := by decide +kernel
theorem bl324 : rangeOK good 324 12 = true := by decide +kernel
end R2423217386526
end Blc.Floor43
