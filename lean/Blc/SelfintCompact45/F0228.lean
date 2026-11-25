import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f694 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [3,0,3,3]) using bank tags []
certRow f695 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [3,1,2,3]) using bank tags [1,1,1,1,23,1,1,30,1,20]
certRow f696 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [3,1,3,2]) using bank tags [1,1,49,1,1,1,1,40,1,20]
certRow f697 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [3,2,1,3]) using bank tags [1,1,1,1,23,1,1,1,39,20]
certRow f698 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [3,2,2,2]) using bank tags []
certRow f699 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [3,2,3,1]) using bank tags [1,1,1,1,1,1]
certRow f700 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [3,3,0,3]) using bank tags []
certRow f701 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [3,3,1,2]) using bank tags [1,1,8,1,8,1,1,8,39,8]
certRow f702 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [3,3,2,1]) using bank tags [83,89,8,1,1,8]
certRow f703 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [3,3,3,0]) using bank tags []
certRow f704 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [0,0,0,2,3]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,20,20,20,0,28,8,21,114,114,20,114,21,20,21,20,1,1,1,1,136,1,1,1,0,21,8] except [Floor45.e9676765801950,Floor45.e9573686586846]
certRow f705 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [0,0,0,3,2]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,20,20,20,213,0,8,21,114,114,20,114,21,20,21,20,1,1,1,1,46,1,1,1,164,21,8] except [Floor45.e9676775239150]
tagSlices f706 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [0,0,1,1,3]) byParts (fun j => Split43.four 12 j ⟨0,3,0,3,5,5⟩ [0,0,0] [0,0,1,1,3]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,5⟩ [0,0,0] [0,0,1,1,3]) withHints bank eachTags[[12,12,12,12,12,12,20,20,20,20,0,0,21,0,8,21,37,1,1,1,1,19,1,1,1,20,0,157,93,0,8,21],[12,12,12,9,9,9],[],[12,12,12,12,12,12,12,9,9,11,1,1,1,1],[12,12,12,12,12,9,9,9,9,9],[12,11],[12,12,12,12,9,9,9,0],[12,12,12,12,1,1,1,1],[8,8],[12,12,12,12,12,1,1,1,1,1],[],[]] except [Floor45.e9676763390430,Floor45.e9676763391774,Floor45.e9676763355934,Floor45.e9573684175326,Floor45.e9573684140830,Floor45.e9573529346526]
end Blc.SelfintSingleObject.Compact45
