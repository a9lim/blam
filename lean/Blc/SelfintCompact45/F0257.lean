import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f908 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,2,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,2,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,2,2]) withHints bank eachTags[[6,6,6,2,6,2,21,2,28,21],[6,6,6,2,21,20,2,28,20,20,21],[2,2,2,20,20,2,20,2,28,20],[6,6,2,6,6,6,6,6,2,2,2,11,1,2,1,2,1,1,2,2],[6,6,6,6,6],[2,2],[1],[2,2],[],[20,2,28,2,21,8,8],[6,6,20,21],[2,2,10,1,19,1,1,1,1,1,1,1,1,191,20,191,191]] except []
tagSlices f909 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,3,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,3,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,3,1]) withHints bank eachTags[[],[6,6,6,8],[6,6,2,20],[6,6,2,2,6],[6,6,6,6,6,6,1,1],[2,2,21,2,21,20],[6,6,6],[2,2,6,6,6,2,2,6,2,1,2,2,19,20,1,1,27,49]] except []
sliceRow f910 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,4,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,4,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,3,4,0]) slices 12 withHints bank tags [2,1,20,58,8] except []
tagSlices f911 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,4,0,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,4,0,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,4,0,3]) withHints bank eachTags[[],[2,2,2,2,2,8,8],[2,2],[2,2],[2,2,2,2,2],[],[],[2,2,2,2,2,2,2,2,2,1,1,1,1,1,20,20,191,39]] except []
end Blc.SelfintSingleObject.Compact45
