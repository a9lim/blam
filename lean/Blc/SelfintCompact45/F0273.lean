import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f962 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,2,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,2,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,2,1,1]) withHints bank eachTags[[6,2,2,6],[6,2,20],[6,6,2,2,2,6,6,2,2,6,2,2,2,2,28],[6,6,6,2,2,2,2],[6,6,6,2,2,2,2,21,2,20,1],[2,2,2,2,2,11,2,2,21,2,2,2],[6,6,2,2,20,20,37],[2,2,2,6,6,6,2,10,10,23,10]] except []
tagSlices f963 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,2,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,2,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,2,2,0]) withHints bank eachTags[[6],[6,6,6],[6,6,2,6,2,21,20],[6,6],[6,6,6,6,6,6,2,2,28,21],[2,2,2,21,20,2,20,2,21,20],[20],[37,20,6,6,6]] except []
tagSlices f964 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,3,0,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,3,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,3,0,1]) withHints bank eachTags[[6],[6,6,6,6,6],[6,6,6,2,20],[6,6],[6,6,6,6,6,20,20],[2,50],[6,6,6,6,6],[6,6,6,6,6]] except []
tagSlices f965 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,3,1,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,3,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,3,1,0]) withHints bank eachTags[[6],[6,6,6],[6,6,2,2,6,2,20],[6,6,2],[6,6,6,20,2,84],[2,20],[6,6,6],[6,6,6,2,18]] except []
sliceRow f966 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,4,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,4,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,4,0,0]) slices 12 withHints bank tags [2,1,27] except []
end Blc.SelfintSingleObject.Compact45
