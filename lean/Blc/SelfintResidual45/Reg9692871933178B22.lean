import Blc.SelfintResidual45.Reg9692871933178Data

set_option Elab.async false
namespace Blc.Floor45.Reg9692871933178
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok2640 : RegProof.Span ck 2640 2650 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2650 : RegProof.Span ck 2650 2651 := RegProof.block (n := 1) (by decide +kernel)
end Blc.Floor45.Reg9692871933178
