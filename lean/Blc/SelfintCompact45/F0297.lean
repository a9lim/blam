import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1058 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,3,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,3,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,3,0,2]) withHints bank eachTags[[],[6,6,6,6,6,1,10],[6,6,33,33,1,1,1,1,10,21],[6,6],[6,6,6,6,6,48,8,8,8,8,1,1,1,19,10],[10,40,36],[6,6,6,6,6],[]] except []
tagSlices f1059 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,3,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,3,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,3,1,1]) withHints bank eachTags[[6,6],[1,10],[6,6,6,6,6,33,33,1,2,1,1,2,2,2],[2,2,6,6,6],[1,48,8,8,48,8,1,19,1,19,10],[2,1,2,20,10,2,2],[6,6,6],[2,2,8]] except []
tagSlices f1060 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,3,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,3,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,3,2,0]) withHints bank eachTags[[],[6,6,6,6,6,8],[6,6,6,6,1,2,1,1,10,28],[6,6,6],[6,6,6,6,6,8],[2,1,1,2,21,10,10,21],[6,6,6],[]] except []
sliceRow f1061 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,4,0,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,4,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,4,0,1]) slices 12 withHints bank tags [1,8,10,43,58,20] except []
sliceRow f1062 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,4,1,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,4,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,4,1,0]) slices 12 withHints bank tags [1,2,10,8,23] except [Floor45.e9689629919194]
end Blc.SelfintSingleObject.Compact45
