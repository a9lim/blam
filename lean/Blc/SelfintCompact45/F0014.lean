import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f70 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,0,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,0,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,0,1,1]) withHints bank eachTags[[28,8,8,8,8],[1,1,37,37,37,1,1,1,1,1,19,1,1,1],[1,1,11,11,11],[1,1,1,1],[1,1,1,1,1],[1,37,1,1,1,1,11,1,1,1,1,1,1,1],[],[0,28,8,28,8,8,8,8,8,28,8,8,8,8]] except [Floor45.e9690393732726]
tagSlices f71 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,0,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,0,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,0,2,0]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,20],[20,20,1,1],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[]] except []
tagSlices f72 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,1,0,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,1,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,1,0,1]) withHints bank eachTags[[28,28,8],[1,1,37,37,37,1,1,1,1,1,19,1,1,1],[1,1,11,11,11],[1,1,1,1],[1,1,1,1,1],[1,37,1,1,1,1,11,1,1,1,1,1,1,1],[],[28,28,28,28,28,8,8,28,8,28,28,8,28,8]] except []
certRow f73 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,1,1,0]) using bank tags [1,1,37,37,37,1,1,1,1,1,19,1,1,1,1,1,11,11,11,1,1,1,1,1,1,1,1,1,28,28,28,28,28,8,8,28,8]
certRow f74 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,2,0,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,20,1,1,1,1,1,1,1,1,1,1,1,1,1]
end Blc.SelfintSingleObject.Compact45
