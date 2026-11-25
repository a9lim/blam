import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f32 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,0,1,2,1,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,0,1,2,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,0,1,2,1,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,1,1],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[20,20,20,20,20,20,20,20]] except []
tagSlices f33 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,0,1,2,2,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,0,1,2,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,0,1,2,2,1]) withHints bank eachTags[[20,20,20],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,1,1],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[20,20,20,20,20,20,20,20,20]] except []
tagSlices f34 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,0,2,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,0,2,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,0,2,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[20,20,1,1],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[]] except []
tagSlices f35 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,1,1,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,1,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,1,1,2]) withHints bank eachTags[[],[1,1,1,1,11,1,1,1,1,1,11,1,1,1],[1,1,1,1,11],[1,1,1,1],[1,1,1,1,1],[1,11,1,1,1,1,11,1,1,1,1,1,1,1],[],[8,8,20,8,20,20,8,20,8]] except []
end Blc.SelfintSingleObject.Compact45
