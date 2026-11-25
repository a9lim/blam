import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f4785 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,2,1,3]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,2,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,2,1,3]) withHints bank eachTags[[6,6,6,2,2,2],[6,6,6,2,2,2,2],[6,6,6,6,2,2],[6,6,6,6,3,3],[6,6,6,6,2],[6,6,6,6,6,6,6,2,2],[],[6,6,6]] except []
tagSlices f4786 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,2,2,2]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,2,2,2]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,2,2,2]) withHints bank eachTags[[6,6,6,6,2],[6,6,6,6,6,2,2],[6,6,6,6,2,2,2],[6,2,2,3],[6],[6,2,6,2],[],[6,6]] except []
tagSlices f4787 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,2,3,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,2,3,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,2,3,1]) withHints bank eachTags[[6,2,2],[6,6,6,6,2],[6,6,6,6,2,2],[6,6,2,2,2,3],[6],[6,6,6,2,6,2],[],[6]] except []
sliceRow f4788 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,2,4,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [0,2,4,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,2,4,0]) slices 12 withHints bank tags [6,2] except []
tagSlices f4789 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,3,0,3]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,3,0,3]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,3,0,3]) withHints bank eachTags[[6],[6,6,2,2,2,2],[6,2],[6,6,2,2,3,3],[2],[6,6,2,6,6],[2,2],[6,2,2]] except []
end Blc.SelfintSingleObject.Compact45
