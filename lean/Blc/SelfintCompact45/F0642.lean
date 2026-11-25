import Blc.SelfintPositiveWord45
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
sliceRow f4321 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [1,0,3,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,4,5,4⟩ [0,1] [1,0,3,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [1,0,3,0,0]) slices 12 withHints bank tags [6] except []
tagSlices f4322 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [1,1,0,0,2]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [1,1,0,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [1,1,0,0,2]) withHints bank eachTags[[6],[6,6,6,6,6],[6,6,6,6],[6,6],[6,6,6,6,6],[],[6,6,6,6,6,6,6],[]] except []
theorem f4323 : BadRow (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [1,1,0,1,1]) := sparse_four ⟨1,2,1,4,5,4⟩ [0,1] [1,1,0,1,1] (by decide)
tagSlices f4324 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [1,1,0,2,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [1,1,0,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [1,1,0,2,0]) withHints bank eachTags[[6],[6,6,6,6,6],[6,6,6,6],[6,6,6,6],[6,6,6,6,6],[],[6,6,6,6,6,6,6],[]] except []
theorem f4325 : BadRow (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [1,1,1,0,1]) := sparse_four ⟨1,2,1,4,5,4⟩ [0,1] [1,1,1,0,1] (by decide)
theorem f4326 : BadRow (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [1,1,1,1,0]) := sparse_four ⟨1,2,1,4,5,4⟩ [0,1] [1,1,1,1,0] (by decide)
sliceRow f4327 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [1,1,2,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,4,5,4⟩ [0,1] [1,1,2,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [1,1,2,0,0]) slices 12 withHints bank tags [6] except []
tagSlices f4328 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [1,2,0,0,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [1,2,0,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [1,2,0,0,1]) withHints bank eachTags[[],[6,6,6,6,6,6,6,6],[6,6],[6,6,6,6,6,6,6],[6,6,6,6,6],[],[6,6,6,6,6],[6]] except []
end Blc.SelfintSingleObject.Compact45
