import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f610 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [1,1,1,0,0,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,3,6,5⟩ [0,0] [1,1,1,0,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [1,1,1,0,0,2]) withHints bank eachTags[[2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,2,2,2,2,2,2,2,2],[6,6,6,6],[6,6,6,6,6,2,2,2,2,2,2,36,36,36,36,36],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[20,20,20,1,1],[2,2,2,2,2],[],[6,6,6,6,6]] except []
theorem f611 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [1,1,1,0,1,1]) := sparse_four ⟨0,2,0,3,6,5⟩ [0,0] [1,1,1,0,1,1] (by decide)
tagSlices f612 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [1,1,1,0,2,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,3,6,5⟩ [0,0] [1,1,1,0,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [1,1,1,0,2,0]) withHints bank eachTags[[6,6,6,6,6,6,6,6,6,2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,2,2,2,2,2,2,2,2],[6,6,6,6],[6,6,6,6,6,2,2,2,2,2,2,36,36,36,36,36],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[20,20,20,1,1],[2,2,2,2,2],[],[6,6,6,6,6,1,1,1,1]] except []
theorem f613 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [1,1,1,1,0,1]) := sparse_four ⟨0,2,0,3,6,5⟩ [0,0] [1,1,1,1,0,1] (by decide)
theorem f614 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [1,1,1,1,1,0]) := sparse_four ⟨0,2,0,3,6,5⟩ [0,0] [1,1,1,1,1,0] (by decide)
end Blc.SelfintSingleObject.Compact45
