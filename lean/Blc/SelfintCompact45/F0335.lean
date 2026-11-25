import Blc.SelfintPositiveWord45
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1319 on (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [2,0,0,1,0]) byParts (fun j => Split43.four 8 j ⟨0,3,0,4,5,3⟩ [0,0,0] [2,0,0,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,4,5,3⟩ [0,0,0] [2,0,0,1,0]) withHints bank eachTags[[],[6,6,6,6,6,3,3,3,3,3],[6,6,3,3],[6,6,3,3],[6,6,6,6,6,3,3,3,3,3],[],[],[]] except []
tagSlices f1320 on (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [2,0,1,0,0]) byParts (fun j => Split43.four 8 j ⟨0,3,0,4,5,3⟩ [0,0,0] [2,0,1,0,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,4,5,3⟩ [0,0,0] [2,0,1,0,0]) withHints bank eachTags[[],[6,6,6,6,6,3,3,3,3,3],[6,6,3,3],[6,6,3,3],[6,6,6,6,6,3,3,3,3,3],[],[],[]] except []
sliceRow f1321 on (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [2,1,0,0,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,4,5,3⟩ [0,0,0] [2,1,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,4,5,3⟩ [0,0,0] [2,1,0,0,0]) slices 12 withHints bank tags [6,3] except []
theorem f1322 : BadRow (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [3,0,0,0,0]) := sparse_four ⟨0,3,0,4,5,3⟩ [0,0,0] [3,0,0,0,0] (by decide)
theorem f1323 : BadRow (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,0,0,3]) := sparse_four ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,0,0,3] (by decide)
certRow f1324 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,0,1,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3,33,33,33,33,25]
certRow f1325 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,0,2,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3,33,33,33,33,25]
theorem f1326 : BadRow (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,0,3,0]) := sparse_four ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,0,3,0] (by decide)
certRow f1327 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,1,0,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,33,33,33,33,33,33,33,25,25]
theorem f1328 : BadRow (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,1,1,1]) := sparse_four ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,1,1,1] (by decide)
certRow f1329 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,1,2,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3,33,33,33,33,25]
certRow f1330 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,2,0,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,33,33,33,33,33,33,33,25,25]
end Blc.SelfintSingleObject.Compact45
