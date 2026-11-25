import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1006 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,1,2,1,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,1,2,1,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,1,2,1,2]) withHints bank eachTags[[6,6,6,6,6,6,6,2,2,2,2,2,2,2],[2,2,2,2,11,2,2,2,1,2,2,2,2,36],[2,2,2,2,2,2,2,2,2,2,2,2,2],[6,6,6,6,6,6,1,1,40,40,1,1,19,1,1,1,28,170],[],[6,6,2,2,2,2],[6,6,6,2,2,2,11,1],[6,6],[6,6,2,2],[2,2],[6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2],[8,8]] except []
tagSlices f1007 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,1,2,2,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,1,2,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,1,2,2,1]) withHints bank eachTags[[6,6],[2,2,2,2,11,36],[6,6,6,6,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[6,6,6,6,6,6,6],[6,6,6,6,6,6,1,2,1,1,1],[6,6,6,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[6,6,2,37,1,2],[6,6,6,6,56,40,19,20,19,1,1,170,8]] except []
tagSlices f1008 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,1,2,3,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,1,2,3,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,1,2,3,0]) withHints bank eachTags[[2,2,2],[6,36],[6,6,6,2,6,2,2,2,2],[6,2,6,6,6,2],[6,6,6],[6,2,2,2,11,2,1],[6,37],[1,56]] except []
end Blc.SelfintSingleObject.Compact45
