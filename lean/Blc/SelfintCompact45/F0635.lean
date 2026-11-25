import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f4285 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,1,3,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [0,0,1,3,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [0,0,1,3,0]) withHints bank eachTags[[],[6,6,6,6],[6,6,6,6,6],[6,6,6,6],[6,6,6,6,6,6],[],[6,6,6,6],[6,6,6,6,6,6,6]] except []
tagSlices f4286 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,2,0,2]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [0,0,2,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [0,0,2,0,2]) withHints bank eachTags[[6,6],[6,6,6,6,6],[6,6,6,6,6],[6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6],[6,6],[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]] except []
tagSlices f4287 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,2,1,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [0,0,2,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [0,0,2,1,1]) withHints bank eachTags[[],[6,6,6,6,6,6],[6,6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6],[6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]] except []
sliceRow f4288 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,2,2,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,4,5,4⟩ [0,1] [0,0,2,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [0,0,2,2,0]) slices 12 withHints bank tags [6] except []
tagSlices f4289 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,3,0,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [0,0,3,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [0,0,3,0,1]) withHints bank eachTags[[6,6],[6,6,6,6,6],[6,6,6,6,6,6,6],[6,6,6,6],[6,6,6,6,6,6,6],[],[6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6]] except []
end Blc.SelfintSingleObject.Compact45
