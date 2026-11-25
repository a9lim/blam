import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f4790 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,3,1,2]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,3,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,3,1,2]) withHints bank eachTags[[6,6,2,2,6],[6,6,2,2,6,2],[6,6,6,2],[6,6,6,2,2,2,2,3,3],[6,6,6,2],[6,6,6,6,6,6,2,6,6],[6],[6,6,2]] except []
tagSlices f4791 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,3,2,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,3,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,3,2,1]) withHints bank eachTags[[6,2],[6,2,6,2,2,6,6],[6,6,6,6,2,2],[6,6,2,2,2,3],[6,6],[6,6,6,6,6,6],[6,2],[6,6]] except []
certRow f4792 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,3,3,0]) using bank tags [6,6,6,2,2,2,2,2]
tagSlices f4793 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,4,0,2]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,4,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,4,0,2]) withHints bank eachTags[[6,2],[6,6,2,2],[6,6,2],[6,6,2,3,3],[6,6,2,2],[2,2,2,6,6],[2],[2,2]] except []
tagSlices f4794 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,4,1,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,4,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,4,1,1]) withHints bank eachTags[[6,2],[2,2,6],[6,6,2,2,6,2],[6,6,2,3,3],[2,2],[2,2,2],[6,2],[2]] except []
certRow f4795 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,4,2,0]) using bank tags [6,6,6,6,2,6,6,2,2,2,2,6]
end Blc.SelfintSingleObject.Compact45
