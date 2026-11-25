import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f584 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [1,0,1,0,3,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,3,6,5⟩ [0,0] [1,0,1,0,3,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [1,0,1,0,3,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,1,1,1],[2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[1,1,57,1,1,1,1,1,1,1,1,1,1,1,8,8,8,8,8,8,8,28,28,28,20,28,28,20,28,20,20,20,20,1,1],[2,2,2,2,2,2,2,2,2],[],[2,2,2,20,20,20,20,20,1,1,1,1]] except []
tagSlices f585 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [1,0,1,1,0,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,3,6,5⟩ [0,0] [1,0,1,1,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [1,0,1,1,0,2]) withHints bank eachTags[[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,2,2,2,2,1,1],[6,6,6,6,6,6,6,6],[6,6,6,6,6,2,2,2,2,2,2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[28,28,28,28,28,20,28,28,28,28,20,28,20,20,1,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[1,10,1,10],[6,6,6,6,6,6,6,2,2]] except []
theorem f586 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [1,0,1,1,1,1]) := sparse_four ⟨0,2,0,3,6,5⟩ [0,0] [1,0,1,1,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
