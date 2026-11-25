import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f2155 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,0,0,2]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,0,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,0,0,2]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,20,20,20,20,20],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]] except []
theorem f2156 : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,0,1,1]) := sparse_four ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,0,1,1] (by decide)
tagSlices f2157 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,0,2,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,0,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,0,2,0]) withHints bank eachTags[[3,3,3,3,3,3,3,20,20],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,20,20,20,20,20],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]] except []
theorem f2158 : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,1,0,1]) := sparse_four ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,1,0,1] (by decide)
theorem f2159 : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,1,1,0]) := sparse_four ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,1,1,0] (by decide)
tagSlices f2160 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,2,0,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,2,0,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [1,0,1,2,0,0]) withHints bank eachTags[[3,3,3,3,20,3],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,20,20,20],[2,2,2,2,2,3],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[3,3,3,3,3,3,3,3,3,3,3,3,3]] except []
end Blc.SelfintSingleObject.Compact45
