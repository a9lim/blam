import Blc.SelfintPositiveWord45
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
sliceRow f4849 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [4,2,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [4,2,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [4,2,0,0]) slices 12 withHints bank tags [6] except []
sliceRow f4850 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [5,0,0,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [5,0,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [5,0,0,1]) slices 12 withHints bank tags [2] except []
sliceRow f4851 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [5,0,1,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [5,0,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [5,0,1,0]) slices 12 withHints bank tags [2] except []
sliceRow f4852 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [5,1,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [5,1,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [5,1,0,0]) slices 12 withHints bank tags [2] except []
theorem f5100 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,4⟩ [0,1] [0,0,0,4]) := sparse_four ⟨1,2,1,6,4,4⟩ [0,1] [0,0,0,4] (by decide)
tagSlices f5101 on (Grammar43.fourRow ⟨1,2,1,6,4,4⟩ [0,1] [0,0,1,3]) byParts (fun j => Split43.four 12 j ⟨1,2,1,6,4,4⟩ [0,1] [0,0,1,3]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,4⟩ [0,1] [0,0,1,3]) withHints bank eachTags[[],[6,6,6],[],[6,6],[6],[6],[],[6,6],[],[6],[],[]] except []
end Blc.SelfintSingleObject.Compact45
