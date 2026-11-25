import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f272 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,2,0,0,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,2,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,2,0,0,0]) withHints bank eachTags[[],[12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,10,10,10,10,10,10,10,10,10],[12,12,12,12,12,36,36,36,36,36],[12,12,12,12,10,10,36,36],[12,12,12,12,12,10,10,36,10,36],[12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,36,36,10,36,10,10,36,10,36],[],[],[],[],[],[]] except []
theorem f273 : BadRow (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,1,0,0,0,1]) := sparse_four ⟨0,3,0,2,6,3⟩ [0,0,0] [1,1,0,0,0,1] (by decide)
theorem f274 : BadRow (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,1,0,0,1,0]) := sparse_four ⟨0,3,0,2,6,3⟩ [0,0,0] [1,1,0,0,1,0] (by decide)
theorem f275 : BadRow (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,1,0,1,0,0]) := sparse_four ⟨0,3,0,2,6,3⟩ [0,0,0] [1,1,0,1,0,0] (by decide)
theorem f276 : BadRow (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,1,1,0,0,0]) := sparse_four ⟨0,3,0,2,6,3⟩ [0,0,0] [1,1,1,0,0,0] (by decide)
tagSlices f277 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,2,0,0,0,0]) byParts (fun j => Split43.four 8 j ⟨0,3,0,2,6,3⟩ [0,0,0] [1,2,0,0,0,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,2,6,3⟩ [0,0,0] [1,2,0,0,0,0]) withHints bank eachTags[[],[12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,10,10,10,10,10,10,10,10,10],[],[12,12,10,10],[12,12,12,10,10,10],[12,12,12,12,12,12,12,12,12,10,10,10,10,10,10,10,10,10],[],[]] except []
end Blc.SelfintSingleObject.Compact45
