import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f46 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,1,1,2,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,1,1,2,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,1,1,2,0,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,8,8,8,8,8],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[1,1,1,1,1,20,20,20,20,1,1,1,1,1,28,28,28,28,28]] except []
certRow f47 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,1,1,2,1,1]) using bank tags []
tagSlices f48 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,1,1,2,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,1,1,2,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,1,1,2,2,0]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,8,8,8],[1,1,1,1,1],[],[],[1,1,1,1,1,20,20,20,20,28,28,28]] except []
tagSlices f49 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,1,2,0,1,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,1,2,0,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,1,2,0,1,2]) withHints bank eachTags[[],[1,1,1,1,11,1,1,1,1,1,11,1,1,1],[1,1,1,1,11],[1,1,1,1,8,8,8,8,8],[1,1,1,1,1],[1,11,1,1,1,1,11,1,1,1,1,1,1,1],[],[1,1,1,1,1,20,1,1,1,1,1,1,28,28,8,28,8]] except []
tagSlices f50 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,1,2,0,2,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,1,2,0,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,1,2,0,2,1]) withHints bank eachTags[[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,8,8,8,8,8],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[1,1,1,1,1,20,20,20,20,1,1,1,1,1,28,8,8,8,8]] except []
end Blc.SelfintSingleObject.Compact45
