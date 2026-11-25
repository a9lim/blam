import Blc.SelfintResidual45.Reg9569468943994Data

set_option Elab.async false
namespace Blc.Floor45.Reg9569468943994
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok840 : RegProof.Span ck 840 847 := RegProof.block (n := 7) (by decide +kernel)
end Blc.Floor45.Reg9569468943994
