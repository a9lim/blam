import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1676 on (Grammar43.fourRow ⟨0,2,0,6,4,7⟩ [0,0] [0,1,5,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,6,4,7⟩ [0,0] [0,1,5,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,7⟩ [0,0] [0,1,5,1]) withHints bank eachTags[[],[2,6,10],[6,6,6,6,2,2],[6,6,6,6,6,2],[6,2,2],[6,6,6,2],[],[],[],[6,2],[2],[6,2,2]] except []
tagSlices f1677 on (Grammar43.fourRow ⟨0,2,0,6,4,7⟩ [0,0] [0,1,6,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,6,4,7⟩ [0,0] [0,1,6,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,7⟩ [0,0] [0,1,6,0]) withHints bank eachTags[[],[2,10],[2,2],[2,2],[],[2,2],[],[],[],[],[],[2]] except []
end Blc.SelfintSingleObject.Compact45
