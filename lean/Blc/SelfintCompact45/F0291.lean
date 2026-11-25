import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1030 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,3,0,1,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,3,0,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,3,0,1,2]) withHints bank eachTags[[6],[2,2,2,2,2,2,2],[6,6,2,177,59],[2,2,2,2,2,2,2,24],[2,2,2,2,2],[2,2,2,1,2,1,2],[6,6,2,2,2,20],[2,2,2,2,2,2,1,1,1,10,24,24,1,1,10,10]] except []
tagSlices f1031 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,3,0,2,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,3,0,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,3,0,2,1]) withHints bank eachTags[[6],[6,6,2,11],[2,2,2,6,2,2,6,2,36,36],[6,6,2,2,2,2,2,24],[2,2,2,2,2,1,1,177,51],[2,2,2,2,2,2],[6,6,2,11,20,2],[2,2,2,2,1,10,10,1,24,10,10,10,1,1]] except []
tagSlices f1032 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,3,0,3,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,3,0,3,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,3,0,3,0]) withHints bank eachTags[[],[6,6,6,6,6],[6,6],[6,6],[6,6,6,6,6,2,2,2,36,36],[1,1],[20],[10,10,10]] except []
tagSlices f1033 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,3,1,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,3,1,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,3,1,0,2]) withHints bank eachTags[[6,6],[2,2,2,2,2,2,2],[6,6,6,1,2,177],[2,2,2,2,2,24,24],[2,2,2,2,2],[2,2,2,1,2],[6,6,2,2],[2,2,2,2,1,1,8,10,1,8,10]] except []
end Blc.SelfintSingleObject.Compact45
