import Blc.Selfint40Evidence.R302902173326V0
import Blc.Selfint40Evidence.R302902173326K0
import Blc.Selfint40Evidence.R302902173326st0
import Blc.Selfint40Evidence.R302902173326hs0
import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.Base

namespace Certgen.R302902173326
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 83,.app 2 54,.app 3 51,.app 4 17,.lam 5,.app 6 7,.var 0,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 15,.app 13 14,.var 2,.var 0,.lam 16,.var 2,.app 18 31,.lam 19,.app 20 21,.var 0,.app 22 23,.var 0,.lam 24,.lam 25,.app 26 29,.app 27 28,.var 2,.var 0,.lam 30,.var 2,.lam 32,.lam 33,.app 34 49,.app 35 48,.lam 36,.app 37 38,.var 0,.app 39 40,.var 0,.lam 41,.lam 42,.app 43 46,.app 44 45,.var 2,.var 0,.lam 47,.var 2,.var 0,.lam 50,.var 2,.lam 52,.lam 53,.var 0,.lam 55,.app 56 61,.app 57 58,.var 0,.lam 59,.lam 60,.var 1,.lam 62,.app 63 68,.app 64 65,.var 0,.lam 66,.lam 67,.var 1,.lam 69,.app 70 75,.app 71 72,.var 0,.lam 73,.lam 74,.var 0,.lam 76,.app 77 82,.app 78 79,.var 0,.lam 80,.lam 81,.var 1,.opaque,.app 84 88,.lam 85,.app 86 87,.var 0,.var 0,.lam 89,.app 90 91,.var 0,.var 0]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) : List AClo := (if i < 20 then (V0[i-0]?.getD []) else (if i < 40 then (V20[i-20]?.getD []) else (V40[i-40]?.getD [])))
def K (i : Nat) : List Frame := (if i < 40 then (if i < 20 then (K0[i-0]?.getD []) else (K20[i-20]?.getD [])) else (if i < 60 then (K40[i-40]?.getD []) else (K60[i-60]?.getD [])))
def st (i : Nat) : AState := if i < 211 then (if i < 100 then (if i < 40 then (if i < 20 then (st0[i-0]?.getD entry) else (st20[i-20]?.getD entry)) else (if i < 60 then (st40[i-40]?.getD entry) else (if i < 80 then (st60[i-60]?.getD entry) else (st80[i-80]?.getD entry)))) else (if i < 160 then (if i < 120 then (st100[i-100]?.getD entry) else (if i < 140 then (st120[i-120]?.getD entry) else (st140[i-140]?.getD entry))) else (if i < 180 then (st160[i-160]?.getD entry) else (if i < 200 then (st180[i-180]?.getD entry) else (st200[i-200]?.getD entry))))) else entry
def hs (i : Nat) : List Nat := (if i < 100 then (if i < 40 then (if i < 20 then (hs0[i-0]?.getD []) else (hs20[i-20]?.getD [])) else (if i < 60 then (hs40[i-40]?.getD []) else (if i < 80 then (hs60[i-60]?.getD []) else (hs80[i-80]?.getD [])))) else (if i < 160 then (if i < 120 then (hs100[i-100]?.getD []) else (if i < 140 then (hs120[i-120]?.getD []) else (hs140[i-140]?.getD []))) else (if i < 180 then (hs160[i-160]?.getD []) else (if i < 200 then (hs180[i-180]?.getD []) else (hs200[i-200]?.getD [])))))
def validState (i : Nat) := FloorIndex.check P V K st i (hs i)
end Certgen.R302902173326
