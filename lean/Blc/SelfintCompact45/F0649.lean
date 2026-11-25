import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f4775 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,0,3,3]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,0,3,3]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,0,3,3]) withHints bank eachTags[[2,2],[6,6,2,2,2,2,2,2],[6,6,2,2],[6,6,2,2,3,3,3,3],[],[6,6,6,6,2,2],[],[2,2]] except []
tagSlices f4776 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,0,4,2]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,0,4,2]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,0,4,2]) withHints bank eachTags[[2,2,2,2],[6,2,2,2],[6,6,2,2],[6,6,6,2,2,2,3,3,3,3],[6,2],[2,6,6,6,2,2],[],[]] except []
sliceRow f4777 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,0,5,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [0,0,5,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,0,5,1]) slices 12 withHints bank tags [2,3] except []
tagSlices f4778 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,1,0,5]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,1,0,5]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,1,0,5]) withHints bank eachTags[[2,2,2,2],[2,2,2,2,2,2],[2],[2,2,2,2,3,3,3,3,3,3,3,3],[2,2,2,2],[2,2,2,2,2,2],[],[2,2,2]] except []
tagSlices f4779 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,1,1,4]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,1,1,4]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,1,1,4]) withHints bank eachTags[[2,2,2,2],[6,6,6,2,2,2,2],[6,2,2,2],[6,6,6,2,3,3,3],[6,2,6,6],[6,2,6,6,2],[],[6,6,6,6]] except []
end Blc.SelfintSingleObject.Compact45
