import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1046 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,0,2,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,0,2,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,0,2,3]) withHints bank eachTags[[2,2,10,2,2,40],[6,6,6,6,6],[6,6,33,2,2,37,1,1,2,2,37,1,1,1,1],[6,6,6,6,1,1,10,10,21],[6,6,6,6,6,1,1,8,1,10,10,50,19,36],[6,2,2,10,10,10],[6,6,6],[6,6]] except []
tagSlices f1047 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,0,3,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,0,3,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,0,3,2]) withHints bank eachTags[[2,2],[6,6,6,6,6],[6,6,33,2,1,1,2,1,1,1,1],[6,6,6,6],[6,6,6,6,6,8,8,8,1,1,1,10,10,21],[6,2,10,10,10,10,40,21,36],[6,6,6],[6,6]] except []
sliceRow f1048 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,0,4,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,0,4,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,0,4,1]) slices 12 withHints bank tags [1,2,10,8,74,48,33,21] except []
tagSlices f1049 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,0,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,0,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,0,4]) withHints bank eachTags[[10,21],[],[33,33,1,1,1,1,1],[10,10,20,20,36],[1,1,1,1,1,8,8,1,1,1,1,1,1,1],[10,10],[],[]] except []
tagSlices f1050 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,1,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,0,1,1,3]) withHints bank eachTags[[2,2,2,2],[6,6,6,6,6,10,20],[2,2,33,2,2,2,2,2,1,2,2,1,2,2,1,1,1],[6,6,6,6,6,6,6,2,2,2,2,2,2],[1,1,1,1,1,10,10,10,21,20,36,19,36],[6,6,6,2,2,2,2,2,10],[6,6,6],[6,6,6,6]] except []
end Blc.SelfintSingleObject.Compact45
