import Blc.Selfint40Evidence.R302887593798V0
import Blc.Selfint40Evidence.R302887593798K0
import Blc.Selfint40Evidence.R302887593798st0
import Blc.Selfint40Evidence.R302887593798hs0
import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.Base

namespace Certgen.R302887593798
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 34,.app 2 15,.lam 3,.app 4 13,.app 5 6,.var 0,.lam 7,.lam 8,.app 9 10,.var 2,.app 11 12,.var 1,.var 0,.lam 14,.var 1,.lam 16,.lam 17,.app 18 31,.lam 19,.app 20 29,.app 21 22,.var 0,.lam 23,.lam 24,.app 25 26,.var 2,.app 27 28,.var 1,.var 0,.lam 30,.var 1,.app 32 33,.var 1,.var 0,.lam 35,.lam 36,.app 37 46,.app 38 39,.var 0,.lam 40,.lam 41,.app 42 43,.var 2,.app 44 45,.var 1,.var 0,.lam 47,.var 1]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) : List AClo := (V0[i-0]?.getD [])
def K (i : Nat) : List Frame := (K0[i-0]?.getD [])
def st (i : Nat) : AState := if i < 102 then (if i < 60 then (if i < 20 then (st0[i-0]?.getD entry) else (if i < 40 then (st20[i-20]?.getD entry) else (st40[i-40]?.getD entry))) else (if i < 80 then (st60[i-60]?.getD entry) else (if i < 100 then (st80[i-80]?.getD entry) else (st100[i-100]?.getD entry)))) else entry
def hs (i : Nat) : List Nat := (if i < 60 then (if i < 20 then (hs0[i-0]?.getD []) else (if i < 40 then (hs20[i-20]?.getD []) else (hs40[i-40]?.getD []))) else (if i < 80 then (hs60[i-60]?.getD []) else (if i < 100 then (hs80[i-80]?.getD []) else (hs100[i-100]?.getD []))))
def validState (i : Nat) := FloorIndex.check P V K st i (hs i)
end Certgen.R302887593798
