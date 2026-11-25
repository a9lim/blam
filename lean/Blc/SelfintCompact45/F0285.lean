import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1009 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,1,3,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,1,3,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,1,3,0,2]) withHints bank eachTags[[6,6,6],[2,2,2,2,2,2,2,2,36,36],[6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,1,49],[2,2,2,6,2,2,6],[6,6,6,6,6,6,2,2,2,2],[2,2,2,2,2,2,1],[6,6],[2,2,1,1,8,1,8,20,20,1,1,20,52,8,8]] except []
tagSlices f1010 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,1,3,1,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,1,3,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,1,3,1,1]) withHints bank eachTags[[6,6,6,2,2,2,2,2],[2,2,2,2,2,2],[2,2,2,2,2],[6,6,6,6,6,6,6,2,2,2,2,2,2,2,2,6,2,2,23,71,8,1,8,48,8,1,1,1,20,52],[],[6,6,2,2,2,2],[2,2,2,2,57],[2,2],[6,2,49],[6,2,2,2,2],[6,6,6,2,2,6,2,2,2,2,6,2,2],[8,8]] except []
tagSlices f1011 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,1,3,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,1,3,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,1,3,2,0]) withHints bank eachTags[[6,6,6],[6,36],[6,6,6,6,6,2,2,2,2,2,2,2,1],[2,6,6,2,2,6],[6,6,6,40],[2,2,2,2,2,2,2,2,1],[6],[1,20,1]] except []
end Blc.SelfintSingleObject.Compact45
