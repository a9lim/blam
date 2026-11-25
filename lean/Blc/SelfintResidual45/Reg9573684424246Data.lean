import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.Reg9573684424246D1

set_option Elab.async false
namespace Blc.Floor45.Reg9573684424246
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def hintsB552 (i : Nat) : List Nat := tableBlock% i 552 [[678,708],[679,709],[680,710],[681,711],[682,712],[683,713],[684,714],[685,715],[686,716],[687,717],[688,718],[689,719]]
def hintsB564 (i : Nat) : List Nat := tableBlock% i 564 [[690,720],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40],[41]]
def hintsB576 (i : Nat) : List Nat := tableBlock% i 576 [[42],[43],[44],[45],[670,700],[671,701],[672,702],[673,703],[674,704],[675,705],[676,706],[677,707]]
def hintsB588 (i : Nat) : List Nat := tableBlock% i 588 [[678,708],[679,709],[680,710],[681,711],[682,712],[683,713],[684,714],[685,715],[686,716],[687,717],[688,718],[689,719]]
def hintsB600 (i : Nat) : List Nat := tableBlock% i 600 [[690,720],[691,721],[692,722],[693,723],[694,724],[695,725],[696,726],[697,727],[698,728],[699,729],[10],[11]]
def hintsB612 (i : Nat) : List Nat := tableBlock% i 612 [[12],[13],[14],[15],[16],[17],[18],[19],[20],[21],[22],[23]]
def hintsB624 (i : Nat) : List Nat := tableBlock% i 624 [[24],[25],[26],[27],[28],[29],[30],[46],[47],[48],[49],[50]]
def hintsB636 (i : Nat) : List Nat := tableBlock% i 636 [[51],[52],[53],[54],[55],[56],[57],[58],[59],[60],[316,318],[317,319]]
def hintsB648 (i : Nat) : List Nat := tableBlock% i 648 [[316,318],[317,319],[325,327],[326,328],[325,327],[326,328],[402,404],[403,405],[402,404],[403,405],[730,732],[731,733]]
def hintsB660 (i : Nat) : List Nat := tableBlock% i 660 [[730,732],[731,733],[233],[234],[235],[236],[237,239],[238,240],[237,239],[238,240],[746],[747]]
def hintsB672 (i : Nat) : List Nat := tableBlock% i 672 [[748],[749],[750],[751],[752],[753],[754],[755],[756],[757],[758],[759]]
def hintsB684 (i : Nat) : List Nat := tableBlock% i 684 [[760],[761],[762],[763],[764],[765],[766],[767],[768],[769],[770],[771]]
def hintsB696 (i : Nat) : List Nat := tableBlock% i 696 [[772],[773],[774],[775],[776],[777],[778],[779],[780],[781],[782],[783]]
def hintsB708 (i : Nat) : List Nat := tableBlock% i 708 [[784],[785],[786],[787],[788],[789],[790],[791],[792],[793],[794],[795]]
def hintsB720 (i : Nat) : List Nat := tableBlock% i 720 [[796],[797],[798],[800],[801],[802],[803],[804],[805],[807],[333],[334]]
def hintsB732 (i : Nat) : List Nat := tableBlock% i 732 [[363],[364],[808,815],[809,816],[810,817],[811,818],[814,821],[808,815],[809,816],[810,817],[811,818],[814,821]]
def hintsB744 (i : Nat) : List Nat := tableBlock% i 744 [[527],[545],[329],[330],[331],[332],[333],[334],[335],[336],[337],[338]]
def hintsB756 (i : Nat) : List Nat := tableBlock% i 756 [[339],[340],[341],[342],[343],[344],[345],[346],[347],[348],[349],[350]]
def hintsB768 (i : Nat) : List Nat := tableBlock% i 768 [[351],[352],[353],[354],[355],[356],[357],[358],[359],[360],[361],[362]]
def hintsB780 (i : Nat) : List Nat := tableBlock% i 780 [[363],[364],[365],[366],[367],[368],[369],[370],[371],[372],[373],[374]]
def hintsB792 (i : Nat) : List Nat := tableBlock% i 792 [[375],[376],[377],[378],[379],[380],[382],[383],[384],[386],[387],[388]]
def hintsB804 (i : Nat) : List Nat := tableBlock% i 804 [[389],[392],[393],[394],[746],[747],[748],[749],[770],[771],[775],[776]]
def hintsB816 (i : Nat) : List Nat := tableBlock% i 816 [[777],[778],[779],[801],[802],[807]]
def hints (i : Nat) : List Nat := if i < 822 then (if i < 408 then (if i < 204 then (if i < 96 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else hintsB84 i))) else (if i < 144 then (if i < 120 then (if i < 108 then hintsB96 i else hintsB108 i) else (if i < 132 then hintsB120 i else hintsB132 i)) else (if i < 168 then (if i < 156 then hintsB144 i else hintsB156 i) else (if i < 180 then hintsB168 i else (if i < 192 then hintsB180 i else hintsB192 i))))) else (if i < 300 then (if i < 252 then (if i < 228 then (if i < 216 then hintsB204 i else hintsB216 i) else (if i < 240 then hintsB228 i else hintsB240 i)) else (if i < 276 then (if i < 264 then hintsB252 i else hintsB264 i) else (if i < 288 then hintsB276 i else hintsB288 i))) else (if i < 348 then (if i < 324 then (if i < 312 then hintsB300 i else hintsB312 i) else (if i < 336 then hintsB324 i else hintsB336 i)) else (if i < 372 then (if i < 360 then hintsB348 i else hintsB360 i) else (if i < 384 then hintsB372 i else (if i < 396 then hintsB384 i else hintsB396 i)))))) else (if i < 612 then (if i < 504 then (if i < 456 then (if i < 432 then (if i < 420 then hintsB408 i else hintsB420 i) else (if i < 444 then hintsB432 i else hintsB444 i)) else (if i < 480 then (if i < 468 then hintsB456 i else hintsB468 i) else (if i < 492 then hintsB480 i else hintsB492 i))) else (if i < 552 then (if i < 528 then (if i < 516 then hintsB504 i else hintsB516 i) else (if i < 540 then hintsB528 i else hintsB540 i)) else (if i < 576 then (if i < 564 then hintsB552 i else hintsB564 i) else (if i < 588 then hintsB576 i else (if i < 600 then hintsB588 i else hintsB600 i))))) else (if i < 720 then (if i < 660 then (if i < 636 then (if i < 624 then hintsB612 i else hintsB624 i) else (if i < 648 then hintsB636 i else hintsB648 i)) else (if i < 684 then (if i < 672 then hintsB660 i else hintsB672 i) else (if i < 696 then hintsB684 i else (if i < 708 then hintsB696 i else hintsB708 i)))) else (if i < 768 then (if i < 744 then (if i < 732 then hintsB720 i else hintsB732 i) else (if i < 756 then hintsB744 i else hintsB756 i)) else (if i < 792 then (if i < 780 then hintsB768 i else hintsB780 i) else (if i < 804 then hintsB792 i else (if i < 816 then hintsB804 i else hintsB816 i))))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 822 getSt) i (hints i)
end Blc.Floor45.Reg9573684424246
