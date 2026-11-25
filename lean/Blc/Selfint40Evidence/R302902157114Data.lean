import Blc.Selfint40Evidence.R302902157114V0
import Blc.Selfint40Evidence.R302902157114K0
import Blc.Selfint40Evidence.R302902157114st0
import Blc.Selfint40Evidence.R302902157114st12
import Blc.Selfint40Evidence.R302902157114hs0
import Blc.Selfint40Evidence.R302902157114hs12
import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.Base

namespace Certgen.R302902157114
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 97,.app 2 88,.app 3 79,.app 4 70,.app 5 27,.app 6 24,.app 7 11,.lam 8,.app 9 10,.var 0,.var 0,.lam 12,.app 13 14,.var 0,.app 15 16,.var 0,.lam 17,.lam 18,.lam 19,.app 20 21,.var 3,.app 22 23,.var 1,.var 0,.lam 25,.lam 26,.var 0,.lam 28,.app 29 34,.app 30 31,.var 0,.lam 32,.lam 33,.var 1,.lam 35,.app 36 41,.app 37 38,.var 0,.lam 39,.lam 40,.var 1,.lam 42,.app 43 48,.app 44 45,.var 0,.lam 46,.lam 47,.var 1,.lam 49,.app 50 55,.app 51 52,.var 0,.lam 53,.lam 54,.var 1,.lam 56,.app 57 62,.app 58 59,.var 0,.lam 60,.lam 61,.var 0,.lam 63,.app 64 69,.app 65 66,.var 0,.lam 67,.lam 68,.var 1,.opaque,.app 71 75,.lam 72,.app 73 74,.var 0,.var 0,.lam 76,.app 77 78,.var 0,.var 0,.app 80 84,.lam 81,.app 82 83,.var 0,.var 0,.lam 85,.app 86 87,.var 0,.var 0,.app 89 93,.lam 90,.app 91 92,.var 0,.var 0,.lam 94,.app 95 96,.var 0,.var 0,.app 98 102,.lam 99,.app 100 101,.var 0,.var 0,.lam 103,.app 104 105,.var 0,.var 0]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) : List AClo := (if i < 40 then (if i < 20 then (V0[i-0]?.getD []) else (V20[i-20]?.getD [])) else (if i < 60 then (V40[i-40]?.getD []) else (V60[i-60]?.getD [])))
def K (i : Nat) : List Frame := (if i < 60 then (if i < 20 then (K0[i-0]?.getD []) else (if i < 40 then (K20[i-20]?.getD []) else (K40[i-40]?.getD []))) else (if i < 80 then (K60[i-60]?.getD []) else (if i < 100 then (K80[i-80]?.getD []) else (K100[i-100]?.getD []))))
def st (i : Nat) : AState := if i < 355 then (if i < 180 then (if i < 80 then (if i < 40 then (if i < 20 then (st0[i-0]?.getD entry) else (st20[i-20]?.getD entry)) else (if i < 60 then (st40[i-40]?.getD entry) else (st60[i-60]?.getD entry))) else (if i < 120 then (if i < 100 then (st80[i-80]?.getD entry) else (st100[i-100]?.getD entry)) else (if i < 140 then (st120[i-120]?.getD entry) else (if i < 160 then (st140[i-140]?.getD entry) else (st160[i-160]?.getD entry))))) else (if i < 260 then (if i < 220 then (if i < 200 then (st180[i-180]?.getD entry) else (st200[i-200]?.getD entry)) else (if i < 240 then (st220[i-220]?.getD entry) else (st240[i-240]?.getD entry))) else (if i < 300 then (if i < 280 then (st260[i-260]?.getD entry) else (st280[i-280]?.getD entry)) else (if i < 320 then (st300[i-300]?.getD entry) else (if i < 340 then (st320[i-320]?.getD entry) else (st340[i-340]?.getD entry)))))) else entry
def hs (i : Nat) : List Nat := (if i < 180 then (if i < 80 then (if i < 40 then (if i < 20 then (hs0[i-0]?.getD []) else (hs20[i-20]?.getD [])) else (if i < 60 then (hs40[i-40]?.getD []) else (hs60[i-60]?.getD []))) else (if i < 120 then (if i < 100 then (hs80[i-80]?.getD []) else (hs100[i-100]?.getD [])) else (if i < 140 then (hs120[i-120]?.getD []) else (if i < 160 then (hs140[i-140]?.getD []) else (hs160[i-160]?.getD []))))) else (if i < 260 then (if i < 220 then (if i < 200 then (hs180[i-180]?.getD []) else (hs200[i-200]?.getD [])) else (if i < 240 then (hs220[i-220]?.getD []) else (hs240[i-240]?.getD []))) else (if i < 300 then (if i < 280 then (hs260[i-260]?.getD []) else (hs280[i-280]?.getD [])) else (if i < 320 then (hs300[i-300]?.getD []) else (if i < 340 then (hs320[i-320]?.getD []) else (hs340[i-340]?.getD []))))))
def validState (i : Nat) := FloorIndex.check P V K st i (hs i)
end Certgen.R302902157114
