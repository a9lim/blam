import Blc.SelfintResidual45.Reg9692869545526Data

set_option Elab.async false
namespace Blc.Floor45.Reg9692869545526
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok480 : RegProof.Span ck 480 490 := RegProof.block (n := 10) (by decide +kernel)
theorem ok490 : RegProof.Span ck 490 500 := RegProof.block (n := 10) (by decide +kernel)
theorem ok500 : RegProof.Span ck 500 508 := RegProof.block (n := 8) (by decide +kernel)
end Blc.Floor45.Reg9692869545526
