import Blc.SelfintResidual45.TableNotation
import Blc.SelfintResidual45.Reg9692869757806D0

set_option Elab.async false
namespace Blc.Floor45.Reg9692869757806
open Term SelfintLowerBound SelfintSharp SelfintRegularSoundness WeakHeadClock Certgen Round3Floor38
set_option maxRecDepth 17000
set_option maxHeartbeats 6000000
def hintsB108 (i : Nat) : List Nat := tableBlock% i 108 [[157],[157],[157],[157],[157],[157],[157],[157],[158],[158],[158],[158]]
def hintsB120 (i : Nat) : List Nat := tableBlock% i 120 [[158],[158],[158],[158],[158],[158],[158],[158],[158],[159],[159],[159]]
def hintsB132 (i : Nat) : List Nat := tableBlock% i 132 [[159],[159],[160],[160],[160],[160],[160],[160],[160],[160],[161],[161]]
def hintsB144 (i : Nat) : List Nat := tableBlock% i 144 [[161],[161],[161],[161],[161],[161],[162],[162],[162],[163],[164],[164]]
def hintsB156 (i : Nat) : List Nat := tableBlock% i 156 [[164],[4],[5],[165,168,182,185,188],[54],[74],[6],[7],[8],[191,192,193,194,195],[227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243],[312,313,314,315,316]]
def hintsB168 (i : Nat) : List Nat := tableBlock% i 168 [[196,197,198,199,200],[244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260],[317,318,319,320,321],[216],[217],[218],[219],[220],[221],[222],[223],[224]]
def hintsB180 (i : Nat) : List Nat := tableBlock% i 180 [[225],[226],[201,202,203,204,205],[261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277],[322,323,324,325,326],[206,207,208,209,210],[278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294],[327,328,329,330,331],[211,212,213,214,215],[295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311],[332,333,334,335,336],[337]]
def hintsB192 (i : Nat) : List Nat := tableBlock% i 192 [[337],[337],[337],[337],[338],[338],[338],[338],[338],[339],[339],[339]]
def hintsB204 (i : Nat) : List Nat := tableBlock% i 204 [[339],[339],[340],[340],[340],[340],[340],[341],[341],[341],[341],[341]]
def hintsB216 (i : Nat) : List Nat := tableBlock% i 216 [[342],[342],[342],[342],[342],[343],[343],[343],[344],[344],[344],[345]]
def hintsB228 (i : Nat) : List Nat := tableBlock% i 228 [[345],[345],[345],[345],[345],[345],[345],[345],[345],[345],[345],[345]]
def hintsB240 (i : Nat) : List Nat := tableBlock% i 240 [[345],[345],[345],[345],[346],[346],[346],[346],[346],[346],[346],[346]]
def hintsB252 (i : Nat) : List Nat := tableBlock% i 252 [[346],[346],[346],[346],[346],[346],[346],[346],[346],[347],[347],[347]]
def hintsB264 (i : Nat) : List Nat := tableBlock% i 264 [[347],[347],[347],[347],[347],[347],[347],[347],[347],[347],[347],[347]]
def hintsB276 (i : Nat) : List Nat := tableBlock% i 276 [[347],[347],[348],[348],[348],[348],[348],[348],[348],[348],[348],[348]]
def hintsB288 (i : Nat) : List Nat := tableBlock% i 288 [[348],[348],[348],[348],[348],[348],[348],[349],[349],[349],[349],[349]]
def hintsB300 (i : Nat) : List Nat := tableBlock% i 300 [[349],[349],[349],[349],[349],[349],[349],[349],[349],[349],[349],[349]]
def hintsB312 (i : Nat) : List Nat := tableBlock% i 312 [[350],[350],[350],[350],[350],[351],[351],[351],[351],[351],[352],[352]]
def hintsB324 (i : Nat) : List Nat := tableBlock% i 324 [[352],[352],[352],[353],[353],[353],[353],[353],[354],[354],[354],[354]]
def hintsB336 (i : Nat) : List Nat := tableBlock% i 336 [[354],[355],[356],[357],[358],[359],[360],[361],[362],[363],[364],[365]]
def hintsB348 (i : Nat) : List Nat := tableBlock% i 348 [[366],[367],[368],[369],[370],[371],[372],[171],[172],[173],[174],[175]]
def hintsB360 (i : Nat) : List Nat := tableBlock% i 360 [[373,376,379,382,385,388,391,394],[374,377,380,383,386,389,392,395],[375,378,381,384,387,390,393,396],[49],[50],[51],[52],[53],[69],[70],[71],[72]]
def hintsB372 (i : Nat) : List Nat := tableBlock% i 372 [[73],[176],[177],[178],[412,415,418,421,424,427,430,433,436,439,442,445,448],[413,416,419,422,425,428,431,434,437,440,443,446,449],[414,417,420,423,426,429,432,435,438,441,444,447,450],[388,391,394],[389,392,395],[390,393,396],[57],[58]]
def hintsB384 (i : Nat) : List Nat := tableBlock% i 384 [[59],[77],[78],[79],[412,415,418,421,424,427,430,433,436,439,442,445,448],[413,416,419,422,425,428,431,434,437,440,443,446,449],[414,417,420,423,426,429,432,435,438,441,444,447,450],[412,415,418,421,424,427,430,433,436,439,442,445,448],[413,416,419,422,425,428,431,434,437,440,443,446,449],[414,417,420,423,426,429,432,435,438,441,444,447,450],[412,415,418,421,424,427,430,433,436,439,442,445,448],[413,416,419,422,425,428,431,434,437,440,443,446,449]]
def hintsB396 (i : Nat) : List Nat := tableBlock% i 396 [[414,417,420,423,426,429,432,435,438,441,444,447,450],[176],[177],[178],[412,415,418,421,424,427,430,433,436,439,442,445,448],[413,416,419,422,425,428,431,434,437,440,443,446,449],[414,417,420,423,426,429,432,435,438,441,444,447,450],[388,391,394],[389,392,395],[390,393,396],[57],[58]]
def hintsB408 (i : Nat) : List Nat := tableBlock% i 408 [[59],[77],[78],[79],[60],[61],[62],[179],[180],[181],[80],[81]]
def hintsB420 (i : Nat) : List Nat := tableBlock% i 420 [[82],[60],[61],[62],[60],[61],[62],[388,391,394,397,400,403,406,409],[389,392,395,398,401,404,407,410],[390,393,396,399,402,405,408,411],[388,391,394,397,400,403,406,409],[389,392,395,398,401,404,407,410]]
def hintsB432 (i : Nat) : List Nat := tableBlock% i 432 [[390,393,396,399,402,405,408,411],[388,391,394,397,400,403,406,409],[389,392,395,398,401,404,407,410],[390,393,396,399,402,405,408,411],[60],[61],[62],[179],[180],[181],[80],[81]]
def hintsB444 (i : Nat) : List Nat := tableBlock% i 444 [[82],[60],[61],[62],[60],[61],[62]]
def hints (i : Nat) : List Nat := if i < 451 then (if i < 228 then (if i < 108 then (if i < 48 then (if i < 24 then (if i < 12 then hintsB0 i else hintsB12 i) else (if i < 36 then hintsB24 i else hintsB36 i)) else (if i < 72 then (if i < 60 then hintsB48 i else hintsB60 i) else (if i < 84 then hintsB72 i else (if i < 96 then hintsB84 i else hintsB96 i)))) else (if i < 168 then (if i < 132 then (if i < 120 then hintsB108 i else hintsB120 i) else (if i < 144 then hintsB132 i else (if i < 156 then hintsB144 i else hintsB156 i))) else (if i < 192 then (if i < 180 then hintsB168 i else hintsB180 i) else (if i < 204 then hintsB192 i else (if i < 216 then hintsB204 i else hintsB216 i))))) else (if i < 336 then (if i < 276 then (if i < 252 then (if i < 240 then hintsB228 i else hintsB240 i) else (if i < 264 then hintsB252 i else hintsB264 i)) else (if i < 300 then (if i < 288 then hintsB276 i else hintsB288 i) else (if i < 312 then hintsB300 i else (if i < 324 then hintsB312 i else hintsB324 i)))) else (if i < 396 then (if i < 360 then (if i < 348 then hintsB336 i else hintsB348 i) else (if i < 372 then hintsB360 i else (if i < 384 then hintsB372 i else hintsB384 i))) else (if i < 420 then (if i < 408 then hintsB396 i else hintsB408 i) else (if i < 432 then hintsB420 i else (if i < 444 then hintsB432 i else hintsB444 i)))))) else []
def ck (i : Nat) := FloorIndex.check pCode values konts (RegProof.states 451 getSt) i (hints i)
end Blc.Floor45.Reg9692869757806
