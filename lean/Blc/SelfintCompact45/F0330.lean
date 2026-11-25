import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f1278 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [4,0,0,3]) using bank tags [9,9,9,9,9,10,10,36,36,24]
certRow f1279 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [4,0,1,2]) using bank tags []
certRow f1280 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [4,0,2,1]) using bank tags []
certRow f1281 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [4,0,3,0]) using bank tags [9,9,9,9,9,10,10,36,10,36]
certRow f1282 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [4,1,0,2]) using bank tags []
certRow f1283 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [4,1,1,1]) using bank tags []
certRow f1284 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [4,1,2,0]) using bank tags []
certRow f1285 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [4,2,0,1]) using bank tags []
certRow f1286 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [4,2,1,0]) using bank tags []
certRow f1287 on (Grammar43.fourRow ⟨0,3,0,4,4,7⟩ [0,0,0] [4,3,0,0]) using bank tags [9,9,9,10,10,10]
theorem f1288 : BadRow (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [0,0,0,0,3]) := sparse_four ⟨0,3,0,4,5,3⟩ [0,0,0] [0,0,0,0,3] (by decide)
tagSlices f1289 on (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [0,0,0,1,2]) byParts (fun j => Split43.four 8 j ⟨0,3,0,4,5,3⟩ [0,0,0] [0,0,0,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,4,5,3⟩ [0,0,0] [0,0,0,1,2]) withHints bank eachTags[[],[6,6,6,3,3,3],[6,6,6,3,3,3],[],[6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3],[],[6,6,6,6,3,3,3,3],[]] except []
tagSlices f1290 on (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [0,0,0,2,1]) byParts (fun j => Split43.four 8 j ⟨0,3,0,4,5,3⟩ [0,0,0] [0,0,0,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,4,5,3⟩ [0,0,0] [0,0,0,2,1]) withHints bank eachTags[[],[6,6,6,3,3,3],[6,6,6,3,3,3],[],[6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3],[],[6,6,6,6,3,3,3,3],[]] except []
theorem f1291 : BadRow (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [0,0,0,3,0]) := sparse_four ⟨0,3,0,4,5,3⟩ [0,0,0] [0,0,0,3,0] (by decide)
end Blc.SelfintSingleObject.Compact45
