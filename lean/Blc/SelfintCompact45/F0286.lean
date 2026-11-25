import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1012 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,1,4,0,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,1,4,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,1,4,0,1]) withHints bank eachTags[[2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2],[2,2,2,2,2,23],[2,2,2,2],[],[10,10,10,10,10,1,1,20,1,18,18,8,8]] except []
tagSlices f1013 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,1,4,1,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,1,4,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,1,4,1,0]) withHints bank eachTags[[2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[],[2,2],[],[10,10,10,1,23,1,18,8]] except []
tagSlices f1014 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,0,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,0,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,0,4]) withHints bank eachTags[[20,1],[],[1,1,11,11,1],[1,1,1,1,1],[2,2,2,2,2],[20,20],[2,2,2,2,2],[1,1,18,18,1,10,10,10,10,10]] except []
tagSlices f1015 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,1,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,1,3]) withHints bank eachTags[[2,2,2,2,2,20,8],[6,6,6,6,6,2,2,20,20],[2,2,2,2,2,1,2,2,2,2,11,43],[6,6,6,6,6,6,6,2,2,2,2,2],[6,6,6,2,6,6,6,2,2,1,37,1,2,1,1,2],[6,6,6,2,2,2,20],[2,2,2,2,2],[6,6,6,6,10,10,10,1,1,48,8,8,58,8]] except []
end Blc.SelfintSingleObject.Compact45
