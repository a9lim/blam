import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1070 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,1,1,2,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,1,1,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,1,1,2,1]) withHints bank eachTags[[2,2,2,1,2,10,10,20,18],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,18],[2,2,2,2,37,2,2,2,1,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[6,6,6,6,6,2,2],[6,6,2,2,2,10,10,2],[6,6,6,6],[6,6,6],[2,2,10,2,30,2,18],[6,6,6,6,6,6,6,6,6,6,18],[]] except []
tagSlices f1071 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,1,1,3,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,1,1,3,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,1,1,3,0]) withHints bank eachTags[[2],[1],[6,6,2,2,2,2,2,1],[6,6,6,6],[1,1,33],[6,2,2,2,2,1,2,10,10,20,18],[6,6,6,10],[]] except []
tagSlices f1072 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,1,2,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,1,2,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,1,2,0,2]) withHints bank eachTags[[6,6,6],[6,6,6,6,6,6,6,6,6,6,2,2,2,10],[6,6,6,6,6,6,1,19,1,2,1,1,1,2,1,10,20,18],[6,6,6,6,6,6,6,6,6,19,37,10],[6,6,6,6,6,2,10,2,2,2,10],[6,6,10,10,10,20,36,36],[10,10],[6,6]] except []
end Blc.SelfintSingleObject.Compact45
