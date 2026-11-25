import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
sliceRow f4811 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,2,2,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [1,2,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,2,2,1]) slices 12 withHints bank tags [6,2] except []
sliceRow f4812 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,2,3,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [1,2,3,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,2,3,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f4813 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,3,0,2]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [1,3,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,3,0,2]) slices 12 withHints bank tags [6,2] except []
sliceRow f4814 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,3,1,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [1,3,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,3,1,1]) slices 12 withHints bank tags [6,2] except []
sliceRow f4815 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,3,2,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [1,3,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,3,2,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f4816 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,4,0,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [1,4,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,4,0,1]) slices 12 withHints bank tags [6,2] except []
sliceRow f4817 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,4,1,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [1,4,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,4,1,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f4818 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,5,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [1,5,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,5,0,0]) slices 12 withHints bank tags [2] except []
sliceRow f4819 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,0,0,4]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,0,0,4]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,0,0,4]) slices 12 withHints bank tags [6,2] except []
tagSlices f4820 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,0,1,3]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [2,0,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,0,1,3]) withHints bank eachTags[[2,2,2,2,2],[6,6,6,6,6,2,2],[6,6],[],[6,6,2],[6,6,6,6],[],[6,6,6]] except []
sliceRow f4821 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,0,2,2]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,0,2,2]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,0,2,2]) slices 12 withHints bank tags [6,2] except []
sliceRow f4822 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,0,3,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,0,3,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,0,3,1]) slices 12 withHints bank tags [6,2] except []
sliceRow f4823 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,0,4,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,0,4,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,0,4,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f4824 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,1,0,3]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,1,0,3]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,1,0,3]) slices 12 withHints bank tags [6,2] except []
end Blc.SelfintSingleObject.Compact45
