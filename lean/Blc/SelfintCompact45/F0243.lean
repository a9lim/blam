import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f763 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [1,1,2,0,1]) byParts (fun j => Split43.four 12 j ⟨0,3,0,3,5,5⟩ [0,0,0] [1,1,2,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,5⟩ [0,0,0] [1,1,2,0,1]) withHints bank eachTags[[28,28,28,28,28,28],[6,6,6,6,6,9,9,9,9,9],[6,6,9,9],[6,6,12,12,12,12,12,9,9,37,37,37,37,37],[6,6,6,6,6,9,9,9,9,9],[12,12,0,20],[6,6,6,6,6,6,6,12,12,33,33,33,33,33,33,33,20,20],[6,20,20,94],[12,20,20,20,21,21],[12,12,12,24,24,0],[6,6,12,12,20,27,21,20],[]] except [Floor45.e9573494373574,Floor45.e9573493559110]
certRow f764 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [1,1,2,1,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,12,12,12,12,12,12,12,12,12,12,12,12,28,28,20,20,9,9,9,9,9,9,9,9,9,33,33,33,33,20,37,37,37,20,21,20,20,19,19,0,20,20,28,20,21,0] except [Floor45.e9573493559066,Floor45.e9573530455834]
certRow f765 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [1,1,3,0,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,48,20,71,9,9,9,9,9,9,9,9,9,9,37,37,10,19,10,27,20,74]
certRow f766 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [1,2,0,0,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,0,8,8,8,8,35,35,1,1,19,20,20,20,1,1,1,1,1,1,37,37,1,30,1,20,20,20,20,20,20,20,23,23,20,20,20,20,20,118,8,8,8,8] except [Floor45.e9676620536206]
end Blc.SelfintSingleObject.Compact45
