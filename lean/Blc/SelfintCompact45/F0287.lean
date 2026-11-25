import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1016 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,2,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,2,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,2,2]) withHints bank eachTags[[6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2],[6,6,6,6,6,1,37,1,2,1,1,1,2,1,21,28],[6,6,2,2,37,1,2,1,2,2,11,26,11,2,2,11,43],[6,6,6,6,6,6,6,6,6,6,6,6,1,48,8,58,8],[6,6,6,6,6],[6,6,6,6,2,11,20,2,20],[6,6,2,2,2,20,8],[6,6,6,6,20,20],[6,2,2,37,2,11],[6,6,6,6,6,2],[6,6,6,6,6,6,6,1],[1,11,1,1,1]] except []
tagSlices f1017 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,3,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,3,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,3,1]) withHints bank eachTags[[2],[6,6,2,20,21],[6,6,6,2,6,6,2,1,2,26,11,2,2,36,36],[6,6,6,6,6,6,6],[6,2,2,6,2,2,2,6,6,1,11,1,1,1,20,8],[6,6,20,2,2,2,2,2,2,2,2],[2,2,2,2],[6,6,10,10,10,10,10,48,58,8]] except []
tagSlices f1018 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,4,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,4,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,2,0,4,0]) withHints bank eachTags[[],[],[1,1,11],[],[2,2,2,36,36],[20,1,11,1,1,1],[2,2,2,2,2],[1,1,18,1,18,10,10,10]] except []
end Blc.SelfintSingleObject.Compact45
