import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1304 on (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [0,2,0,0,1]) byParts (fun j => Split43.four 8 j ⟨0,3,0,4,5,3⟩ [0,0,0] [0,2,0,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,4,5,3⟩ [0,0,0] [0,2,0,0,1]) withHints bank eachTags[[],[6,6,6,6,6,3,3,3,3,3],[6,6,3,3],[6,6,3,3],[6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3],[],[6,6,6,6,6,3,3,3,3,3],[]] except []
tagSlices f1305 on (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [0,2,0,1,0]) byParts (fun j => Split43.four 8 j ⟨0,3,0,4,5,3⟩ [0,0,0] [0,2,0,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,4,5,3⟩ [0,0,0] [0,2,0,1,0]) withHints bank eachTags[[],[6,6,6,6,6,6,6,3,3,3,3,3,3,3],[6,6,3,3],[6,6,6,6,3,3,3,3],[6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3],[],[6,6,6,6,6,3,3,3,3,3],[]] except []
tagSlices f1306 on (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [0,2,1,0,0]) byParts (fun j => Split43.four 8 j ⟨0,3,0,4,5,3⟩ [0,0,0] [0,2,1,0,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,4,5,3⟩ [0,0,0] [0,2,1,0,0]) withHints bank eachTags[[],[6,6,6,6,3,3,3,3],[6,6,3,3],[6,6,3,3],[6,6,6,6,6,6,3,3,3,3,3,3],[],[6,6,6,3,3,3],[]] except []
theorem f1307 : BadRow (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [0,3,0,0,0]) := sparse_four ⟨0,3,0,4,5,3⟩ [0,0,0] [0,3,0,0,0] (by decide)
tagSlices f1308 on (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [1,0,0,0,2]) byParts (fun j => Split43.four 8 j ⟨0,3,0,4,5,3⟩ [0,0,0] [1,0,0,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,4,5,3⟩ [0,0,0] [1,0,0,0,2]) withHints bank eachTags[[],[6,6,6,6,6,3,3,3,3,3],[6,6,3,3],[6,6,3,3],[6,6,6,6,6,3,3,3,3,3],[],[],[]] except []
theorem f1309 : BadRow (Grammar43.fourRow ⟨0,3,0,4,5,3⟩ [0,0,0] [1,0,0,1,1]) := sparse_four ⟨0,3,0,4,5,3⟩ [0,0,0] [1,0,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
