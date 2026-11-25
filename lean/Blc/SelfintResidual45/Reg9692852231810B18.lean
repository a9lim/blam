import Blc.SelfintResidual45.Reg9692852231810Data

set_option Elab.async false
namespace Blc.Floor45.Reg9692852231810
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok2160 : RegProof.Span ck 2160 2170 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2170 : RegProof.Span ck 2170 2180 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2180 : RegProof.Span ck 2180 2190 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2190 : RegProof.Span ck 2190 2200 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2200 : RegProof.Span ck 2200 2210 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2210 : RegProof.Span ck 2210 2220 := RegProof.block (n := 10) (by decide +kernel)
end Blc.Floor45.Reg9692852231810
