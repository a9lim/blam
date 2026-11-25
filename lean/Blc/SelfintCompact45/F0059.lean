import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f190 on (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,0,2,0,0,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,2,7,3⟩ [0,0] [1,0,2,0,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,2,7,3⟩ [0,0] [1,0,2,0,0,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[],[2,2,2,2,2,2,2,2,2,2],[],[]] except []
theorem f191 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,1,0,0,0,0,1]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [1,1,0,0,0,0,1] (by decide)
theorem f192 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,1,0,0,0,1,0]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [1,1,0,0,0,1,0] (by decide)
theorem f193 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,1,0,0,1,0,0]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [1,1,0,0,1,0,0] (by decide)
theorem f194 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,1,0,1,0,0,0]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [1,1,0,1,0,0,0] (by decide)
theorem f195 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,1,1,0,0,0,0]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [1,1,1,0,0,0,0] (by decide)
tagSlices f196 on (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,2,0,0,0,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,2,7,3⟩ [0,0] [1,2,0,0,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,2,7,3⟩ [0,0] [1,2,0,0,0,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2],[2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[],[2,2,2,2,2,2],[],[]] except []
end Blc.SelfintSingleObject.Compact45
