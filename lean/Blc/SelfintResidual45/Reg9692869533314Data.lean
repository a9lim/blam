import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.Reg9692869533314D0

set_option Elab.async false
namespace Blc.Floor45.Reg9692869533314
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def getSt (i : Nat) : AState := if i < 467 then (if i < 228 then (if i < 108 then (if i < 48 then (if i < 24 then (if i < 12 then getStB0 i else getStB12 i) else (if i < 36 then getStB24 i else getStB36 i)) else (if i < 72 then (if i < 60 then getStB48 i else getStB60 i) else (if i < 84 then getStB72 i else (if i < 96 then getStB84 i else getStB96 i)))) else (if i < 168 then (if i < 132 then (if i < 120 then getStB108 i else getStB120 i) else (if i < 144 then getStB132 i else (if i < 156 then getStB144 i else getStB156 i))) else (if i < 192 then (if i < 180 then getStB168 i else getStB180 i) else (if i < 204 then getStB192 i else (if i < 216 then getStB204 i else getStB216 i))))) else (if i < 348 then (if i < 288 then (if i < 252 then (if i < 240 then getStB228 i else getStB240 i) else (if i < 264 then getStB252 i else (if i < 276 then getStB264 i else getStB276 i))) else (if i < 312 then (if i < 300 then getStB288 i else getStB300 i) else (if i < 324 then getStB312 i else (if i < 336 then getStB324 i else getStB336 i)))) else (if i < 408 then (if i < 372 then (if i < 360 then getStB348 i else getStB360 i) else (if i < 384 then getStB372 i else (if i < 396 then getStB384 i else getStB396 i))) else (if i < 432 then (if i < 420 then getStB408 i else getStB420 i) else (if i < 444 then getStB432 i else (if i < 456 then getStB444 i else getStB456 i)))))) else entry
def hintsB0 (i : Nat) : List Nat := tableBlock% i 0 [[1],[2],[3],[107],[5],[108],[10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27],[28],[29],[30],[31],[32]]
def hintsB12 (i : Nat) : List Nat := tableBlock% i 12 [[33],[34],[35],[36],[37],[38],[39],[36],[37],[38],[39],[40]]
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[36],[37],[38],[39],[41],[42],[43],[44],[45],[45],[45],[45]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[46],[46],[46],[46],[46],[47],[47],[47],[48],[49],[50],[51]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[325],[326],[327],[343],[65],[66],[67],[68],[69],[70],[71],[72]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[73],[74],[75],[76],[77],[94],[95],[96],[97],[98],[99],[100]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[101],[102],[103],[104],[105],[106],[321],[322],[323],[324],[339],[340]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[341],[342],[424,428,432,436],[425,429,433,437],[426,430,434,438],[427,431,435,439],[52,56,60],[53,57,61],[54,58,62],[55,59,63],[110],[112]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[113],[114],[110],[112],[113],[114],[110],[112],[113],[114],[115],[109]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[111],[129],[116,120,124],[130],[117,121,125],[118,122,126],[119,123,127],[128],[131],[131],[131],[131]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[131],[131],[131],[131],[131],[131],[131],[131],[131],[131],[131],[145]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[135],[136],[137],[146],[147],[148],[139],[140,141,142],[143],[143],[143],[144]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[221],[149,150,151,152,153,154,155,156,157,158,159,160,161,162,163],[164],[165],[166],[167],[168],[169],[170],[167],[168],[169]]
def hintsB156 (i : Nat) : List Nat := tableBlock% i 156 [[170],[167],[168],[169],[170],[171],[172],[176],[173],[174],[175],[177]]
def hintsB168 (i : Nat) : List Nat := tableBlock% i 168 [[177],[177],[177],[177],[178],[179],[179],[179],[180],[181],[182],[183]]
def hintsB180 (i : Nat) : List Nat := tableBlock% i 180 [[184],[132],[133],[138],[134],[241],[240],[242],[243],[245],[240],[242]]
def hintsB192 (i : Nat) : List Nat := tableBlock% i 192 [[243],[245],[240],[242],[243],[245],[244],[240],[242],[243],[245],[247]]
def hintsB204 (i : Nat) : List Nat := tableBlock% i 204 [[246],[248],[249],[251],[246],[248],[249],[251],[246],[248],[249],[251]]
def hintsB216 (i : Nat) : List Nat := tableBlock% i 216 [[250],[246],[248],[249],[251],[252],[254],[253],[255],[256],[258],[253]]
def hintsB228 (i : Nat) : List Nat := tableBlock% i 228 [[255],[256],[258],[253],[255],[256],[258],[257],[253],[255],[256],[258]]
def hintsB240 (i : Nat) : List Nat := tableBlock% i 240 [[260,264,268,273],[259],[261,265,269,274],[262,266,270,275],[272],[263,267,271,276],[278,282,286,291],[277],[279,283,287,292],[280,284,288,293],[290],[281,285,289,294]]
def hintsB252 (i : Nat) : List Nat := tableBlock% i 252 [[295],[297,301,305,310],[296],[298,302,306,311],[299,303,307,312],[309],[300,304,308,313],[314],[314],[314],[314],[314]]
def hintsB264 (i : Nat) : List Nat := tableBlock% i 264 [[314],[314],[314],[314],[314],[314],[314],[314],[314],[314],[314],[314]]
def hintsB276 (i : Nat) : List Nat := tableBlock% i 276 [[314],[315],[315],[315],[315],[315],[315],[315],[315],[315],[315],[315]]
def hintsB288 (i : Nat) : List Nat := tableBlock% i 288 [[315],[315],[315],[315],[315],[315],[315],[316],[317],[317],[317],[317]]
def hintsB300 (i : Nat) : List Nat := tableBlock% i 300 [[317],[317],[317],[317],[317],[317],[317],[317],[317],[317],[317],[317]]
def hintsB312 (i : Nat) : List Nat := tableBlock% i 312 [[317],[317],[440],[444],[445],[463],[328],[329],[330],[331],[332],[333]]
def hintsB324 (i : Nat) : List Nat := tableBlock% i 324 [[334],[335],[336],[337],[441],[442],[443],[446],[447],[448],[449],[464]]
def hintsB336 (i : Nat) : List Nat := tableBlock% i 336 [[465],[466],[365],[344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361],[362],[363],[364],[366],[367],[368],[369],[370]]
def hintsB348 (i : Nat) : List Nat := tableBlock% i 348 [[371],[378],[379],[380],[381],[378],[379],[380],[381],[382],[378],[379]]
def hintsB360 (i : Nat) : List Nat := tableBlock% i 360 [[380],[381],[375],[376],[377],[372,373,374],[383,384,385],[386],[387],[387],[387],[387]]
def hintsB372 (i : Nat) : List Nat := tableBlock% i 372 [[388],[388],[388],[389],[389],[389],[390],[390],[390],[390],[390],[391]]
def hintsB384 (i : Nat) : List Nat := tableBlock% i 384 [[391],[391],[392],[393],[394],[395],[396],[397],[318],[319],[406],[338]]
def hintsB396 (i : Nat) : List Nat := tableBlock% i 396 [[320],[64],[411],[412],[413],[414],[415],[416],[417],[418],[419],[420]]
def hintsB408 (i : Nat) : List Nat := tableBlock% i 408 [[421],[422],[423],[450],[451],[452],[453],[454],[455],[456],[457],[458]]
def hintsB420 (i : Nat) : List Nat := tableBlock% i 420 [[459],[460],[461],[462],[321],[322],[323],[324],[339],[340],[341],[342]]
def hintsB432 (i : Nat) : List Nat := tableBlock% i 432 [[398,402,407],[399,403,408],[400,404,409],[401,405,410],[424,428,432,436],[425,429,433,437],[426,430,434,438],[427,431,435,439],[78,82,86,90],[79,83,87,91],[80,84,88,92],[81,85,89,93]]
def hintsB444 (i : Nat) : List Nat := tableBlock% i 444 [[4],[185,203,222],[186,204,223],[187,205,224],[188,206,225],[189,207,226],[190,208,227],[191,209,228],[192,210,229],[193,211,230],[194,212,231],[195,213,232]]
def hintsB456 (i : Nat) : List Nat := tableBlock% i 456 [[196,214,233],[197,215,234],[198,216,235],[199,217,236],[200,218,237],[201,219,238],[202,220,239],[6],[7],[8],[9]]
def hints (i : Nat) : List Nat := if i < 467 then (if i < 228 then (if i < 108 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)))) else (if i < 168 then (if i < 132 then (if i < 120 then hintsB108 i else hintsB120 i) else (if i < 144 then hintsB132 i else (if i < 156 then hintsB144 i else hintsB156 i))) else (if i < 192 then (if i < 180 then hintsB168 i else hintsB180 i) else (if i < 204 then hintsB192 i else (if i < 216 then hintsB204 i else hintsB216 i))))) else (if i < 348 then (if i < 288 then (if i < 252 then (if i < 240 then hintsB228 i else hintsB240 i) else (if i < 264 then hintsB252 i else (if i < 276 then hintsB264 i else hintsB276 i))) else (if i < 312 then (if i < 300 then hintsB288 i else hintsB300 i) else (if i < 324 then hintsB312 i else (if i < 336 then hintsB324 i else hintsB336 i)))) else (if i < 408 then (if i < 372 then (if i < 360 then hintsB348 i else hintsB360 i) else (if i < 384 then hintsB372 i else (if i < 396 then hintsB384 i else hintsB396 i))) else (if i < 432 then (if i < 420 then hintsB408 i else hintsB420 i) else (if i < 444 then hintsB432 i else (if i < 456 then hintsB444 i else hintsB456 i)))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 467 getSt) i (hints i)
end Blc.Floor45.Reg9692869533314
