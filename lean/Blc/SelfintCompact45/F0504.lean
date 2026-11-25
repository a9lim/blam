import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1818 on (Grammar43.fourRow ⟨0,3,0,6,4,3⟩ [0,0,0] [0,0,2,1]) byParts (fun j => Split43.four 12 j ⟨0,3,0,6,4,3⟩ [0,0,0] [0,0,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,6,4,3⟩ [0,0,0] [0,0,2,1]) withHints bank eachTags[[],[6,3],[],[6,6,3,3],[6,3],[6,3],[],[],[],[],[],[]] except []
theorem f1819 : BadRow (Grammar43.fourRow ⟨0,3,0,6,4,3⟩ [0,0,0] [0,0,3,0]) := sparse_four ⟨0,3,0,6,4,3⟩ [0,0,0] [0,0,3,0] (by decide)
end Blc.SelfintSingleObject.Compact45
