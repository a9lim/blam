import Blc.SelfintResidual45.Reg9569468944186Data

set_option Elab.async false
namespace Blc.Floor45.Reg9569468944186
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
theorem ok1200 : RegProof.Span ck 1200 1210 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1210 : RegProof.Span ck 1210 1220 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1220 : RegProof.Span ck 1220 1230 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1230 : RegProof.Span ck 1230 1240 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1240 : RegProof.Span ck 1240 1250 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1250 : RegProof.Span ck 1250 1260 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1260 : RegProof.Span ck 1260 1270 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1270 : RegProof.Span ck 1270 1280 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1280 : RegProof.Span ck 1280 1290 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1290 : RegProof.Span ck 1290 1300 := RegProof.block (n := 10) (by decide +kernel)
theorem ok1300 : RegProof.Span ck 1300 1310 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.block (a := 1300) (n := 1) (by decide +kernel)) (RegProof.block (a := 1301) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 1302) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 1303) (n := 1) (by decide +kernel)) (RegProof.block (a := 1304) (n := 1) (by decide +kernel))))) (RegProof.merge (RegProof.merge (RegProof.block (a := 1305) (n := 1) (by decide +kernel)) (RegProof.block (a := 1306) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 1307) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 1308) (n := 1) (by decide +kernel)) (RegProof.block (a := 1309) (n := 1) (by decide +kernel))))))
theorem ok1310 : RegProof.Span ck 1310 1319 := (RegProof.merge (RegProof.merge (RegProof.merge (RegProof.block (a := 1310) (n := 1) (by decide +kernel)) (RegProof.block (a := 1311) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 1312) (n := 1) (by decide +kernel)) (RegProof.block (a := 1313) (n := 1) (by decide +kernel)))) (RegProof.merge (RegProof.merge (RegProof.block (a := 1314) (n := 1) (by decide +kernel)) (RegProof.block (a := 1315) (n := 1) (by decide +kernel))) (RegProof.merge (RegProof.block (a := 1316) (n := 1) (by decide +kernel)) (RegProof.merge (RegProof.block (a := 1317) (n := 1) (by decide +kernel)) (RegProof.block (a := 1318) (n := 1) (by decide +kernel))))))
end Blc.Floor45.Reg9569468944186
