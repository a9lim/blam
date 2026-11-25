import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f956 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,4,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,4,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,4,0]) withHints bank eachTags[[],[2,2,2,2,2],[2,2],[2,2],[2,2,2,2,2,2,2,20,27],[],[],[2,2,2,2,2,1,1,18,1,18]] except []
tagSlices f957 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,1,0,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,1,0,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,1,0,3]) withHints bank eachTags[[2],[6,6,6,6,6,21],[6,6,2],[6,6],[6,6,6,6,6,20,20,20,50],[],[6,6,6,6,6,20,20],[20,6,6,6,6,6]] except []
tagSlices f958 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,1,1,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,1,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,1,1,2]) withHints bank eachTags[[6,6],[2,2,2,2,2,20,21,2,2,2,2],[2,2,6,6,6,20,2],[6,6,6,6,6,2,2,2,2,2],[6,6,6,6,6,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,21,2,20,20,2],[6,6,2,2,2,2,2,20],[2,2,2,2,2,2,6,6,6,6,6,2,10,10,10,10,18]] except []
end Blc.SelfintSingleObject.Compact45
