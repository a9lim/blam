import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1025 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,2,2,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,2,2,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,2,2,2,0]) withHints bank eachTags[[6,6,6,6],[6,6,6,6,6],[6,6,56,11,2,2,19,43,2,11,2,2,11,1,2,1],[6,6,6,6,6,6,6,6],[6,6,27],[6,37,2,2,37,26,11,2,11,1,2,2,11,1,1],[6,6,2],[37,1,23]] except []
tagSlices f1026 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,2,3,0,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,2,3,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,2,3,0,1]) withHints bank eachTags[[6,6,6,2],[6,74,20],[6,2,6,6,6,2,37,2,19,2,2,2,2,36],[6,6,6],[6,6,2,2,6,2,6,37],[2,2,2,2],[2,2],[10,10,10,47,47]] except []
tagSlices f1027 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,2,3,1,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,2,3,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,2,3,1,0]) withHints bank eachTags[[6,6,6,2],[6,74],[6,6,6,6,2,43,2,2,2,2],[6,6,6],[6,2,6,2,36],[26,2],[2,2],[10,10,47]] except []
sliceRow f1028 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,2,4,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,2,4,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,2,4,0,0]) slices 12 withHints bank tags [2,37,19,23,1,27] except []
tagSlices f1029 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,3,0,0,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,3,0,0,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,3,0,0,3]) withHints bank eachTags[[],[6,6,6,6,6,1],[6,6],[6,6],[6,6,6,6,6,2,2,2,2,2,1,1],[],[20,20],[10,10,10,10,10]] except []
end Blc.SelfintSingleObject.Compact45
