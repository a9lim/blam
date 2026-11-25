import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f932 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,4,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,4,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,4,1,1]) withHints bank eachTags[[2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2],[],[10,10,10]] except []
tagSlices f933 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,4,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,4,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,4,2,0]) withHints bank eachTags[[2],[2],[2,2,2,1,2,1,1],[],[2,2,2,241,244,20],[2,2,2,1,1],[],[1,2,10,52,23,83]] except []
tagSlices f934 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,2,0,1,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,2,0,1,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,2,0,1,4]) withHints bank eachTags[[21,20],[],[21,20,20,11,11,19],[2,2,20,21,20,21,21],[177],[2,20,20],[],[2,2,2,2,1,1,1,37,11,1,18,21,20,28,28,1,28,1]] except []
end Blc.SelfintSingleObject.Compact45
