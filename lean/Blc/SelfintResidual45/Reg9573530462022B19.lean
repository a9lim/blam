import Blc.SelfintResidual45.Reg9573530462022Data

set_option Elab.async false
namespace Blc.Floor45.Reg9573530462022
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok2280 : RegProof.Span ck 2280 2290 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2290 : RegProof.Span ck 2290 2300 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2300 : RegProof.Span ck 2300 2310 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2310 : RegProof.Span ck 2310 2320 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2320 : RegProof.Span ck 2320 2330 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2330 : RegProof.Span ck 2330 2340 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2340 : RegProof.Span ck 2340 2342 := RegProof.block (n := 2) (by decide +kernel)
end Blc.Floor45.Reg9573530462022
