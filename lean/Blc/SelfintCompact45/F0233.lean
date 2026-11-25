import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f720 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [0,1,1,1,2]) byParts (fun j => Split43.four 12 j ⟨0,3,0,3,5,5⟩ [0,0,0] [0,1,1,1,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,5⟩ [0,0,0] [0,1,1,1,2]) withHints bank eachTags[[12,12,12,12,12,12,1,28,21,0,0,8,202,218,39,1,40,1,40,1,1,21,21,159,0,8,151,168],[],[6,6,9,9],[6,6,12,12,12,12,12,12,9,9,40,1,37,1,1,1],[6,6,6,6,6,9,9,9,9,9],[12,1],[1,0],[],[12,12,12,1,1,1],[],[12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,1,1,1,1,1,1,1,1],[]] except [Floor45.e9676763400046,Floor45.e9676763405422,Floor45.e9573684190318,Floor45.e9573529836654]
tagSlices f721 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [0,1,1,2,1]) byParts (fun j => Split43.four 12 j ⟨0,3,0,3,5,5⟩ [0,0,0] [0,1,1,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,5⟩ [0,0,0] [0,1,1,2,1]) withHints bank eachTags[[12,12,12,12,12,1,28,8,8,209,203,0,40,19,1,1,1,1,28,8,8,21,21,0],[],[6,6,9,9],[6,6,12,12,12,12,12,9,9,37,37,1,1,1],[6,6,6,6,6,9,9,9,9,9],[12,12,1,1],[1,0],[12,12,1,1],[12,12,12,1,1,1],[12,12,12,1,1,1,1,28],[12,12,12,12,12,12,1,1,1,1,1,1],[]] except [Floor45.e9676766344134,Floor45.e9573687129030,Floor45.e9573529842630]
certRow f722 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [0,1,1,3,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,20,20,20,21,0,49,0,9,9,9,9,9,9,9,9,9,9,9,9,9,37,11,1,11,1,1,1,1,19,37,0,20,20,20,21,160,59,0] except [Floor45.e9676763400058,Floor45.e9676746098554,Floor45.e9573528471418,Floor45.e9573666883450]
end Blc.SelfintSingleObject.Compact45
