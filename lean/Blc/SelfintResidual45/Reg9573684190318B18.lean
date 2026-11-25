import Blc.SelfintResidual45.Reg9573684190318Data

set_option Elab.async false
namespace Blc.Floor45.Reg9573684190318
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok2160 : RegProof.Span ck 2160 2170 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2170 : RegProof.Span ck 2170 2180 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2180 : RegProof.Span ck 2180 2190 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2190 : RegProof.Span ck 2190 2200 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2200 : RegProof.Span ck 2200 2210 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2210 : RegProof.Span ck 2210 2220 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2220 : RegProof.Span ck 2220 2230 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2230 : RegProof.Span ck 2230 2240 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2240 : RegProof.Span ck 2240 2250 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2250 : RegProof.Span ck 2250 2260 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2260 : RegProof.Span ck 2260 2270 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.block (a := 2260) (n := 1) (by decide +kernel)) (RegProof.block (a := 2261) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 2262) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 2263) (n := 1) (by decide +kernel)) (RegProof.block (a := 2264) (n := 1) (by decide +kernel))))) (RegProof.merge (RegProof.merge (RegProof.block (a := 2265) (n := 1) (by decide +kernel)) (RegProof.block (a := 2266) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 2267) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 2268) (n := 1) (by decide +kernel)) (RegProof.block (a := 2269) (n := 1) (by decide +kernel))))))
theorem ok2270 : RegProof.Span ck 2270 2280 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.block (a := 2270) (n := 1) (by decide +kernel)) (RegProof.block (a := 2271) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 2272) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 2273) (n := 1) (by decide +kernel)) (RegProof.block (a := 2274) (n := 1) (by decide +kernel))))) (RegProof.merge (RegProof.merge (RegProof.block (a := 2275) (n := 1) (by decide +kernel)) (RegProof.block (a := 2276) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 2277) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 2278) (n := 1) (by decide +kernel)) (RegProof.block (a := 2279) (n := 1) (by decide +kernel))))))
end Blc.Floor45.Reg9573684190318
