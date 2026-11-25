import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f5133 on (Grammar43.fourRow ⟨1,2,1,6,4,4⟩ [0,1] [3,1,0,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,6,4,4⟩ [0,1] [3,1,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,4⟩ [0,1] [3,1,0,0]) withHints bank eachTags[[],[6,6],[],[6],[],[],[],[],[],[],[],[]] except []
theorem f5134 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,4⟩ [0,1] [4,0,0,0]) := sparse_four ⟨1,2,1,6,4,4⟩ [0,1] [4,0,0,0] (by decide)
certRow f5336 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,0,1,2,2]) using bank tags [12,1,1,12,12,1,1,20,1,20,12,1,1,3,3,3]
certRow f5337 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,0,2,1,2]) using bank tags [20,21,21,20,20,21,20,20,20,20,1,1,1,3,3,3]
certRow f5338 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,0,2,2,1]) using bank tags [21,12,21,20,20,12,28,12,20,20,1,12,1,3,3,3]
certRow f5339 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,1,0,2,2]) using bank tags [12,1,12,1,1,12,1,12,12,1,1,1,1,1,12,1,12,1,1,3,3,3,3,3]
certRow f5340 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,1,1,1,2]) using bank tags [2,2,2,2,2,2,2,2,2]
certRow f5341 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,1,1,2,1]) using bank tags [2,2,2,2,2,2,2,2,2]
certRow f5342 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,1,2,0,2]) using bank tags [5,35,1,1,1,5,35,1,1,1,1,1,1,1,5,35,1,1,1,3,3,3,3,3]
certRow f5343 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,1,2,1,1]) using bank tags [2,2,2,2,2,2,2,2,2]
end Blc.SelfintSingleObject.Compact45
