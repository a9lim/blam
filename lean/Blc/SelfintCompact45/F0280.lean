import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f994 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,0,4,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,0,4,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,0,4,1,1]) withHints bank eachTags[[2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2],[2,2,2,2,2,20,21,48],[2,2,2,2,2],[],[10,10,10,1,1,1,18,18]] except []
tagSlices f995 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,0,4,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,0,4,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,0,4,2,0]) withHints bank eachTags[[],[],[2,2,1,2,1,1,1],[2],[2,2,36],[2,1,2,1,1],[2,2,2],[40,1,1,10,10,20]] except []
tagSlices f996 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,1,0,1,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,1,0,1,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,1,0,1,4]) withHints bank eachTags[[2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2],[],[2,2,2,2,10,10,10,10,10,1,1,1,1,1,1,1,30,1,1,1,1,1,1,18,20,20,8,8,8]] except []
end Blc.SelfintSingleObject.Compact45
