import Blc.SelfintResidual43.R2423217386526D14

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2423217386526
open Compact Certgen Certgen.FloorIndex
theorem align (i : Nat) : Fast.aligns P tm i = true := by
  by_cases hi : i < 203
  · exact rangeOK_at (f := Fast.aligns P tm) (start := 0) (count := 203) (by decide +kernel) (by omega) hi
  · simp [Fast.aligns,P,hi]
end R2423217386526
end Blc.Floor43
