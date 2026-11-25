import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f12 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,1,2,2,1,1]) using bank tags [39,37,1,1,1,1,11,1,11,1,1,1,1,1,1,1,1,1,1,39,1,1,1,1,1,1,1,1]
tagSlices f13 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,1,2,2,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,1,2,2,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,1,2,2,2,0]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,28,8,8,8,8,8,8,8,8],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1],[],[1,1,1,1,1,1,1,1,1]] except []
tagSlices f14 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,2,0,1,2,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,2,0,1,2,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,2,0,1,2,2]) withHints bank eachTags[[],[20,20,20,20,20,20,20,20,21,20,20,28,28,28],[20,20,20,20,20],[50,21,20,20,28,28,28,28,28,1,1,28,1,28,28,1,28,1],[20,21,20,28,28],[20,20,21,20,28,20,20,21,21,20,21,20,21,21],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1]] except []
tagSlices f15 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,2,0,2,1,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,2,0,2,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,2,0,2,1,2]) withHints bank eachTags[[],[20,21,20,20,20,20,19,21,20,21,21,28,28,20],[20,21,20,20,20],[50,21,21,21,28,28,28,28,28,1,1,1,1,28,28,1,1,1],[28,21,21,28,21],[20,20,21,28,20,20,20,28,21,28,21,28,28,21],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1]] except []
tagSlices f16 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,2,0,2,2,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,2,0,2,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,2,0,2,2,1]) withHints bank eachTags[[],[21,21,28,28,28,20,20,28,20,28,21,20,20,28],[21,28,21,28,21],[28,28,21,21,28,28,28,28,28,1,1,1,1,28,28,1,1,1],[28,21,21,28,28],[28,28,21,28,28,28,28,50,21,28,21,28,28,21],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1]] except []
end Blc.SelfintSingleObject.Compact45
