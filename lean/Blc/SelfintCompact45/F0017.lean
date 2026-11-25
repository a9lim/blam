import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f83 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,2,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,2,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,0,1,2,2,0]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,28,0],[1,1,28,20,20],[1,1,1,1,1,21,21,20,28,20,20,20,20,20],[],[]] except [Floor45.e9689630087098]
tagSlices f84 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,0,2,0,1,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,0,2,0,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,0,2,0,1,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,19,19,1],[1,1,20,20],[1,1,20,20,21],[1,1,1,1,1,28,28,28,20,28,28,20,20,28],[],[]] except []
tagSlices f85 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,0,2,0,2,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,0,2,0,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,0,2,0,2,1]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,19,1,19],[1,1,20,21],[1,1,20,21,21],[1,1,1,1,1,20,40,20,21,28,21,28,28,28],[],[]] except []
tagSlices f86 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,0,2,1,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,0,2,1,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,0,2,1,0,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,19,19,1],[1,1,20,20],[1,1,21,28,20],[1,1,1,1,1,21,21,28,20,20,20,21,28,20],[],[]] except []
end Blc.SelfintSingleObject.Compact45
