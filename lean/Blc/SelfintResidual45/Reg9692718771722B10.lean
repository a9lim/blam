import Blc.SelfintResidual45.Reg9692718771722Data

set_option Elab.async false
namespace Blc.Floor45.Reg9692718771722
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok1200 : RegProof.Span ck 1200 1204 := RegProof.block (n := 4) (by decide +kernel)
end Blc.Floor45.Reg9692718771722
