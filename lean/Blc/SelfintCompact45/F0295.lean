import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1051 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,2,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,2,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,2,2]) withHints bank eachTags[[2,2,2,1,2,2,2,2,10,28],[6,6,6,6,6,10,10,10,20,40,36,39,36],[6,6,2,2,2,2,2,37,1,2,1,2,2,37,2,37,1,1,2,2,2,1,1,1,1],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6],[6,6,6,6,6,6,2,2,2,2,2,10,10,2,10],[],[6,6,6,6],[2,2,10,2,2,40],[6,6,6,6,6,2,10,2,40],[6,6,6,6,6,6,6],[37,1,10,10,20]] except []
tagSlices f1052 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,3,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,3,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,3,1]) withHints bank eachTags[[],[],[6,6,6,6,6,6,6,33,2,1,2,1,1,2,2,2,1],[6,6,6,6,6,6],[1,1,1,1,37,37,1,10,10,21],[6,6,2,10,2,2,2,2,1,2,2,2,2,10,28],[6,6,6],[6,6,1]] except []
sliceRow f1053 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,4,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,4,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,4,0]) slices 12 withHints bank tags [1,2,10,40,8,20] except []
tagSlices f1054 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,2,0,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,2,0,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,2,0,3]) withHints bank eachTags[[1,10],[6,6,6,6,6,10,28],[6,6,1,1,1,1,1,1,1],[6,6,1,1,10,19,10],[6,6,6,6,6,1,1,10,20,36],[10,10],[6,6,6,6,6],[]] except []
end Blc.SelfintSingleObject.Compact45
