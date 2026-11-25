import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1022 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,2,1,3,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,2,1,3,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,2,1,3,0]) withHints bank eachTags[[2,2],[6,6,48],[6,6,6,6,2,2,2,2,2,11],[6,6,6,6],[6,6,2,2,36,27],[6,2,2,11,2,2,2,11,1],[2,2,2],[10,10,1,23]] except []
tagSlices f1023 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,2,2,0,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,2,2,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,2,2,0,2]) withHints bank eachTags[[6,6,6,6,6,6,6,2,2,2,2,2],[6,6,6,6,6,37,1,2,2,11,1,2,1,20,28],[6,6,37,56,1,2,11,26,60,2,19],[6,6,6,6,6,6,6,6,6,47,47],[6,6,6,6,6],[6,6,1,19],[6,6,2,2],[6,6,1,11],[6,6,6,6],[6,6,6,6,6,2,2,2],[6,6,6,6,6,6,2,2,11,1,2,1],[37,1,1]] except []
tagSlices f1024 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,2,2,1,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,2,2,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,2,2,1,1]) withHints bank eachTags[[6,6,6,6,6,6,6,6,6,2,37,26,2,11],[2,2,2,2,2,2,2,2,2,2,20,28],[56,2,2,2,2,26,43,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,47,23,23,47,23],[],[6,6,6,6,6,6,19],[2,2,2,2,27],[6,6,2,2],[80],[6,2,2,2],[6,6,6,6,6,6,6,2,2,2],[]] except []
end Blc.SelfintSingleObject.Compact45
