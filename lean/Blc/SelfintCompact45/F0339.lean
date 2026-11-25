import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1371 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,1,2,5]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [1,1,2,5]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,1,2,5]) withHints bank eachTags[[2,2,2,2],[2,2,2,2],[2],[2],[2,2,2,2],[2,2,2,2,10,1,18,18,19],[],[2,2,2]] except []
tagSlices f1372 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,1,3,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [1,1,3,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,1,3,4]) withHints bank eachTags[[2,2,1,2,2,2],[6,6,6,2,1],[6],[2,6],[6,6,6],[11,2,2,2,11,1,8,18],[2,2],[2,2]] except []
tagSlices f1373 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,1,4,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [1,1,4,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,1,4,3]) withHints bank eachTags[[2,2,2,2],[6,2,2,6,1],[6,6,1],[2,6],[6,6,6,2],[2,1,23,18,19],[2,2],[2,2,2,2,2,2]] except []
sliceRow f1374 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,1,5,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [1,1,5,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,1,5,2]) slices 12 withHints bank tags [2,1,10,18,23] except []
tagSlices f1375 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [1,2,1,5]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [1,2,1,5]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [1,2,1,5]) withHints bank eachTags[[2,2,11],[2,2],[2,2,2],[2,2,2,2],[2,2,2,1],[2,2,2,2,2,10,10,18,1,1,10,19,1],[],[2,2,2,2]] except []
end Blc.SelfintSingleObject.Compact45
