import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f4280 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,3,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,3,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,3,1]) withHints bank eachTags[[],[6,6,6],[6,6,6,6,6,6,6,6],[6,6,6],[6,6,6,6,6,6,6,6,6],[6],[6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6]] except []
theorem f4281 : BadRow (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,4,0]) := sparse_four ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,4,0] (by decide)
tagSlices f4282 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,1,0,3]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [0,0,1,0,3]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [0,0,1,0,3]) withHints bank eachTags[[],[6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,6],[6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6],[6,6],[6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]] except []
tagSlices f4283 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,1,1,2]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [0,0,1,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [0,0,1,1,2]) withHints bank eachTags[[],[6,6,6],[6,6,6,6,6,6,6,6,6],[6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6],[6],[6,6,6],[6,6,6,6,6,6,6]] except []
tagSlices f4284 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,1,2,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [0,0,1,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [0,0,1,2,1]) withHints bank eachTags[[],[6,6,6,6,6,6],[6,6,6,6,6],[6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6],[6],[6,6,6],[6,6,6,6,6,6,6,6,6,6]] except []
end Blc.SelfintSingleObject.Compact45
