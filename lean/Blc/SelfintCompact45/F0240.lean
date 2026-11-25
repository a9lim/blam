import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f749 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,1,2,1]) byParts (fun j => Split43.four 12 j ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,1,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,1,2,1]) withHints bank eachTags[[28,20,20,0,20,20,20,20,0,28],[6,6,6,6,6,9,9,9,9,9],[6,6,9,9],[6,6,12,12,12,12,12,12,12,9,9,37,37,1,37,37,1,1],[6,6,6,6,6,9,9,9,9,9],[12,12,21,20],[6,6,6,20,33,33,33,0],[6,12,12,21,20,21,0,28],[12,12,28,30],[12,12,12,12,12,24,24,20,20,0],[12,12,12,20,20,20],[]] except [Floor45.e9676620391286,Floor45.e9573541176182,Floor45.e9573530891206,Floor45.e9573493552070,Floor45.e9573493353926]
certRow f750 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,1,3,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,60,20,20,8,20,20,9,9,9,9,9,9,9,9,9,9,9,9,9,9,37,10,37,1,20,10,19,20,36,20,27,0,57,21,21,8,20,28] except [Floor45.e9573493353594]
tagSlices f751 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,2,0,2]) byParts (fun j => Split43.four 12 j ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,2,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,5⟩ [0,0,0] [1,0,2,0,2]) withHints bank eachTags[[0,8,8,28,8,8,0,20,20,28,8,8,28,8,8,21,28,28],[6,6,6,6,6,35,1,1,1,1],[6,6,35,20],[6,6,12,12,12,12,12,12,12,20,1,37,40,1,1,1,1,1],[6,6,6,6,6,1,1,1,1,1],[12,12,20,20],[20,20,0,28],[12,12,20,20],[12,12,20,20],[12,12,12,12,12,23,23,80,20,20],[12,12,12,20,20,20],[]] except [Floor45.e9676620462478,Floor45.e9676620391342,Floor45.e9573530892686]
end Blc.SelfintSingleObject.Compact45
