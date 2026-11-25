import Blc.Selfint40Evidence.R302902178590V0
import Blc.Selfint40Evidence.R302902178590K0
import Blc.Selfint40Evidence.R302902178590st0
import Blc.Selfint40Evidence.R302902178590st12
import Blc.Selfint40Evidence.R302902178590hs0
import Blc.Selfint40Evidence.R302902178590hs12
import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.Base

namespace Certgen.R302902178590
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 20,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.app 9 10,.var 0,.app 11 12,.var 0,.lam 13,.lam 14,.app 15 16,.var 1,.app 17 18,.var 0,.lam 19,.var 3,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.lam 29,.app 30 35,.app 31 32,.var 0,.lam 33,.lam 34,.var 1,.lam 36,.app 37 42,.app 38 39,.var 0,.lam 40,.lam 41,.var 0,.lam 43,.app 44 49,.app 45 46,.var 0,.lam 47,.lam 48,.var 1,.opaque]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) : List AClo := (if i < 20 then (V0[i-0]?.getD []) else (V20[i-20]?.getD []))
def K (i : Nat) : List Frame := (if i < 40 then (if i < 20 then (K0[i-0]?.getD []) else (K20[i-20]?.getD [])) else (if i < 60 then (K40[i-40]?.getD []) else (K60[i-60]?.getD [])))
def st (i : Nat) : AState := if i < 259 then (if i < 120 then (if i < 60 then (if i < 20 then (st0[i-0]?.getD entry) else (if i < 40 then (st20[i-20]?.getD entry) else (st40[i-40]?.getD entry))) else (if i < 80 then (st60[i-60]?.getD entry) else (if i < 100 then (st80[i-80]?.getD entry) else (st100[i-100]?.getD entry)))) else (if i < 180 then (if i < 140 then (st120[i-120]?.getD entry) else (if i < 160 then (st140[i-140]?.getD entry) else (st160[i-160]?.getD entry))) else (if i < 220 then (if i < 200 then (st180[i-180]?.getD entry) else (st200[i-200]?.getD entry)) else (if i < 240 then (st220[i-220]?.getD entry) else (st240[i-240]?.getD entry))))) else entry
def hs (i : Nat) : List Nat := (if i < 120 then (if i < 60 then (if i < 20 then (hs0[i-0]?.getD []) else (if i < 40 then (hs20[i-20]?.getD []) else (hs40[i-40]?.getD []))) else (if i < 80 then (hs60[i-60]?.getD []) else (if i < 100 then (hs80[i-80]?.getD []) else (hs100[i-100]?.getD [])))) else (if i < 180 then (if i < 140 then (hs120[i-120]?.getD []) else (if i < 160 then (hs140[i-140]?.getD []) else (hs160[i-160]?.getD []))) else (if i < 220 then (if i < 200 then (hs180[i-180]?.getD []) else (hs200[i-200]?.getD [])) else (if i < 240 then (hs220[i-220]?.getD []) else (hs240[i-240]?.getD [])))))
def validState (i : Nat) := FloorIndex.check P V K st i (hs i)
end Certgen.R302902178590
