import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f156 on (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,0,0,2]) byParts (fun j => Split43.four 24 j ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,0,0,2]) byCover (Split43.four_cover 24 (by decide) ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,0,0,2]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem f157 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,0,1,1]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
