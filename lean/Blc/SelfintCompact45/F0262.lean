import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f925 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,3,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,3,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,3,1]) withHints bank eachTags[[6,6,6,6,6,6,6,6,2,2,11,1,1],[2,2,2,2,2,2,11,2,2,2,2,2,21,2],[26,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,26,2,11],[],[6,6,6,6,37,2],[6,2,2],[6,6],[2,2,2],[6,2,2,2],[6,6,6,6,6,2,6,6,6,6,2,2,2,20],[1,20,20,21,28,48]] except []
tagSlices f926 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,4,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,4,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,4,0]) withHints bank eachTags[[],[2],[2,2,37,2],[],[2,2,2,21,245,95],[37,2,2,2,2,11,1,1],[],[37,2,10,280,23,58]] except []
tagSlices f927 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,3,0,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,3,0,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,3,0,3]) withHints bank eachTags[[2],[6,6,6,6,6,1,1],[6,6,2,1,1],[6,6],[6,6,6,6,6,1,1,1],[],[6,6,6,6,6],[21,6,6,6,6,6,2,2,1,1,11,11,1,37,107,8,20,20,28,28]] except []
end Blc.SelfintSingleObject.Compact45
