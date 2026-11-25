import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f4825 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,1,1,2]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [2,1,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,1,1,2]) withHints bank eachTags[[6,6,6,6,6,2],[6,6,6,6,2,2],[6,6,6,2],[],[6],[6,6,6,6,6,6,2],[],[6]] except []
sliceRow f4826 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,1,2,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,1,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,1,2,1]) slices 12 withHints bank tags [6,2] except []
sliceRow f4827 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,1,3,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,1,3,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,1,3,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f4828 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,2,0,2]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,2,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,2,0,2]) slices 12 withHints bank tags [6,2] except []
sliceRow f4829 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,2,1,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,2,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,2,1,1]) slices 12 withHints bank tags [6,2] except []
sliceRow f4830 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,2,2,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,2,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,2,2,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f4831 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,3,0,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,3,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,3,0,1]) slices 12 withHints bank tags [6,2] except []
sliceRow f4832 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,3,1,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,3,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,3,1,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f4833 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [2,4,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [2,4,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [2,4,0,0]) slices 12 withHints bank tags [6] except []
sliceRow f4834 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [3,0,0,3]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [3,0,0,3]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [3,0,0,3]) slices 12 withHints bank tags [6,2] except []
sliceRow f4835 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [3,0,1,2]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [3,0,1,2]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [3,0,1,2]) slices 12 withHints bank tags [6,2] except []
sliceRow f4836 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [3,0,2,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [3,0,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [3,0,2,1]) slices 12 withHints bank tags [6,2] except []
sliceRow f4837 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [3,0,3,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [3,0,3,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [3,0,3,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f4838 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [3,1,0,2]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [3,1,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [3,1,0,2]) slices 12 withHints bank tags [6,2] except []
sliceRow f4839 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [3,1,1,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [3,1,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [3,1,1,1]) slices 12 withHints bank tags [6,2] except []
sliceRow f4840 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [3,1,2,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [3,1,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [3,1,2,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f4841 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [3,2,0,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [3,2,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [3,2,0,1]) slices 12 withHints bank tags [6,2] except []
sliceRow f4842 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [3,2,1,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [3,2,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [3,2,1,0]) slices 12 withHints bank tags [6,2] except []
tagSlices f4843 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [3,3,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [3,3,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [3,3,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow f4844 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [4,0,0,2]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [4,0,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [4,0,0,2]) slices 12 withHints bank tags [6,2] except []
sliceRow f4845 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [4,0,1,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [4,0,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [4,0,1,1]) slices 12 withHints bank tags [2,6] except []
sliceRow f4846 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [4,0,2,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [4,0,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [4,0,2,0]) slices 12 withHints bank tags [6,2] except []
sliceRow f4847 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [4,1,0,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [4,1,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [4,1,0,1]) slices 12 withHints bank tags [6,2] except []
sliceRow f4848 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [4,1,1,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [4,1,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [4,1,1,0]) slices 12 withHints bank tags [2,6] except []
end Blc.SelfintSingleObject.Compact45
