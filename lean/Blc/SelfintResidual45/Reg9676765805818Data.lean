import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.Reg9676765805818D0

set_option Elab.async false
namespace Blc.Floor45.Reg9676765805818
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def hintsB24 (i : Nat) : List Nat := tableBlock% i 24 [[24,47],[25,48],[26,49],[27,50],[28,51],[29,52],[30,53],[31,54],[55,56,57],[62,63,64,65],[62,63,64,65],[62,63,64,65]]
def hintsB36 (i : Nat) : List Nat := tableBlock% i 36 [[62,63,64,65],[66,67,68],[69,70],[71,72],[73],[74],[75],[76,77],[76,77],[76,77],[76,77],[78]]
def hintsB48 (i : Nat) : List Nat := tableBlock% i 48 [[79,80],[79,80],[79,80],[79,80],[81],[82,83,84,85],[58,59,60,61],[86],[86],[86],[87],[87]]
def hintsB60 (i : Nat) : List Nat := tableBlock% i 60 [[87],[87],[88],[88],[88],[88],[89],[89],[89],[90],[90],[91]]
def hintsB72 (i : Nat) : List Nat := tableBlock% i 72 [[91],[92],[93],[94],[95],[95],[96],[97],[97],[98],[99],[99]]
def hintsB84 (i : Nat) : List Nat := tableBlock% i 84 [[99],[99],[123,455],[128],[213,456,457,458,459],[214,460,461],[216,463],[217,464],[339,470],[340,471],[370,473,475],[372,374,477,479,481,483]]
def hintsB96 (i : Nat) : List Nat := tableBlock% i 96 [[375,484,485],[376,377,486,487,488,489],[7],[31,54],[146,147,148],[167],[171],[175,176],[149,150,151,152],[166],[168],[172]]
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[177],[153,154,155,156,157],[169],[169],[173],[173],[178,179,180],[178,179,180],[158,159,160,161,162],[170],[170],[174]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[174],[181,182,183],[181,182,183],[129,130,131],[136,137,138,139,140],[141,142,143,144,145],[163,164],[165],[132,133,134,135],[184],[184],[184]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[185],[185],[185],[185],[186],[186],[186],[186],[186],[187],[187],[187]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[187],[187],[188],[188],[188],[189],[189],[189],[189],[190],[190],[190]]
def hintsB156 (i : Nat) : List Nat := tableBlock% i 156 [[190],[190],[191],[191],[191],[191],[191],[192],[192],[193],[194],[195]]
def hintsB168 (i : Nat) : List Nat := tableBlock% i 168 [[196],[197],[198],[199],[200],[201],[202],[203],[203],[204],[205],[205]]
def hintsB180 (i : Nat) : List Nat := tableBlock% i 180 [[205],[206],[206],[206],[100],[104],[109,427],[116,434,441,448],[207],[208],[209,211],[210,212]]
def hintsB192 (i : Nat) : List Nat := tableBlock% i 192 [[215,462],[334,341,465],[346],[365],[366],[349,353,357,361],[350,354,358,362],[378],[379],[380,382,384,386],[381,383,385,387],[388]]
def hintsB204 (i : Nat) : List Nat := tableBlock% i 204 [[389],[390,392,394,396],[391,393,395,397],[229,230,231],[232,233,234,235],[236,237,238,239,240],[246,247,248,249,250],[241,242,243,244,245],[251,252,253,254,255],[225,226,227,228],[218,219,220],[256,257]]
def hintsB216 (i : Nat) : List Nat := tableBlock% i 216 [[221,222],[223,224],[273],[276],[277],[261],[259,260],[264],[262,263],[274],[275],[278,279,280]]
def hintsB228 (i : Nat) : List Nat := tableBlock% i 228 [[281,282,283],[271],[284],[290,291],[272],[285],[292],[266],[267],[286],[286],[293,294,295]]
def hintsB240 (i : Nat) : List Nat := tableBlock% i 240 [[293,294,295],[268],[287],[287],[296,297,298],[296,297,298],[269],[288],[288],[299,300,301],[299,300,301],[270]]
def hintsB252 (i : Nat) : List Nat := tableBlock% i 252 [[289],[289],[302,303,304],[302,303,304],[265],[258],[305],[306],[306],[306],[307],[307]]
def hintsB264 (i : Nat) : List Nat := tableBlock% i 264 [[307],[308],[309],[310],[311],[312],[313],[314],[315],[316],[317],[318]]
def hintsB276 (i : Nat) : List Nat := tableBlock% i 276 [[319],[319],[320],[320],[320],[321],[321],[321],[322],[323],[324],[325]]
def hintsB288 (i : Nat) : List Nat := tableBlock% i 288 [[326],[327],[328],[328],[329],[330],[330],[330],[331],[331],[331],[332]]
def hintsB300 (i : Nat) : List Nat := tableBlock% i 300 [[332],[332],[333],[333],[333],[367],[351,355,359,363],[352,356,360,364],[368],[105],[110,428],[117,435,442,449]]
def hintsB312 (i : Nat) : List Nat := tableBlock% i 312 [[111,429],[118,436,443,450],[101],[106],[347],[335,342,466],[336,343,467],[348],[337,344,468],[338,345,469],[102],[107]]
def hintsB324 (i : Nat) : List Nat := tableBlock% i 324 [[112,430],[119,437,444,451],[113,431],[120,438,445,452],[103],[108],[114,432],[121,439,446,453],[115,433],[122,440,447,454],[398],[398]]
def hintsB336 (i : Nat) : List Nat := tableBlock% i 336 [[398],[398],[398],[399],[400],[401],[401],[401],[401],[401],[402],[402]]
def hintsB348 (i : Nat) : List Nat := tableBlock% i 348 [[402],[403],[403],[403],[403],[404],[404],[404],[404],[405],[405],[405]]
def hintsB360 (i : Nat) : List Nat := tableBlock% i 360 [[405],[406],[406],[406],[406],[407],[408],[408],[408],[409],[409],[410]]
def hintsB372 (i : Nat) : List Nat := tableBlock% i 372 [[410],[411],[411],[412],[413],[414],[415],[416],[417],[417],[418],[418]]
def hintsB384 (i : Nat) : List Nat := tableBlock% i 384 [[419],[419],[420],[420],[421],[422],[423],[423],[424],[424],[425],[425]]
def hintsB396 (i : Nat) : List Nat := tableBlock% i 396 [[426],[426],[124],[369,472,474],[371,373,476,478,480,482],[125],[9,32],[10,33],[11,34],[12,35],[13,36],[4]]
def hintsB408 (i : Nat) : List Nat := tableBlock% i 408 [[14,37],[126],[15,38],[16,39],[127],[17,40],[18,41],[5],[19,42],[20,43],[21,44],[22,45]]
def hintsB420 (i : Nat) : List Nat := tableBlock% i 420 [[23,46],[6],[24,47],[25,48],[26,49],[27,50],[28,51],[109,427],[110,428],[111,429],[112,430],[113,431]]
def hintsB432 (i : Nat) : List Nat := tableBlock% i 432 [[114,432],[115,433],[116,434,441,448],[117,435,442,449],[118,436,443,450],[119,437,444,451],[120,438,445,452],[121,439,446,453],[122,440,447,454],[116,434,441,448],[117,435,442,449],[118,436,443,450]]
def hintsB444 (i : Nat) : List Nat := tableBlock% i 444 [[119,437,444,451],[120,438,445,452],[121,439,446,453],[122,440,447,454],[116,434,441,448],[117,435,442,449],[118,436,443,450],[119,437,444,451],[120,438,445,452],[121,439,446,453],[122,440,447,454],[123,455]]
def hintsB456 (i : Nat) : List Nat := tableBlock% i 456 [[213,456,457,458,459],[213,456,457,458,459],[213,456,457,458,459],[213,456,457,458,459],[214,460,461],[214,460,461],[215,462],[216,463],[217,464],[334,341,465],[335,342,466],[336,343,467]]
def hintsB468 (i : Nat) : List Nat := tableBlock% i 468 [[337,344,468],[338,345,469],[339,470],[340,471],[369,472,474],[370,473,475],[369,472,474],[370,473,475],[371,373,476,478,480,482],[372,374,477,479,481,483],[371,373,476,478,480,482],[372,374,477,479,481,483]]
def hintsB480 (i : Nat) : List Nat := tableBlock% i 480 [[371,373,476,478,480,482],[372,374,477,479,481,483],[371,373,476,478,480,482],[372,374,477,479,481,483],[375,484,485],[375,484,485],[376,377,486,487,488,489],[376,377,486,487,488,489],[376,377,486,487,488,489],[376,377,486,487,488,489]]
def hints (i : Nat) : List Nat := if i < 490 then (if i < 240 then (if i < 120 then (if i < 60 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else (if i < 48 then hintsB36 i else hintsB48 i))) else (if i < 84 then (if i < 72 then hintsB60 i else hintsB72 i) else (if i < 96 then hintsB84 i else (if i < 108 then hintsB96 i else hintsB108 i)))) else (if i < 180 then (if i < 144 then (if i < 132 then hintsB120 i else hintsB132 i) else (if i < 156 then hintsB144 i else (if i < 168 then hintsB156 i else hintsB168 i))) else (if i < 204 then (if i < 192 then hintsB180 i else hintsB192 i) else (if i < 216 then hintsB204 i else (if i < 228 then hintsB216 i else hintsB228 i))))) else (if i < 360 then (if i < 300 then (if i < 264 then (if i < 252 then hintsB240 i else hintsB252 i) else (if i < 276 then hintsB264 i else (if i < 288 then hintsB276 i else hintsB288 i))) else (if i < 324 then (if i < 312 then hintsB300 i else hintsB312 i) else (if i < 336 then hintsB324 i else (if i < 348 then hintsB336 i else hintsB348 i)))) else (if i < 420 then (if i < 384 then (if i < 372 then hintsB360 i else hintsB372 i) else (if i < 396 then hintsB384 i else (if i < 408 then hintsB396 i else hintsB408 i))) else (if i < 456 then (if i < 432 then hintsB420 i else (if i < 444 then hintsB432 i else hintsB444 i)) else (if i < 468 then hintsB456 i else (if i < 480 then hintsB468 i else hintsB480 i)))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 490 getSt) i (hints i)
end Blc.Floor45.Reg9676765805818
