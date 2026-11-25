import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f780 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [2,0,1,1,1]) byParts (fun j => Split43.four 12 j ⟨0,3,0,3,5,5⟩ [0,0,0] [2,0,1,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,5⟩ [0,0,0] [2,0,1,1,1]) withHints bank eachTags[[],[6,6,6,6,6,9,9,9,9,9],[6,6,9,9],[6,6,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,10,37,37,56,10,19,37,37,1,10,19,1,1],[6,6,6,6,6,9,9,9,9,9],[9,9,9,9,36,20,20,20],[],[9,9,9,9,10,20,36,20],[9,9,20,20],[9,9,9,9,9,19,20,20,20,20],[9,9,9,9,9,9,9,9,9,9,36,39,20,20,20,20,20,20,20,20],[]] except []
certRow f781 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [2,0,1,2,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,9,9,9,9,9,9,9,9,9,9,9,9,33,33,33,33,33,1,1,27,18,33,33,20,20,18,37,10,37,1,20,10,19,20,36,20,20,20]
certRow f782 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [2,0,2,0,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,9,9,9,9,9,9,9,33,33,33,33,33,27,1,33,20,33,33,48,33,106,1,1,20,20,20,20,20]
certRow f783 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [2,0,2,1,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,9,9,9,9,9,9,9,9,9,9,33,33,33,33,33,27,1,33,20,33,33,48,33,108,1,10,1,20,20,10,20,36,20,20]
certRow f784 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [2,0,3,0,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,36,36,10,36,10,10,36,10,36]
certRow f785 on (Grammar43.fourRow ⟨0,3,0,3,5,5⟩ [0,0,0] [2,1,0,0,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,9,9,9,9,9,9,9,9,9,9,9,9,9,9,33,33,33,33,33,1,1,1,18,1,1,18,18,21,36,36,1,39,1,20,20,20,20,20,20,20,20,48]
end Blc.SelfintSingleObject.Compact45
