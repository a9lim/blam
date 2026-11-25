import Blc.SelfintPositiveWord45
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f4336 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [2,0,1,1,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [2,0,1,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [2,0,1,1,0]) withHints bank eachTags[[6,6],[6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,6,6],[6,6,6,6,6],[6],[],[]] except []
sliceRow f4337 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [2,0,2,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,4,5,4⟩ [0,1] [2,0,2,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [2,0,2,0,0]) slices 12 withHints bank tags [6] except []
tagSlices f4338 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [2,1,0,0,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [2,1,0,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [2,1,0,0,1]) withHints bank eachTags[[6],[6,6,6,6,6,6,6,6],[6,6,6,6],[6,6,6,6,6,6,6],[6,6,6,6,6],[],[6,6],[6]] except []
tagSlices f4339 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [2,1,0,1,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [2,1,0,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [2,1,0,1,0]) withHints bank eachTags[[6],[6,6,6,6,6],[6,6,6,6,6,6,6],[6,6,6,6,6],[6,6,6,6,6],[],[6,6],[]] except []
sliceRow f4340 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [2,1,1,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,4,5,4⟩ [0,1] [2,1,1,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [2,1,1,0,0]) slices 12 withHints bank tags [6] except []
tagSlices f4341 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [2,2,0,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,4,5,4⟩ [0,1] [2,2,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [2,2,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
sliceRow f4342 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [3,0,0,0,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,4,5,4⟩ [0,1] [3,0,0,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [3,0,0,0,1]) slices 12 withHints bank tags [6] except []
sliceRow f4343 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [3,0,0,1,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,4,5,4⟩ [0,1] [3,0,0,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [3,0,0,1,0]) slices 12 withHints bank tags [6] except []
sliceRow f4344 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [3,0,1,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,4,5,4⟩ [0,1] [3,0,1,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [3,0,1,0,0]) slices 12 withHints bank tags [6] except []
sliceRow f4345 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [3,1,0,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,4,5,4⟩ [0,1] [3,1,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [3,1,0,0,0]) slices 12 withHints bank tags [6] except []
theorem f4346 : BadRow (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [4,0,0,0,0]) := sparse_four ⟨1,2,1,4,5,4⟩ [0,1] [4,0,0,0,0] (by decide)
theorem f4504 : BadRow (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,0,1] [0,0,0,4]) := sparse_four ⟨1,3,1,4,4,4⟩ [0,0,1] [0,0,0,4] (by decide)
end Blc.SelfintSingleObject.Compact45
