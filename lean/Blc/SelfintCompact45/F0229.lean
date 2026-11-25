import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f707 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [0,0,1,2,2]) byParts (fun j => Split43.four 12 j ⟨0,3,0,3,5,5⟩ [0,0,0] [0,0,1,2,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,5⟩ [0,0,0] [0,0,1,2,2]) withHints bank eachTags[[6,6,6,12,12,12,12,12,12,0,20,0,0,0,0,33,33,33,40,1,1,1,1,1,28,21,0,0,0,0],[6,6,6,11,20,20],[],[6,6,12,12,12,12,12,12,11,11,1,1,1,1,1,1],[6,6,6,6,6,20,20,20,20,20],[],[6,6,6,11,1,1],[12,12,1,1,1,20],[],[12,12,12,12,12,1,1,1,1,1],[12,12,12,12,12,12,12,1,1,1,1,1,1,1],[]] except [Floor45.e9676763391886,Floor45.e9676763356046,Floor45.e9676763369198,Floor45.e9676763379950,Floor45.e9676763355374,Floor45.e9573684140942,Floor45.e9573684154094,Floor45.e9573684164846,Floor45.e9573684140270]
tagSlices f708 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [0,0,1,3,1]) byParts (fun j => Split43.four 12 j ⟨0,3,0,3,5,5⟩ [0,0,0] [0,0,1,3,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,5⟩ [0,0,0] [0,0,1,3,1]) withHints bank eachTags[[12,12,12,12,12,12,20,20,20,20,0,206,0,199,8,28,19,1,1,1,1,30,1,1,1,20,0,154,0,28,8,28],[12,12,12,9,9,9],[],[12,12,12,12,12,12,12,9,9,11,1,1,1,1],[12,12,12,12,12,9,9,9,9,9],[12,11],[12,12,12,12,9,9,9,0],[12,12,1,1],[8,8],[1,133],[12,12,12,12,12,12,12,1,1,1,1,1,1,1],[]] except [Floor45.e9676763390454,Floor45.e9676763379958,Floor45.e9573684175350,Floor45.e9573684164854,Floor45.e9573529346550]
certRow f709 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [0,0,2,0,3]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,20,30,20,20,20,0,214,20,89,8,8,11,37,20,20,20,11,37,114,126,21,21,20,114,21,37,40,1,1,1,19,39,20,136,1,40,1,1,1,0,165,20,83,8,8] except [Floor45.e9676765805790,Floor45.e9573686590686]
end Blc.SelfintSingleObject.Compact45
