import Blc.SelfintResidual43.R2423217386526D14

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
theorem bl144 : rangeOK good 144 12 = true := by decide +kernel
theorem bl156 : rangeOK good 156 12 = true := by decide +kernel
theorem bl168 : rangeOK good 168 12 = true := by decide +kernel
theorem bl180 : rangeOK good 180 12 = true := by decide +kernel
end R2423217386526
end Blc.Floor43
