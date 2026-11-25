import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f746 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,0,3,1]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,20,20,20,8,28,28,8,20,20,9,9,9,9,9,9,9,9,9,9,9,9,9,9,10,1,10,1,1,36,20,36,20,20,20,20,20,20,21,107,21,8,0,20,8,20,0] except [Floor45.e9573541239030,Floor45.e9573530884342]
tagSlices f747 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,1,0,3]) byParts (fun j => Split43.four 12 j ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,1,0,3]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,1,0,3]) withHints bank eachTags[[20,20,20,20,20,8,8,28,28,20,28,20,20,20,21,107,21,21,21,8,8,28,28,20,28,20,28,28],[12,12,12,12,12,9,9,9,9,9],[12,12,9,9],[12,12,12,12,12,12,12,9,9,37,40,1,1,1],[12,12,12,12,12,9,9,9,9,9],[12,12,21,20],[20,20,0,0],[12,12,20,0],[],[12,12,12,12,12,23,23,21,20,0],[],[]] except [Floor45.e9573530891038,Floor45.e9573530885406,Floor45.e9573493551902,Floor45.e9573493353758]
tagSlices f748 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,1,1,2]) byParts (fun j => Split43.four 12 j ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,1,1,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,1,1,2]) withHints bank eachTags[[28,28,20,28,20,20,20,20,20,28],[6,6,6,6,6,9,9,9,9,9],[6,6,9,9],[6,6,12,12,12,12,12,12,9,9,40,37,10,1,1,1],[6,6,6,6,6,9,9,9,9,9],[12,28],[6,6,6,20,33,33,33,28],[],[12,12,28,30],[],[12,12,12,12,12,12,12,12,12,12,36,20,20,20,30,21,20,0,0,20],[]] except [Floor45.e9573493353582,Floor45.e9573493531502]
end Blc.SelfintSingleObject.Compact45
