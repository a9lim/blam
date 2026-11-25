import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f4796 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,5,0,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,3,3]
certRow f4797 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,5,1,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,3]
certRow f4798 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,0,0,5]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
tagSlices f4799 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,0,1,4]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [1,0,1,4]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,0,1,4]) withHints bank eachTags[[2,2,2],[6,6,6,6,6,6,6,2,2,2],[6,2,2],[6,6,6,6,6],[6,6],[6,6,6,2],[],[6,6,6,6]] except []
tagSlices f4800 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,0,2,3]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [1,0,2,3]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,0,2,3]) withHints bank eachTags[[6,6,2,2,2,2,2],[6,6,6,6,6,2,2,2],[6,6,2,2],[6,6,6],[6,6,2],[6,6,6,6,6],[],[6,6,6,6]] except []
tagSlices f4801 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [1,0,3,2]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [1,0,3,2]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [1,0,3,2]) withHints bank eachTags[[6,6,2,2],[6,6,6,2,2,6,6,6,6,2,2],[6,6],[6,6,6,2,2],[6,6,2],[6,6,6,6,6],[],[6,6,2,2]] except []
end Blc.SelfintSingleObject.Compact45
