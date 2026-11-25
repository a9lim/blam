import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f4802 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,0,4,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [1,0,4,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,0,4,1]) withHints bank eachTags[[2,2,2],[6,6,2,2,2,6,6,6],[6,6,6,2,2],[6,6,6,6,6],[],[6,2,2,6],[],[6,2]] except []
certRow f4803 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,0,5,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2]
tagSlices f4804 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,1,0,4]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [1,1,0,4]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,1,0,4]) withHints bank eachTags[[2,2],[6,6,6,6,6,6,2],[6,2],[6,6,6,6,6,6,6,6],[6],[6,6,2,2],[],[6,6,6]] except []
certRow f4805 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,1,1,3]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,6,6,2]
certRow f4806 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,1,2,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2]
certRow f4807 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,1,3,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,2,6,2,6,6,2]
certRow f4808 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,1,4,0]) using bank tags [6,6,6,6,2,6,2,6,6,2,6,2]
tagSlices f4809 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,2,0,3]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [1,2,0,3]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,2,0,3]) withHints bank eachTags[[6,6,2,2,2],[6,6,6,6,2],[6,2],[6,6],[6,6,6],[6,6,6,6,6],[2,2],[6,6,6]] except []
certRow f4810 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,2,1,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2]
end Blc.SelfintSingleObject.Compact45
