import Blc.SelfintResidual45.Reg9692718531194Data

set_option Elab.async false
namespace Blc.Floor45.Reg9692718531194
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok360 : RegProof.Span ck 360 365 := RegProof.block (n := 5) (by decide +kernel)
end Blc.Floor45.Reg9692718531194
