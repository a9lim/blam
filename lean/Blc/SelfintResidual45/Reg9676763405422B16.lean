import Blc.SelfintResidual45.Reg9676763405422Data

set_option Elab.async false
namespace Blc.Floor45.Reg9676763405422
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok1920 : RegProof.Span ck 1920 1930 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1930 : RegProof.Span ck 1930 1940 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1940 : RegProof.Span ck 1940 1950 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1950 : RegProof.Span ck 1950 1960 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1960 : RegProof.Span ck 1960 1970 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1970 : RegProof.Span ck 1970 1980 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1980 : RegProof.Span ck 1980 1990 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1990 : RegProof.Span ck 1990 2000 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2000 : RegProof.Span ck 2000 2010 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2010 : RegProof.Span ck 2010 2020 := RegProof.block (n := 10) (by decide +kernel)
theorem ok2020 : RegProof.Span ck 2020 2030 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.block (a := 2020) (n := 1) (by decide +kernel)) (RegProof.block (a := 2021) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 2022) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 2023) (n := 1) (by decide +kernel)) (RegProof.block (a := 2024) (n := 1) (by decide +kernel))))) (RegProof.merge (RegProof.merge (RegProof.block (a := 2025) (n := 1) (by decide +kernel)) (RegProof.block (a := 2026) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 2027) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 2028) (n := 1) (by decide +kernel)) (RegProof.block (a := 2029) (n := 1) (by decide +kernel))))))
theorem ok2030 : RegProof.Span ck 2030 2040 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.block (a := 2030) (n := 1) (by decide +kernel)) (RegProof.block (a := 2031) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 2032) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 2033) (n := 1) (by decide +kernel)) (RegProof.block (a := 2034) (n := 1) (by decide +kernel))))) (RegProof.merge (RegProof.merge (RegProof.block (a := 2035) (n := 1) (by decide +kernel)) (RegProof.block (a := 2036) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 2037) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 2038) (n := 1) (by decide +kernel)) (RegProof.block (a := 2039) (n := 1) (by decide +kernel))))))
end Blc.Floor45.Reg9676763405422
