import Blc.SelfintResidual43.R2423217386526D14

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
theorem bl240 : rangeOK good 240 12 = true := by decide +kernel
theorem bl252 : rangeOK good 252 12 = true := by decide +kernel
theorem bl264 : rangeOK good 264 12 = true := by decide +kernel
theorem bl276 : rangeOK good 276 12 = true := by decide +kernel
end R2423217386526
end Blc.Floor43
