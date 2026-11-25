import Blc.SelfintResidual45.Reg9692869545526D1

set_option Elab.async false
namespace Blc.Floor45.Reg9692869545526
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def hints (i : Nat) : List Nat := if i < 508 then (if i < 252 then (if i < 120 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 84 then (if i < 72 then hintsB60 i else hintsB72 i) else (if i < 96 then hintsB84 i else (if i < 108 then hintsB96 i else hintsB108 i)))) else (if i < 180 then (if i < 144 then (if i < 132 then hintsB120 i else hintsB132 i) else (if i < 156 then hintsB144 i else (if i < 168 then hintsB156 i else hintsB168 i))) else (if i < 216 then (if i < 192 then hintsB180 i else (if i < 204 then hintsB192 i else hintsB204 i)) else (if i < 228 then hintsB216 i else (if i < 240 then hintsB228 i else hintsB240 i))))) else (if i < 384 then (if i < 312 then (if i < 276 then (if i < 264 then hintsB252 i else hintsB264 i) else (if i < 288 then hintsB276 i else (if i < 300 then hintsB288 i else hintsB300 i))) else (if i < 348 then (if i < 324 then hintsB312 i else (if i < 336 then hintsB324 i else hintsB336 i)) else (if i < 360 then hintsB348 i else (if i < 372 then hintsB360 i else hintsB372 i)))) else (if i < 444 then (if i < 408 then (if i < 396 then hintsB384 i else hintsB396 i) else (if i < 420 then hintsB408 i else (if i < 432 then hintsB420 i else hintsB432 i))) else (if i < 480 then (if i < 456 then hintsB444 i else (if i < 468 then hintsB456 i else hintsB468 i)) else (if i < 492 then hintsB480 i else (if i < 504 then hintsB492 i else hintsB504 i)))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 508 getSt) i (hints i)
end Blc.Floor45.Reg9692869545526
