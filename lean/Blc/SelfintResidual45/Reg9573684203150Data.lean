import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.Reg9573684203150D1

set_option Elab.async false
namespace Blc.Floor45.Reg9573684203150
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def hintsB312 (i : Nat) : List Nat := tableBlock% i 312 [[335],[335],[335],[335],[335],[335],[335],[335],[336],[336],[336],[336]]
def hintsB324 (i : Nat) : List Nat := tableBlock% i 324 [[336],[336],[336],[336],[336],[110],[150],[151],[152],[153],[154],[275]]
def hintsB336 (i : Nat) : List Nat := tableBlock% i 336 [[276],[339,340,341,342,343,344,345,346,347,348,349,350],[351],[354],[352],[353],[354],[352],[353],[357],[355],[356]]
def hintsB348 (i : Nat) : List Nat := tableBlock% i 348 [[358],[359],[360],[361],[362],[362],[362],[363],[363],[363],[364],[364]]
def hintsB360 (i : Nat) : List Nat := tableBlock% i 360 [[364],[365],[366],[367],[368],[369],[111],[112],[113],[114],[384],[384]]
def hintsB372 (i : Nat) : List Nat := tableBlock% i 372 [[385],[384],[386],[386],[387],[386],[388],[388],[388],[389],[390],[391]]
def hintsB384 (i : Nat) : List Nat := tableBlock% i 384 [[416],[417],[418],[419],[420],[421],[172],[173],[396],[397],[398],[399]]
def hintsB396 (i : Nat) : List Nat := tableBlock% i 396 [[413],[414],[415],[171],[402],[403],[24],[53],[12],[13],[14],[15]]
def hintsB408 (i : Nat) : List Nat := tableBlock% i 408 [[16],[17],[18],[19],[63],[422],[423],[424],[425,426,428],[427],[429,430,432],[431]]
def hintsB420 (i : Nat) : List Nat := tableBlock% i 420 [[433,434,435],[436],[45],[46],[47],[42],[43],[50],[54],[40],[41],[51]]
def hintsB432 (i : Nat) : List Nat := tableBlock% i 432 [[55],[44],[48],[49],[52],[458],[450],[451],[452],[447,448,455,459],[445,446,456,460],[449,453,454,457]]
def hintsB444 (i : Nat) : List Nat := tableBlock% i 444 [[461,462,463,464,465,466,467,468,469],[470],[471],[472],[473],[474],[476,477,478],[479,480,481],[482,483,484],[486],[487],[488]]
def hintsB456 (i : Nat) : List Nat := tableBlock% i 456 [[489],[490],[498],[499,500],[501],[475],[485],[491],[492],[493],[494],[495]]
def hintsB468 (i : Nat) : List Nat := tableBlock% i 468 [[496],[497],[502],[503],[503],[504],[505],[506],[507],[507],[507],[508]]
def hintsB480 (i : Nat) : List Nat := tableBlock% i 480 [[508],[508],[509],[509],[509],[510],[511],[512],[513],[514],[515],[516]]
def hintsB492 (i : Nat) : List Nat := tableBlock% i 492 [[517],[517],[517],[517],[517],[517],[518],[519],[519],[520],[558],[579,582]]
def hintsB504 (i : Nat) : List Nat := tableBlock% i 504 [[583],[109],[178],[179],[180],[181],[182],[149],[157],[174],[175],[176]]
def hintsB516 (i : Nat) : List Nat := tableBlock% i 516 [[177],[222],[412],[522],[525],[529],[533,534],[532],[528],[535],[531],[530]]
def hintsB528 (i : Nat) : List Nat := tableBlock% i 528 [[540],[541],[537],[538],[539],[542],[543],[536],[544],[545],[546],[547]]
def hintsB540 (i : Nat) : List Nat := tableBlock% i 540 [[548],[549],[550],[550],[551],[552],[553],[554],[555],[556],[557],[155]]
def hintsB552 (i : Nat) : List Nat := tableBlock% i 552 [[524],[521],[108],[156],[577,580],[578,581],[584],[586],[587],[588],[585],[585]]
def hintsB564 (i : Nat) : List Nat := tableBlock% i 564 [[585],[589],[589],[589],[593],[593],[593],[593],[593],[593],[594],[595]]
def hintsB576 (i : Nat) : List Nat := tableBlock% i 576 [[596],[598],[599],[597],[601],[602],[600],[603],[527],[604],[605],[606]]
def hintsB588 (i : Nat) : List Nat := tableBlock% i 588 [[607],[608],[609],[610],[611],[167],[168],[169],[170],[559],[560],[561]]
def hintsB600 (i : Nat) : List Nat := tableBlock% i 600 [[565],[566],[567],[526],[183],[184],[185],[186],[612,616],[613,617],[614,618],[615,619]]
def hintsB612 (i : Nat) : List Nat := tableBlock% i 612 [[620,621,622],[620],[621],[622],[623,624,625],[623],[624],[625],[562],[563],[564],[565]]
def hintsB624 (i : Nat) : List Nat := tableBlock% i 624 [[566],[567]]
def hints (i : Nat) : List Nat := if i < 626 then (if i < 312 then (if i < 156 then (if i < 72 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 48 then hintsB36 i else (if i < 60 then hintsB48 i else hintsB60 i))) else (if i < 108 then (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)) else (if i < 132 then (if i < 120 then hintsB108 i else hintsB120 i) else (if i < 144 then hintsB132 i else hintsB144 i)))) else (if i < 228 then (if i < 192 then (if i < 168 then hintsB156 i else (if i < 180 then hintsB168 i else hintsB180 i)) else (if i < 204 then hintsB192 i else (if i < 216 then hintsB204 i else hintsB216 i))) else (if i < 264 then (if i < 240 then hintsB228 i else (if i < 252 then hintsB240 i else hintsB252 i)) else (if i < 288 then (if i < 276 then hintsB264 i else hintsB276 i) else (if i < 300 then hintsB288 i else hintsB300 i))))) else (if i < 468 then (if i < 384 then (if i < 348 then (if i < 324 then hintsB312 i else (if i < 336 then hintsB324 i else hintsB336 i)) else (if i < 360 then hintsB348 i else (if i < 372 then hintsB360 i else hintsB372 i))) else (if i < 420 then (if i < 396 then hintsB384 i else (if i < 408 then hintsB396 i else hintsB408 i)) else (if i < 444 then (if i < 432 then hintsB420 i else hintsB432 i) else (if i < 456 then hintsB444 i else hintsB456 i)))) else (if i < 552 then (if i < 504 then (if i < 480 then hintsB468 i else (if i < 492 then hintsB480 i else hintsB492 i)) else (if i < 528 then (if i < 516 then hintsB504 i else hintsB516 i) else (if i < 540 then hintsB528 i else hintsB540 i))) else (if i < 588 then (if i < 564 then hintsB552 i else (if i < 576 then hintsB564 i else hintsB576 i)) else (if i < 612 then (if i < 600 then hintsB588 i else hintsB600 i) else (if i < 624 then hintsB612 i else hintsB624 i)))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 626 getSt) i (hints i)
end Blc.Floor45.Reg9573684203150
