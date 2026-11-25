import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data21
import Blc.SelfintCompact45.Frames.Data22
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g22143 on (row false true k268 8 3 4 4 [0,3,0,0]) using bank tags []
certRow g22144 on (row false false k253 8 3 4 4 [1,0,0,2]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3]
certRow g22145 on (row false true k268 8 3 4 4 [1,0,0,2]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g22146 on (row false false k253 8 3 4 4 [1,0,1,1]) using bank tags []
certRow g22147 on (row false true k268 8 3 4 4 [1,0,1,1]) using bank tags []
certRow g22148 on (row false false k253 8 3 4 4 [1,0,2,0]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3]
certRow g22149 on (row false true k268 8 3 4 4 [1,0,2,0]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g22150 on (row false false k253 8 3 4 4 [1,1,0,1]) using bank tags []
certRow g22151 on (row false true k268 8 3 4 4 [1,1,0,1]) using bank tags []
certRow g22152 on (row false false k253 8 3 4 4 [1,1,1,0]) using bank tags []
certRow g22153 on (row false true k268 8 3 4 4 [1,1,1,0]) using bank tags []
certRow g22154 on (row false false k253 8 3 4 4 [1,2,0,0]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3]
certRow g22155 on (row false true k268 8 3 4 4 [1,2,0,0]) using bank tags [1,1,1,1,1,1]
certRow g22156 on (row false false k253 8 3 4 4 [2,0,0,1]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3]
certRow g22157 on (row false true k268 8 3 4 4 [2,0,0,1]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g22158 on (row false false k253 8 3 4 4 [2,0,1,0]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3]
certRow g22159 on (row false true k268 8 3 4 4 [2,0,1,0]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g22160 on (row false false k253 8 3 4 4 [2,1,0,0]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3]
certRow g22161 on (row false true k268 8 3 4 4 [2,1,0,0]) using bank tags [1,1,1,1,1,1]
certRow g22162 on (row false false k253 8 3 4 4 [3,0,0,0]) using bank tags []
certRow g22163 on (row false true k268 8 3 4 4 [3,0,0,0]) using bank tags []
tagSlices g22164 on (row false false k254 8 3 4 5 [0,0,0,0,3]) byParts (fun j => piece 12 j false false k254 8 3 4 5 [0,0,0,0,3]) byCover (pieces_cover 12 (by decide) false false k254 8 3 4 5 [0,0,0,0,3]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g22165 on (row false true k269 8 3 4 5 [0,0,0,0,3]) byParts (fun j => piece 12 j false true k269 8 3 4 5 [0,0,0,0,3]) byCover (pieces_cover 12 (by decide) false true k269 8 3 4 5 [0,0,0,0,3]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow g22166 on (row false false k254 8 3 4 5 [0,0,0,1,2]) byParts (fun j => piece 12 j false false k254 8 3 4 5 [0,0,0,1,2]) byCover (pieces_cover 12 (by decide) false false k254 8 3 4 5 [0,0,0,1,2]) slices 12 withHints bank tags [44,6] except []
end Blc.SelfintSingleObject.Compact45
