import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f978 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,0,0,3,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,0,0,3,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,0,0,3,3]) withHints bank eachTags[[2,2],[6,6,6,6,6],[6,6,2,1,2,1,1],[6,6,6,6],[6,6,6,6,6,2,2,2,2,2,2,1,1,1,1,1],[6,2,1],[],[6,6,10,10,10,10,10,10,20,20,1,1]] except []
tagSlices f979 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,0,0,4,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,0,0,4,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,0,0,4,2]) withHints bank eachTags[[2,2],[],[2,1,2,1,1],[2,2],[2,2,2],[2,2,1,1,1,1,1,1],[2,2,2],[2,2,1,1,1,10,10,10,20,20,1]] except []
tagSlices f980 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,0,1,1,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,0,1,1,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,0,1,1,4]) withHints bank eachTags[[2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,10,10,10,19,1,1,1,1,8,20,20,20,20,20,20,19]] except []
end Blc.SelfintSingleObject.Compact45
