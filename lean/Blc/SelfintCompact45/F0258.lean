import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f912 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,4,1,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,4,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,4,1,2]) withHints bank eachTags[[],[20,8,8],[2,2,2,2,21,21,20,20],[2,2,2],[2,2,2,2],[2,2,21,20,20],[],[2,1,1,10,10,21,10,10,1,1,20,20]] except []
tagSlices f913 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,4,2,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,4,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,4,2,1]) withHints bank eachTags[[],[8],[2,2,2,21,2,21,21,21],[2,2],[2,2,2,1],[2,2,28,2,28,20],[],[1,2,1,10,10,10,1,1,1,28]] except []
sliceRow f914 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,4,3,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,4,3,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,4,3,0]) slices 12 withHints bank tags [2,1,40,21,83,8,20] except []
tagSlices f915 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,0,2,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,0,2,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,0,2,4]) withHints bank eachTags[[2,2,11,2,2,11],[],[2,2,11,1,2,2,11,1,1],[2,2,1,1,1,1,1],[2,2,2],[2,2,2,11,1],[],[2,2,2,2,2,11,1,2,2,11,1,1,11,1,10,10,10,8,20,20,20,20,20,20,20,20,20,21,28]] except []
tagSlices f916 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,1,0,3,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,1,0,3,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,1,0,3,3]) withHints bank eachTags[[2,2],[6,6,6,6,6],[6,6,2,1,2,1,1],[6,6,6,6],[6,6,6,6,6,6,6,1,1,1,1,1],[6,2,1],[6,6,6,6,6],[6,6,20,20,6,6,6,6,6,6,6,2,2,2,1,2,1,1,11,11,1,1,8,20,20,20,20,20,20,28,28]] except []
end Blc.SelfintSingleObject.Compact45
