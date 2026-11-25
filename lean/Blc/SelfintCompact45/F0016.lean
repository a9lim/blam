import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f79 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,1,1,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,1,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,1,1,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,10,10],[1,1,10,10,10],[1,1,1,1,1,10,10,10,10,10,10,10,10,10],[],[]] except []
tagSlices f80 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,1,2,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,1,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,1,2,1]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,10,10],[1,1,10,10,10],[1,1,1,1,1,20,20,20,10,20,20,10,10,10],[],[]] except []
tagSlices f81 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,2,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,2,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,2,0,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,19,1,1,1],[1,19,28,28],[1,1,21,20,20],[1,1,1,1,1,20,20,20,28,20,20,21,20,20],[],[]] except []
tagSlices f82 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,2,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,2,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,2,1,1]) withHints bank eachTags[[],[1,37,1,1,1,1,37,1,1,1,1,1,1,1],[1,30,1,1,1],[1,30,10,10],[1,1,20,20,10],[1,1,1,1,1,20,20,20,10,20,20,20,20,10],[],[]] except []
end Blc.SelfintSingleObject.Compact45
