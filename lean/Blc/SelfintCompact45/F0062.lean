import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f201 on (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [2,0,1,0,0,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,2,7,3⟩ [0,0] [2,0,1,0,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,2,7,3⟩ [0,0] [2,0,1,0,0,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[],[2,2,2,2,2,2,2,2,2,2],[],[]] except []
tagSlices f202 on (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [2,1,0,0,0,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,2,7,3⟩ [0,0] [2,1,0,0,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,2,7,3⟩ [0,0] [2,1,0,0,0,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2],[2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[],[2,2,2,2,2,2],[],[]] except []
certRow f203 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [0,1,2,2,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f204 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [0,2,1,2,2]) using bank tags [21,21,21,21,21,28,28,21,28,1,1,1,1,1,1,1,1,1]
certRow f205 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [0,2,2,1,2]) using bank tags [21,21,20,21,28,20,28,21,28,1,1,1,1,1,1,1,1,1]
certRow f206 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [0,2,2,2,1]) using bank tags [21,21,21,50,20,0,28,21,28,1,1,1,1,1,1,1,1,1] except [Floor45.e9676573046646]
certRow f207 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [1,0,2,2,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,20,0,20,20,28,28,0,20,20] except [Floor45.e9573494316782,Floor45.e9573493546734]
end Blc.SelfintSingleObject.Compact45
