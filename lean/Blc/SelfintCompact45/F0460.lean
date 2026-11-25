import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1746 on (Grammar43.fourRow ⟨0,2,0,6,4,7⟩ [0,0] [2,5,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,6,4,7⟩ [0,0] [2,5,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,7⟩ [0,0] [2,5,0,0]) withHints bank eachTags[[],[6,6],[],[6],[],[],[],[],[],[],[],[]] except []
tagSlices f1747 on (Grammar43.fourRow ⟨0,2,0,6,4,7⟩ [0,0] [3,0,0,4]) byParts (fun j => Split43.four 12 j ⟨0,2,0,6,4,7⟩ [0,0] [3,0,0,4]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,7⟩ [0,0] [3,0,0,4]) withHints bank eachTags[[6,2,2],[6,6],[6],[6,6,6,6],[2,2],[],[],[],[2],[6,6],[],[]] except []
end Blc.SelfintSingleObject.Compact45
