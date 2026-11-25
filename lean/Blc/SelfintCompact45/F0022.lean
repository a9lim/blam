import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f105 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,0,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,0,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,0,1,1]) withHints bank eachTags[[],[1,1,37,37,37,1,1,1,1,1,37,1,1,1],[1,1,30,30,39],[1,1,20,20],[1,1,20,20,20],[1,19,1,1,1,20,39,20,20,20,20,20,20,20],[],[]] except []
tagSlices f106 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,0,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,0,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,0,2,0]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,19,1,19],[1,1,20,20],[1,1,20,20,20],[1,1,1,1,1,20,40,20,20,20,20,20,20,20],[],[]] except []
tagSlices f107 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,1,0,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,1,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,1,0,1]) withHints bank eachTags[[],[1,1,37,37,37,1,1,1,1,1,37,1,1,1],[1,1,30,30,39],[1,1,20,20],[1,1,20,20,20],[1,19,1,1,1,20,39,20,20,20,20,20,20,20],[],[]] except []
certRow f108 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,1,1,0]) using bank tags [1,1,37,37,37,1,1,1,1,1,37,1,1,1,1,1,30,30,39,1,1,20,20,1,1,20,20,20]
certRow f109 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,2,0,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,20,20,1,1,1,1,1,20,20,20,20]
end Blc.SelfintSingleObject.Compact45
