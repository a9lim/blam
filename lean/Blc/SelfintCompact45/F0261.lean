import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f923 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,1,3]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,1,3]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,1,3]) withHints bank eachTags[[6,6,6,6,6,6,6,6,6,2,6,6,2,2,2,11,1,2,2,11,20,1,1,2,2,2,20],[2,2],[2,11,2,2,2,11,1],[6,6,6,6,6,6,6,6,6,2,6,6,6,6,6,6,6,6,6,6,6,2,2,37,2,2,2,1,1,11,19],[],[6,6,6,6,6,2,2,2,11],[6,6,2,2],[6,6,6,6],[2,2,2,2,2,2,2],[6,6,6,6,6,2,2,2,2,2,2,20],[2,2,2,2,2,2,2,2],[2,2,2,2,2,1,1,10,83,20,20,8,20,20,20,8,28,28,48,21]] except []
tagSlices f924 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,2,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,2,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,2,2,2]) withHints bank eachTags[[2,2,2,2,20,2,2,2,2,2,21],[2,2,2,2,2,11,1,2,1,2,2,11,2,20,1,1,2,2,2,20,1,1,21],[6,6,2,2,37,26,11,2,11,1,2,2,11,1,1],[6,6,2,2,40,26,1,2,1,1,2,2,1,1,1,19],[6,6,6,6,6],[6,6,6,6,2,2,37,1,2,11],[],[6,6,6,6],[6,6,6,2,11,2,2,11],[6,6,6,6,6,2,2,2,2,21],[6,6,6,6,6,6,6,6,6,6,6,6,6,1,1,21],[1,1,1,1,23,71,20,8,20,8,8,52,23,58,20,8,20,0]] except [Floor45.e9692726658958]
end Blc.SelfintSingleObject.Compact45
