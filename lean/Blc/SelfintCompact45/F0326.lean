import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1207 on (Grammar43.fourRow ⟨0,2,0,4,6,3⟩ [0,0] [3,0,0,0,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,6,3⟩ [0,0] [3,0,0,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,6,3⟩ [0,0] [3,0,0,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
certRow f1208 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [0,0,3,4]) using bank tags [12,12,12,12,20,1,1,1,1,20]
certRow f1209 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [0,0,4,3]) using bank tags [12,12,12,12,20,1,1,1,1,20]
certRow f1210 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [0,1,2,4]) using bank tags [12,12,12,12,12,12,12,1,1,1,12,12,20,21,20,9,9,9,1,11,1,1,1,1,1,1,37,20,59,49]
certRow f1211 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [0,1,3,3]) using bank tags [6,6,6,6,12,12,12,12,1,1,12,12,20,59,35,1,1,35,20,1,1,1,1,1,1,1,20,20]
certRow f1212 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [0,1,4,2]) using bank tags [12,12,12,12,12,12,12,1,1,12,12,20,20,20,9,9,20,9,1,11,1,1,1,1,19,20,20,49]
certRow f1213 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [0,2,1,4]) using bank tags [12,12,12,12,12,12,12,12,21,21,21,12,12,12,20,20,52,71,20,9,9,11,20,9,9,11,37,1,1,1,37,37,40,20,18,47,20,59]
certRow f1214 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [0,2,2,3]) using bank tags [6,6,6,6,12,12,12,12,12,21,12,20,20,21,12,21,21,1,12,12,83,80,9,9,9,20,9,37,11,1,1,1,1,1,1,1,1,1,1,1,40,19,83,49]
certRow f1215 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [0,2,3,2]) using bank tags [6,6,6,6,6,12,12,12,12,12,20,21,12,12,21,21,20,12,12,72,20,9,9,9,20,20,11,11,1,1,1,1,1,1,1,1,1,1,19,19,95,59]
certRow f1216 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [0,2,4,1]) using bank tags [12,12,12,12,12,12,12,20,21,12,20,52,9,11,20,9,9,1,1,1,1,19,23,47]
certRow f1217 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [0,3,0,4]) using bank tags [12,12,12,12,12,12,12,20,27,11,37,1,1,1,37,40,20,23]
end Blc.SelfintSingleObject.Compact45
