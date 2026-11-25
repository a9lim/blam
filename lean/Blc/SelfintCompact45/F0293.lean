import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1040 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,4,0,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,4,0,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,4,0,1,1]) withHints bank eachTags[[2],[2,2,2,2,2],[2,2,2,2,2],[2,2],[2,2,2,2,2,20,23],[2,2],[2,2],[2,2,10,10,10,10,10]] except []
sliceRow f1041 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,4,0,2,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,4,0,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,4,0,2,0]) slices 12 withHints bank tags [1,2,20,24] except []
tagSlices f1042 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,4,1,0,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,4,1,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,4,1,0,1]) withHints bank eachTags[[2,2],[2,2,2,2,2],[2,2,2,2,2,2],[2,2],[2,2,2,2,2,20],[2,2],[2,2],[2,2,10,10,10,10,10]] except []
sliceRow f1043 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,4,1,1,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,4,1,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,4,1,1,0]) slices 12 withHints bank tags [2,10] except []
sliceRow f1044 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,4,2,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,4,2,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,4,2,0,0]) slices 12 withHints bank tags [2,1,23,27] except []
tagSlices f1045 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,0,1,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,0,1,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,0,1,4]) withHints bank eachTags[[10,20],[],[33,1,1,1,1,1],[2,2,10,10,20,19,36],[1,1,1,8,1,1,8,1],[2,10,10],[],[2,2]] except []
end Blc.SelfintSingleObject.Compact45
