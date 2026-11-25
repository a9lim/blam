import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f987 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,0,2,3,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,0,2,3,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,0,2,3,1]) withHints bank eachTags[[2,2],[6,2,2],[6,6,6,2,6,6,6,6,2,2,6,26,2,2,2,11,1,2,2,2,36],[6,6,6,6,6,6,2,6,6,6,2],[6,2,2,2,6,6,6,6,2,11,1,2,11,1,1,49,8,20],[6,6,6,6,19,2,2,2,2,2,2,2,2,2],[],[6,6,10,10,1,10,1,20,52,8,20,37,1]] except []
tagSlices f988 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,0,2,4,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,0,2,4,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,0,2,4,0]) withHints bank eachTags[[],[],[2,2,37,2,2,11,1],[2],[2,36],[37,2,2,11,1,2,2,11,1,1],[2,2,2],[40,1,1,10,74]] except []
tagSlices f989 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,0,3,0,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,0,3,0,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,0,3,0,3]) withHints bank eachTags[[],[6,6,6,6,6,20,1],[6,6,1,1],[6,6],[6,6,6,6,6,2,2,2,2,2,2,2,1,1,1],[],[],[10,10,10,10,10,10,10,20,19,1,1]] except []
end Blc.SelfintSingleObject.Compact45
