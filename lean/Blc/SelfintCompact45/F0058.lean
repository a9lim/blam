import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f181 on (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,0,0,0,2,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,2,7,3⟩ [0,0] [1,0,0,0,2,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,2,7,3⟩ [0,0] [1,0,0,0,2,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[],[],[],[]] except []
theorem f182 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,0,0,1,0,0,1]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [1,0,0,1,0,0,1] (by decide)
theorem f183 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,0,0,1,0,1,0]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [1,0,0,1,0,1,0] (by decide)
theorem f184 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,0,0,1,1,0,0]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [1,0,0,1,1,0,0] (by decide)
tagSlices f185 on (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,0,0,2,0,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,2,7,3⟩ [0,0] [1,0,0,2,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,2,7,3⟩ [0,0] [1,0,0,2,0,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[],[2,2,2,2,2,2,2,2,2,2],[],[]] except []
theorem f186 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,0,1,0,0,0,1]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [1,0,1,0,0,0,1] (by decide)
theorem f187 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,0,1,0,0,1,0]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [1,0,1,0,0,1,0] (by decide)
theorem f188 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,0,1,0,1,0,0]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [1,0,1,0,1,0,0] (by decide)
theorem f189 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [1,0,1,1,0,0,0]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [1,0,1,1,0,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
