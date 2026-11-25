import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f36 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,1,2,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,1,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,1,2,1]) withHints bank eachTags[[8,20,8],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,1,1],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[8,8,8,28,20,8,20,8]] except []
tagSlices f37 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,2,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,2,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,2,0,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,1,1],[20,20,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[]] except []
tagSlices f38 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,2,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,2,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,2,1,1]) withHints bank eachTags[[8,8,8],[1,37,1,1,1,1,11,1,1,1,1,1,1,1],[1,37,1,1,1],[1,11,1,11],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[8,8,8,8,28,8,8,8,8]] except []
tagSlices f39 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,2,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,2,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,0,2,2,2,0]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,1,1],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[]] except []
end Blc.SelfintSingleObject.Compact45
