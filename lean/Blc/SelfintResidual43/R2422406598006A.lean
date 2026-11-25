import Blc.SelfintResidual43.R2422406598006D7

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl WeakHeadClock Round3Floor38
set_option maxRecDepth 20000
set_option maxHeartbeats 1500000
namespace R2422406598006
open Compact Certgen Certgen.FloorIndex
theorem align (i : Nat) : Fast.aligns P tm i = true := by
  by_cases hi : i < 176
  · exact rangeOK_at (f := Fast.aligns P tm) (start := 0) (count := 176) (by decide +kernel) (by omega) hi
  · simp [Fast.aligns,P,hi]
end R2422406598006
end Blc.Floor43
