import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f17 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,2,1,0,2,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,2,1,0,2,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,2,1,0,2,2]) withHints bank eachTags[[],[20,20,20,20,20,20,20,20,21,20,20,20,28,20],[20,20,20,20,20],[20,20,20,20,28,28,28,28,28,8,8,28,8,28,28,8,28,8],[20,20,20,20,20],[20,20,20,20,20,20,20,20,20,20,20,20,20,20],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1]] except []
certRow f18 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,2,1,1,1,2]) using bank tags [20,20,20,20,20,20,20,20,20,20,11,20,20,20,20,20,11,11,11,20,20,20,20,20,11,20,20,20]
certRow f19 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,2,1,1,2,1]) using bank tags [20,20,20,20,20,20,20,20,20,20,11,20,20,20,20,20,20,20,11,20,20,20,20,20,11,20,20,20]
tagSlices f20 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,2,1,2,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,2,1,2,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,2,1,2,0,2]) withHints bank eachTags[[],[20,20,20,20,20,20,19,20,20,20,20,20,28,20],[20,20,20,20,20],[20,20,20,20,28,28,8,28,8,8,8,8,8,28,8,8,8,8],[20,20,20,20,20],[20,20,20,20,20,20,20,20,20,20,20,20,20,20],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1]] except []
certRow f21 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,2,1,2,1,1]) using bank tags [20,11,20,20,20,20,37,20,11,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20]
tagSlices f22 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,2,1,2,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,2,1,2,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,2,1,2,2,0]) withHints bank eachTags[[],[20,20,20,20,20,20,20,20,21],[20,20,20,20,20],[20,20,20,20,28,8,8,8,8,8,8,8,8],[20,20,20,20,20],[20,20,20,20,20,20,20,20,20],[],[1,1,1,1,1,1,1,1,1]] except []
end Blc.SelfintSingleObject.Compact45
