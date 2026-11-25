import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.Reg9692869545614D0

set_option Elab.async false
namespace Blc.Floor45.Reg9692869545614
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[84],[83],[84],[84],[83],[84],[84],[86],[87],[88],[86],[87]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[88],[86],[87],[88],[284,292,318,326,334],[285,293,319,327,335],[286,294,320,328,336],[10],[11],[12],[13],[49]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[50],[51],[99],[100],[101],[126,129],[127,130],[128,131],[123,132,135],[123,124,125,126,127,128,129,130,131,132,133,134,135,136,137],[125,134,137],[120]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[121],[122],[161,162,163,164,165],[166,169,172],[167,170,173],[168,171,174],[138],[139],[140],[144,147],[145,148],[146,149]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[141,150,153],[141,142,143,144,145,146,147,148,149,150,151,152,153,154,155],[143,152,155],[138],[139],[140],[138],[139],[140],[156,158],[159],[157,160]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[177],[175,176,178,179,180],[181,182,183,184,185,186],[189],[190],[191],[195,198],[196,199],[197,200],[192,201,204],[192,193,194,195,196,197,198,199,200,201,202,203,204,205,206],[194,203,206]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[189],[190],[191],[189],[190],[191],[207,227],[228],[226,229],[208],[209],[210]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[214,217],[215,218],[216,219],[211,220,223],[211,212,213,214,215,216,217,218,219,220,221,222,223,224,225],[213,222,225],[208],[209],[210],[208],[209],[210]]
def hintsB156 (i : Nat) : List Nat := tableBlock% i 156 [[187],[235,236,237,238,239],[241,244],[242,245],[243,246],[188],[240],[247,256,259],[247,248,249,250,251,252,253,254,255,256,257,258,259,260,261],[249,258,261],[230,232],[233]]
def hintsB168 (i : Nat) : List Nat := tableBlock% i 168 [[231,234],[230,232],[233],[231,234],[230,232],[233],[231,234],[262],[262],[262],[262],[262]]
def hintsB180 (i : Nat) : List Nat := tableBlock% i 180 [[262],[262],[262],[262],[262],[262],[262],[263],[264],[265],[265],[265]]
def hintsB192 (i : Nat) : List Nat := tableBlock% i 192 [[265],[265],[265],[265],[265],[265],[265],[265],[265],[265],[265],[265]]
def hintsB204 (i : Nat) : List Nat := tableBlock% i 204 [[265],[265],[265],[266],[266],[266],[266],[266],[266],[266],[266],[266]]
def hintsB216 (i : Nat) : List Nat := tableBlock% i 216 [[266],[266],[266],[266],[266],[266],[266],[266],[266],[266],[266],[266]]
def hintsB228 (i : Nat) : List Nat := tableBlock% i 228 [[266],[266],[267],[267],[267],[267],[267],[268],[268],[268],[268],[268]]
def hintsB240 (i : Nat) : List Nat := tableBlock% i 240 [[269],[270],[270],[270],[270],[270],[270],[271],[271],[271],[271],[271]]
def hintsB252 (i : Nat) : List Nat := tableBlock% i 252 [[271],[271],[271],[271],[271],[271],[271],[271],[271],[271],[272],[273]]
def hintsB264 (i : Nat) : List Nat := tableBlock% i 264 [[274],[275],[276],[277],[278],[279],[280],[281],[4],[95],[5],[282,290,316,324,332]]
def hintsB276 (i : Nat) : List Nat := tableBlock% i 276 [[47],[6],[96],[7],[97],[8],[337],[339],[337],[338],[339],[340]]
def hintsB288 (i : Nat) : List Nat := tableBlock% i 288 [[341],[342],[343],[345],[343],[344],[345],[346],[347],[348],[346],[347]]
def hintsB300 (i : Nat) : List Nat := tableBlock% i 300 [[348],[349],[350],[350],[350],[350],[350],[350],[350],[350],[349],[350]]
def hintsB312 (i : Nat) : List Nat := tableBlock% i 312 [[350],[349],[350],[350],[352],[354],[352],[353],[354],[355],[356],[357]]
def hintsB324 (i : Nat) : List Nat := tableBlock% i 324 [[358],[360],[358],[359],[360],[361],[362],[363],[364],[366],[364],[365]]
def hintsB336 (i : Nat) : List Nat := tableBlock% i 336 [[366],[287,321,329],[288,322,330],[289,323,331],[406],[407],[408],[67],[68],[69],[394,400],[395,401]]
def hintsB348 (i : Nat) : List Nat := tableBlock% i 348 [[396,402],[376,397,403,424,445],[377,398,404,425,446],[378,399,405,426,447],[117],[118],[119],[415],[416],[417],[70],[71]]
def hintsB360 (i : Nat) : List Nat := tableBlock% i 360 [[72],[418],[419],[420],[73],[74],[75],[463,469,475],[464,470,476],[465,471,477],[466,472,478],[467,473,479]]
def hintsB372 (i : Nat) : List Nat := tableBlock% i 372 [[468,474,480],[295],[296],[297],[298],[299],[300],[301],[302],[303],[304],[305]]
def hintsB384 (i : Nat) : List Nat := tableBlock% i 384 [[306],[307],[308],[309],[310],[311],[312],[313],[314],[315],[367,373,394,400,421,442],[368,374,395,401,422,443]]
def hintsB396 (i : Nat) : List Nat := tableBlock% i 396 [[369,375,396,402,423,444],[370,376,397,403,424,445],[371,377,398,404,425,446],[372,378,399,405,426,447],[367,373,394,400,421,442],[368,374,395,401,422,443],[369,375,396,402,423,444],[370,376,397,403,424,445],[371,377,398,404,425,446],[372,378,399,405,426,447],[379,427,448],[380,428,449]]
def hintsB408 (i : Nat) : List Nat := tableBlock% i 408 [[381,429,450],[382,430,451],[383,431,452],[384,432,453],[385,433,454],[386,434,455],[387,435,456],[388,436,457],[389,437,458],[390,438,459],[391,439,460],[392,440,461]]
def hintsB420 (i : Nat) : List Nat := tableBlock% i 420 [[393,441,462],[41],[42],[43],[44],[45],[46],[52],[53],[54],[55],[56]]
def hintsB432 (i : Nat) : List Nat := tableBlock% i 432 [[57],[58],[59],[60],[61],[62],[63],[64],[65],[66],[89],[90]]
def hintsB444 (i : Nat) : List Nat := tableBlock% i 444 [[91],[92],[93],[94],[102],[103],[104],[105],[106],[107],[108],[109]]
def hintsB456 (i : Nat) : List Nat := tableBlock% i 456 [[110],[111],[112],[113],[114],[115],[116],[484,487],[485,488],[486,489],[481,490,493],[481,482,483,484,485,486,487,488,489,490,491,492,493,494,495]]
def hintsB468 (i : Nat) : List Nat := tableBlock% i 468 [[483,492,495],[499,502],[500,503],[501,504],[496,505,508],[496,497,498,499,500,501,502,503,504,505,506,507,508,509,510],[498,507,510],[514,517],[515,518],[516,519],[511,520,523],[511,512,513,514,515,516,517,518,519,520,521,522,523,524,525]]
def hintsB480 (i : Nat) : List Nat := tableBlock% i 480 [[513,522,525],[406],[407],[408],[409],[410],[411],[412],[413],[414],[415],[416]]
def hintsB492 (i : Nat) : List Nat := tableBlock% i 492 [[417],[418],[419],[420],[406],[407],[408],[409],[410],[411],[412],[413]]
def hintsB504 (i : Nat) : List Nat := tableBlock% i 504 [[414],[415],[416],[417],[418],[419],[420],[406],[407],[408],[409],[410]]
def hintsB516 (i : Nat) : List Nat := tableBlock% i 516 [[411],[412],[413],[414],[415],[416],[417],[418],[419],[420]]
def hints (i : Nat) : List Nat := if i < 526 then (if i < 264 then (if i < 132 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 96 then (if i < 72 then hintsB60 i else (if i < 84 then hintsB72 i else hintsB84 i)) else (if i < 108 then hintsB96 i else (if i < 120 then hintsB108 i else hintsB120 i)))) else (if i < 192 then (if i < 156 then (if i < 144 then hintsB132 i else hintsB144 i) else (if i < 168 then hintsB156 i else (if i < 180 then hintsB168 i else hintsB180 i))) else (if i < 228 then (if i < 204 then hintsB192 i else (if i < 216 then hintsB204 i else hintsB216 i)) else (if i < 240 then hintsB228 i else (if i < 252 then hintsB240 i else hintsB252 i))))) else (if i < 396 then (if i < 324 then (if i < 288 then (if i < 276 then hintsB264 i else hintsB276 i) else (if i < 300 then hintsB288 i else (if i < 312 then hintsB300 i else hintsB312 i))) else (if i < 360 then (if i < 336 then hintsB324 i else (if i < 348 then hintsB336 i else hintsB348 i)) else (if i < 372 then hintsB360 i else (if i < 384 then hintsB372 i else hintsB384 i)))) else (if i < 456 then (if i < 420 then (if i < 408 then hintsB396 i else hintsB408 i) else (if i < 432 then hintsB420 i else (if i < 444 then hintsB432 i else hintsB444 i))) else (if i < 492 then (if i < 468 then hintsB456 i else (if i < 480 then hintsB468 i else hintsB480 i)) else (if i < 504 then hintsB492 i else (if i < 516 then hintsB504 i else hintsB516 i)))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 526 getSt) i (hints i)
end Blc.Floor45.Reg9692869545614
