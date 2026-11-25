import Blc.SelfintResidual45.Reg9573684203150Data

set_option Elab.async false
namespace Blc.Floor45.Reg9573684203150
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok600 : RegProof.Span ck 600 610 := RegProof.block (n := 10) (by decide +kernel)
theorem ok610 : RegProof.Span ck 610 620 := RegProof.block (n := 10) (by decide +kernel)
theorem ok620 : RegProof.Span ck 620 626 := RegProof.block (n := 6) (by decide +kernel)
end Blc.Floor45.Reg9573684203150
