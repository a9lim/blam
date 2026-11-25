import Blc.SelfintResidual45.Reg9690392421942Data

set_option Elab.async false
namespace Blc.Floor45.Reg9690392421942
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok360 : RegProof.Span ck 360 370 := RegProof.block (n := 10) (by decide +kernel)
theorem ok370 : RegProof.Span ck 370 374 := RegProof.block (n := 4) (by decide +kernel)
end Blc.Floor45.Reg9690392421942
