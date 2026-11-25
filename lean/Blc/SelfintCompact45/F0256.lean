import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f905 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,2,4,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,2,4,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,2,4,1]) withHints bank eachTags[[],[8,8],[2,2,2,2,2,11,20],[2,2,2,2],[2,2,2,1],[2,2,2,2,11,20,2,2,11,21,20],[],[2,2,2,2,2,2,11,1,2,2,10,19,21,10,10,1,1,1,1,52,20,58]] except []
tagSlices f906 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,0,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,0,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,0,4]) withHints bank eachTags[[],[2,2,2,2,2,8,8],[2,2],[2,2],[2,2,2,2,2],[],[],[2,2,2,2,2,2,2,2,2,1,19,1,1,1,20,21,20,59]] except []
tagSlices f907 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,1,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,1,3]) withHints bank eachTags[[],[6,6,6,21,20,8,8,8],[2,2,2,2,20,20],[6,6,2,2,2],[6,6,6,6,6,21,28,20],[2,2,2],[6,6,6],[2,2,20,6,6,6,2,2,2,2,2,1,1,2,2,2,2,2,2,19,20,21,1,30,1,1,27,191,8,20,191,191]] except []
end Blc.SelfintSingleObject.Compact45
