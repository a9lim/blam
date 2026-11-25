import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1073 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,1,2,1,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,1,2,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,1,2,1,1]) withHints bank eachTags[[2,2,2,19,37,2,10,10,2,10],[2,2,2,2,10,2,2,2,10,2,2,2,2],[19,2,2,2,2,37,1,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[6,6,6,6,6,10],[6,6,2,2,10,10,10],[6,6],[6,6],[2,2,2,2,10],[6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2],[]] except []
tagSlices f1074 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,1,2,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,1,2,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,1,2,2,0]) withHints bank eachTags[[6,6,6],[6,6,6,6,6],[6,6,6,6,6,19,1,2,2,37,1,2,1,10,20,18],[6,6,6,6,6,6,6,6],[],[6,10,2,2,2,2,2,19,1,1,2,10,2,10,2,10,10,20,18],[10],[]] except []
tagSlices f1075 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,1,3,0,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,1,3,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,1,3,0,1]) withHints bank eachTags[[6,6,6],[],[6,6,6,6,1,2,1,2,2,2,2,10],[6,6],[1,1,1,33,33,37],[2,2,2,2,10],[6,6,6,6,6],[1]] except []
end Blc.SelfintSingleObject.Compact45
