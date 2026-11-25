import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1063 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,1,0,0,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,1,0,0,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,1,0,0,4]) withHints bank eachTags[[10,20],[],[1,1,1,1,1],[10,10,19,20,36],[1,1,1,1,1,1,1,1,1,1],[10,10],[],[]] except []
tagSlices f1064 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,1,0,1,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,1,0,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,1,0,1,3]) withHints bank eachTags[[2,2,2,2],[6,6,6,6,6,18],[2,2,2,1,2,2,2,2,1,1],[6,6,6,6,6,6,6,2,2,2,2,2],[1,1,1,33,10,10,19,18,19,36,36],[6,6,6,2,2,2,10],[6,6,6,6,6,10,10],[6,6,6,6]] except []
tagSlices f1065 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,1,0,2,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,1,0,2,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,1,0,2,2]) withHints bank eachTags[[2,2,2,10,2,2,18],[6,6,6,6,6,10,10,20,18,19,36,36],[6,6,2,2,37,1,2,1,2,2,37,1,1,2,2,1,1],[6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6],[6,6,6,6,2,10,10,2,10],[2,10,10,10],[6,6,6,6],[2,2,10,2,30],[6,6,6,6,6,2,18],[6,6,6,6,6],[37,19,10,10,20]] except []
end Blc.SelfintSingleObject.Compact45
