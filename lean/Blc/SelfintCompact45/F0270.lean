import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f952 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,0,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,0,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,0,4]) withHints bank eachTags[[],[2,2,2,2,2],[2,2],[2,2],[2,2,2,2,2],[],[],[2,2,2,2,2,1,1,18,18,23]] except []
tagSlices f953 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,1,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,1,3]) withHints bank eachTags[[],[6,6,6,6,6,20],[6,6],[6,6,2,2],[6,6,6,6,6,20,20,20],[2],[6,6,6,6,6,20,20],[2,2,20,21,6,6,6,6,6,2,2,20,107]] except []
tagSlices f954 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,2,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,2,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,2,2]) withHints bank eachTags[[],[6,6,6,6,6,20,21,2,0],[6,6,20,1,1],[6,6,2,2],[6,6,6,6,6,6,6,6,6,6,2,2,20,28],[2,28,20,20,20],[2,20,20,20],[2,2,20,20,6,6,6,6,6,10,10]] except [Floor45.e9689627076494]
tagSlices f955 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,3,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,3,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,0,3,1]) withHints bank eachTags[[],[6,6,6,6,6],[6,6],[6,6,2,2],[6,6,6,6,6,20,1,37],[2,20,28],[6,6,6,6,6,20],[2,2,6,6,6,6,6,2,2,20,21]] except []
end Blc.SelfintSingleObject.Compact45
