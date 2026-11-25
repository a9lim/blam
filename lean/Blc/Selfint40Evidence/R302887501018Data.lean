import Blc.Selfint40Evidence.R302887501018V0
import Blc.Selfint40Evidence.R302887501018K0
import Blc.Selfint40Evidence.R302887501018st0
import Blc.Selfint40Evidence.R302887501018st12
import Blc.Selfint40Evidence.R302887501018hs0
import Blc.Selfint40Evidence.R302887501018hs12
import Blc.Selfint40Evidence.CodeBridge
import Blc.Selfint40Evidence.Base

namespace Certgen.R302887501018
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 17,.app 8 9,.var 0,.lam 10,.lam 11,.lam 12,.app 13 14,.var 3,.app 15 16,.var 0,.var 1,.var 0]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) : List AClo := (if i < 20 then (V0[i-0]?.getD []) else (V20[i-20]?.getD []))
def K (i : Nat) : List Frame := (if i < 40 then (if i < 20 then (K0[i-0]?.getD []) else (K20[i-20]?.getD [])) else (if i < 60 then (K40[i-40]?.getD []) else (K60[i-60]?.getD [])))
def st (i : Nat) : AState := if i < 294 then (if i < 140 then (if i < 60 then (if i < 20 then (st0[i-0]?.getD entry) else (if i < 40 then (st20[i-20]?.getD entry) else (st40[i-40]?.getD entry))) else (if i < 100 then (if i < 80 then (st60[i-60]?.getD entry) else (st80[i-80]?.getD entry)) else (if i < 120 then (st100[i-100]?.getD entry) else (st120[i-120]?.getD entry)))) else (if i < 220 then (if i < 180 then (if i < 160 then (st140[i-140]?.getD entry) else (st160[i-160]?.getD entry)) else (if i < 200 then (st180[i-180]?.getD entry) else (st200[i-200]?.getD entry))) else (if i < 260 then (if i < 240 then (st220[i-220]?.getD entry) else (st240[i-240]?.getD entry)) else (if i < 280 then (st260[i-260]?.getD entry) else (st280[i-280]?.getD entry))))) else entry
def hs (i : Nat) : List Nat := (if i < 140 then (if i < 60 then (if i < 20 then (hs0[i-0]?.getD []) else (if i < 40 then (hs20[i-20]?.getD []) else (hs40[i-40]?.getD []))) else (if i < 100 then (if i < 80 then (hs60[i-60]?.getD []) else (hs80[i-80]?.getD [])) else (if i < 120 then (hs100[i-100]?.getD []) else (hs120[i-120]?.getD [])))) else (if i < 220 then (if i < 180 then (if i < 160 then (hs140[i-140]?.getD []) else (hs160[i-160]?.getD [])) else (if i < 200 then (hs180[i-180]?.getD []) else (hs200[i-200]?.getD []))) else (if i < 260 then (if i < 240 then (hs220[i-220]?.getD []) else (hs240[i-240]?.getD [])) else (if i < 280 then (hs260[i-260]?.getD []) else (hs280[i-280]?.getD [])))))
def validState (i : Nat) := FloorIndex.check P V K st i (hs i)
end Certgen.R302887501018
