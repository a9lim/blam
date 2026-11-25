import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f990 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,0,3,1,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,0,3,1,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,0,3,1,2]) withHints bank eachTags[[6,6,2,6,2,2,6,6,6,2,2,2,2,2],[1,2,1,1,2,2],[2,2,2,2,2,2,2,1,2],[6,6,2,2,2,2,2,6,2,2,6,6,19,10,1,1,1,1,10,10,8,48,18,23,8,18,20,19],[],[6,6,2,2,2,2,2],[6,6,21,116],[2,2,2,2],[6,6],[2,2,2,2,2,2,2,2,2],[6,6,6,6,6,2,2],[1]] except []
tagSlices f991 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,0,3,2,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,0,3,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,0,3,2,1]) withHints bank eachTags[[6,2,2,6,2,6,6,6,2,1,2,1,1],[2,2,2,2,2,2,2,2],[2,2,11,2,2,1,2,2,2],[6,6,2,2,2,6,6,2,2,6,19,10,1,10,10,1,1,8,48,23,48,18,23,20],[],[6,6,2,2,2],[6,36],[6,2,2],[6,6,21,21,20],[6,2,11,2,11],[6,2,2,6,6,2,2,2,6,6,2,2],[1]] except []
tagSlices f992 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,0,3,3,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [1,0,3,3,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,0,3,3,0]) withHints bank eachTags[[],[6,6,6,6,6],[6,6,6,6,2,1],[6,6,6],[6,6,6,6,6,2,2,2,36,36],[2,1,2,1,1],[],[10,10,10]] except []
sliceRow f993 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [1,0,4,0,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [1,0,4,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [1,0,4,0,2]) slices 12 withHints bank tags [1,2,20,10,43,52] except []
end Blc.SelfintSingleObject.Compact45
