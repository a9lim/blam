import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.Reg9692402990434D1

set_option Elab.async false
namespace Blc.Floor45.Reg9692402990434
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def hintsB576 (i : Nat) : List Nat := tableBlock% i 576 [[628],[629],[630],[631],[355],[393],[497,500,525],[573],[574],[575],[576],[577]]
def hintsB588 (i : Nat) : List Nat := tableBlock% i 588 [[578],[579],[573],[574],[575],[576],[577],[578],[579],[573],[574],[575]]
def hintsB600 (i : Nat) : List Nat := tableBlock% i 600 [[576],[577],[578],[579],[632],[633],[634],[635],[636],[652,653,654,655,656,657,658,659,660,661,662,663,664,665],[708],[637]]
def hintsB612 (i : Nat) : List Nat := tableBlock% i 612 [[638],[639],[640],[641],[666,667,668,669,670,671,672,673,674,675,676,677,678,679],[709],[642],[643],[644],[645],[646],[680,681,682,683,684,685,686,687,688,689,690,691,692,693]]
def hintsB624 (i : Nat) : List Nat := tableBlock% i 624 [[710],[647],[648],[649],[650],[651],[694,695,696,697,698,699,700,701,702,703,704,705,706,707],[711],[141],[142],[143],[144]]
def hintsB636 (i : Nat) : List Nat := tableBlock% i 636 [[145],[141],[142],[143],[144],[145],[141],[142],[143],[144],[145],[141]]
def hintsB648 (i : Nat) : List Nat := tableBlock% i 648 [[142],[143],[144],[145],[358],[359],[360],[361],[362],[363],[364],[365]]
def hintsB660 (i : Nat) : List Nat := tableBlock% i 660 [[366],[367],[368],[369],[370],[371],[358],[359],[360],[361],[362],[363]]
def hintsB672 (i : Nat) : List Nat := tableBlock% i 672 [[364],[365],[366],[367],[368],[369],[370],[371],[358],[359],[360],[361]]
def hintsB684 (i : Nat) : List Nat := tableBlock% i 684 [[362],[363],[364],[365],[366],[367],[368],[369],[370],[371],[358],[359]]
def hintsB696 (i : Nat) : List Nat := tableBlock% i 696 [[360],[361],[362],[363],[364],[365],[366],[367],[368],[369],[370],[371]]
def hintsB708 (i : Nat) : List Nat := tableBlock% i 708 [[503],[503],[503],[503]]
def hints (i : Nat) : List Nat := if i < 712 then (if i < 360 then (if i < 180 then (if i < 84 then (if i < 36 then (if i < 12 then hintsB0 i else (if i < 24 then hintsB12 i else hintsB24 i)) else (if i < 60 then (if i < 48 then hintsB36 i else hintsB48 i) else (if i < 72 then hintsB60 i else hintsB72 i))) else (if i < 132 then (if i < 108 then (if i < 96 then hintsB84 i else hintsB96 i) else (if i < 120 then hintsB108 i else hintsB120 i)) else (if i < 156 then (if i < 144 then hintsB132 i else hintsB144 i) else (if i < 168 then hintsB156 i else hintsB168 i)))) else (if i < 264 then (if i < 216 then (if i < 192 then hintsB180 i else (if i < 204 then hintsB192 i else hintsB204 i)) else (if i < 240 then (if i < 228 then hintsB216 i else hintsB228 i) else (if i < 252 then hintsB240 i else hintsB252 i))) else (if i < 312 then (if i < 288 then (if i < 276 then hintsB264 i else hintsB276 i) else (if i < 300 then hintsB288 i else hintsB300 i)) else (if i < 336 then (if i < 324 then hintsB312 i else hintsB324 i) else (if i < 348 then hintsB336 i else hintsB348 i))))) else (if i < 540 then (if i < 444 then (if i < 396 then (if i < 372 then hintsB360 i else (if i < 384 then hintsB372 i else hintsB384 i)) else (if i < 420 then (if i < 408 then hintsB396 i else hintsB408 i) else (if i < 432 then hintsB420 i else hintsB432 i))) else (if i < 492 then (if i < 468 then (if i < 456 then hintsB444 i else hintsB456 i) else (if i < 480 then hintsB468 i else hintsB480 i)) else (if i < 516 then (if i < 504 then hintsB492 i else hintsB504 i) else (if i < 528 then hintsB516 i else hintsB528 i)))) else (if i < 624 then (if i < 576 then (if i < 552 then hintsB540 i else (if i < 564 then hintsB552 i else hintsB564 i)) else (if i < 600 then (if i < 588 then hintsB576 i else hintsB588 i) else (if i < 612 then hintsB600 i else hintsB612 i))) else (if i < 672 then (if i < 648 then (if i < 636 then hintsB624 i else hintsB636 i) else (if i < 660 then hintsB648 i else hintsB660 i)) else (if i < 696 then (if i < 684 then hintsB672 i else hintsB684 i) else (if i < 708 then hintsB696 i else hintsB708 i)))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 712 getSt) i (hints i)
end Blc.Floor45.Reg9692402990434
