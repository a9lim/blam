import Blc.Selfint40Evidence.R302888259382V0
import Blc.Selfint40Evidence.R302888259382K0
import Blc.Selfint40Evidence.R302888259382st0
import Blc.Selfint40Evidence.R302888259382hs0
import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.Base

namespace Certgen.R302888259382
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 71,.app 2 62,.app 3 25,.app 4 22,.app 5 9,.lam 6,.app 7 8,.var 0,.var 0,.lam 10,.app 11 15,.app 12 13,.var 0,.lam 14,.var 1,.lam 16,.lam 17,.app 18 19,.var 2,.app 20 21,.var 0,.var 1,.lam 23,.lam 24,.var 1,.lam 26,.app 27 32,.app 28 29,.var 0,.lam 30,.lam 31,.var 1,.lam 33,.app 34 39,.app 35 36,.var 0,.lam 37,.lam 38,.var 1,.lam 40,.app 41 46,.app 42 43,.var 0,.lam 44,.lam 45,.var 0,.lam 47,.app 48 53,.app 49 50,.var 0,.lam 51,.lam 52,.var 1,.app 54 58,.lam 55,.app 56 57,.var 0,.var 0,.lam 59,.app 60 61,.var 0,.var 0,.app 63 67,.lam 64,.app 65 66,.var 0,.var 0,.lam 68,.app 69 70,.var 0,.var 0,.lam 72,.var 0]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) : List AClo := (if i < 20 then (V0[i-0]?.getD []) else (V20[i-20]?.getD []))
def K (i : Nat) : List Frame := (if i < 20 then (K0[i-0]?.getD []) else (K20[i-20]?.getD []))
def st (i : Nat) : AState := if i < 127 then (if i < 60 then (if i < 20 then (st0[i-0]?.getD entry) else (if i < 40 then (st20[i-20]?.getD entry) else (st40[i-40]?.getD entry))) else (if i < 100 then (if i < 80 then (st60[i-60]?.getD entry) else (st80[i-80]?.getD entry)) else (if i < 120 then (st100[i-100]?.getD entry) else (st120[i-120]?.getD entry)))) else entry
def hs (i : Nat) : List Nat := (if i < 60 then (if i < 20 then (hs0[i-0]?.getD []) else (if i < 40 then (hs20[i-20]?.getD []) else (hs40[i-40]?.getD []))) else (if i < 100 then (if i < 80 then (hs60[i-60]?.getD []) else (hs80[i-80]?.getD [])) else (if i < 120 then (hs100[i-100]?.getD []) else (hs120[i-120]?.getD []))))
def validState (i : Nat) := FloorIndex.check P V K st i (hs i)
end Certgen.R302888259382
