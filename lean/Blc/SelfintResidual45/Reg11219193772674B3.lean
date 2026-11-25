import Blc.SelfintResidual45.Reg11219193772674Data

set_option Elab.async false
namespace Blc.Floor45.Reg11219193772674
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok360 : RegProof.Span ck 360 370 := RegProof.block (n := 10) (by decide +kernel)
theorem ok370 : RegProof.Span ck 370 380 := RegProof.block (n := 10) (by decide +kernel)
theorem ok380 : RegProof.Span ck 380 390 := RegProof.block (n := 10) (by decide +kernel)
theorem ok390 : RegProof.Span ck 390 400 := RegProof.block (n := 10) (by decide +kernel)
theorem ok400 : RegProof.Span ck 400 410 := RegProof.block (n := 10) (by decide +kernel)
theorem ok410 : RegProof.Span ck 410 420 := RegProof.block (n := 10) (by decide +kernel)
theorem ok420 : RegProof.Span ck 420 427 := RegProof.block (n := 7) (by decide +kernel)
end Blc.Floor45.Reg11219193772674
