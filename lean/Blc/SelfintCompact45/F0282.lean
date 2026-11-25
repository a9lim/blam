import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1000 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,1,1,0,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,1,1,0,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,1,1,0,4]) withHints bank eachTags[[2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2],[],[2,2,10,10,10,10,10,1,1,8,1,8,19,1,19,1,1,18,18,20,20,20,20,8,8,8,8,8,8]] except []
tagSlices f1001 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,1,1,1,3]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,1,1,1,3]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,1,1,1,3]) withHints bank eachTags[[6,6,6,6,6,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[36],[2,2,2,2,2,2,2],[6,6,6,6,6,6,6,6,2,6,2,2,2,2,2,1,23,23,1,8,1,1,1,1,1,1,1,1,49,20],[],[6,6,6,2,2],[2,2,6,2,2,2,2,2],[6,6],[2,2,2,2],[2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[8,8]] except []
tagSlices f1002 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,1,1,2,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,1,1,2,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,1,1,2,2]) withHints bank eachTags[[6,6,6,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1],[2,2,2,2,2,2,2,2,2,2,2,2],[6,6,6,19,1,1,19,40,1,1,1,1,1,20,20],[],[2,2,2],[6,6,2,2,2,1],[],[6,6,6,6,2,2],[2,2,2,2],[6,6,6,6,6,6,6,6,6,6,1],[8,8]] except []
end Blc.SelfintSingleObject.Compact45
