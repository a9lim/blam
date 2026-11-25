import Blc.SelfintResidual45.Reg9676765805818Data

set_option Elab.async false
namespace Blc.Floor45.Reg9676765805818
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok480 : RegProof.Span ck 480 490 := RegProof.block (n := 10) (by decide +kernel)
end Blc.Floor45.Reg9676765805818
