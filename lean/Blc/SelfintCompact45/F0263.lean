import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f928 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,3,1,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,3,1,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,3,1,2]) withHints bank eachTags[[6,6,6,6,6,6,6,2,2,6,6,6,2,2,2,2,2,2,2,2],[2,1,2,1,1,2,2,2,20,2,2],[2,2,2,2,1],[6,6,6,6,6,6,6,2,2,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,1,11],[],[6,6,2,2,2,2,2],[6,6,2,2,1],[2,2,2,2],[6,6,6],[2,2,2,2,2,21,2,2,2,2,2,2],[6,6,6,6,6,6,2,2,2,20],[1,10,10,49,18,18,58,20,71,20,28,74,21]] except []
tagSlices f929 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,3,2,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,3,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,3,2,1]) withHints bank eachTags[[6,6,6,6,6,2,2,6,2,2,1,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,21,2],[2,2,11,2],[6,6,6,6,6,2,2,6,6,6,6,6,6,2,2,2,1,2,11],[],[6,6,2,2,2],[6,2,2],[2,2],[6,6,6,1],[6,2,2,11,2,11],[6,6,6,2,2,6,6,2,2,2,6,6,6,2,2,2,21,20],[1,10,10,107,18,71,20,48,49,28,74]] except []
tagSlices f930 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,3,3,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,3,3,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,3,3,0]) withHints bank eachTags[[2],[6,6,6],[6,6,6,2],[6,6],[6,6,6,2,2,20,20],[2,2,2,1,1],[6,6,6],[6,6,6]] except []
certRow f931 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,4,0,2]) using bank tags [2,2,2,2,1,1,1,1,1,1,1,1,1,10,10,52,278,191,39]
end Blc.SelfintSingleObject.Compact45
