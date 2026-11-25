import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f920 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,1,3,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,1,3,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,1,3,2]) withHints bank eachTags[[6,6,6,6,6,6,6,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,1,2,2,20,2,2,1,1,21,2],[2,2,2,2,2,2,2,1],[6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,1,19],[],[6,6,6,2,2,6,2,2,2,2,2],[6,2,1],[6,2,6,2],[2,2],[2,2,2,2,2,21,2,2,2],[6,6,6,6,6,6,6,2],[1,18,18,27,8,23,20,20,20,28,20]] except []
tagSlices f921 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,1,4,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,1,4,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,1,4,1]) withHints bank eachTags[[],[],[2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,10,10,10,10,10,18,20,58]] except []
tagSlices f922 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,0,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,0,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,0,4]) withHints bank eachTags[[1,1],[],[1,11,1,1,1],[1,1,1,1,1],[2,2],[1,11],[],[2,2,1,37,1,1,1,11,11,1,1,10,10,20,8,20,20,8,20,8,20,59,28,28]] except []
end Blc.SelfintSingleObject.Compact45
