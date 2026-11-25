import Blc.SelfintResidual45.Reg9676620391286Data

set_option Elab.async false
namespace Blc.Floor45.Reg9676620391286
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok480 : RegProof.Span ck 480 490 := RegProof.block (n := 10) (by decide +kernel)
theorem ok490 : RegProof.Span ck 490 500 := RegProof.block (n := 10) (by decide +kernel)
theorem ok500 : RegProof.Span ck 500 510 := RegProof.block (n := 10) (by decide +kernel)
theorem ok510 : RegProof.Span ck 510 520 := RegProof.block (n := 10) (by decide +kernel)
theorem ok520 : RegProof.Span ck 520 530 := RegProof.block (n := 10) (by decide +kernel)
theorem ok530 : RegProof.Span ck 530 540 := RegProof.block (n := 10) (by decide +kernel)
theorem ok540 : RegProof.Span ck 540 550 := RegProof.block (n := 10) (by decide +kernel)
theorem ok550 : RegProof.Span ck 550 560 := RegProof.block (n := 10) (by decide +kernel)
theorem ok560 : RegProof.Span ck 560 564 := RegProof.block (n := 4) (by decide +kernel)
end Blc.Floor45.Reg9676620391286
