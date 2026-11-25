import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f894 on (Grammar43.fourRow ⟨0,2,0,4,4,11⟩ [0,0] [4,4,1,2]) using bank tags [10,10,8,36,8]
certRow f895 on (Grammar43.fourRow ⟨0,2,0,4,4,11⟩ [0,0] [4,4,2,1]) using bank tags [10,10,8]
certRow f896 on (Grammar43.fourRow ⟨0,2,0,4,4,11⟩ [0,0] [4,4,3,0]) using bank tags [10,10,8]
sliceRow f897 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,0,3,4]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,0,3,4]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,0,3,4]) slices 12 withHints bank tags [2,1,20,21,8] except []
sliceRow f898 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,0,4,3]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,0,4,3]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,0,4,3]) slices 12 withHints bank tags [2,1,20,8] except []
tagSlices f899 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,1,2,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,1,2,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,1,2,4]) withHints bank eachTags[[2,2,11,2,2,11],[8,8,8],[2,2,2,2,2,11,1,1],[2,2,1,1,20,1,21],[2,2,2],[2,2,2],[],[2,2,2,2,2,2,11,1,1,2,2,2,2,10,10,10,1,19,1,1,1,1,1,8,8,20,21,20]] except []
tagSlices f900 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,1,3,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,1,3,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,1,3,3]) withHints bank eachTags[[2,2],[6,6,6,8,8],[2,2,2,2,2,1,1],[6,6,6,2],[6,6,6,6,6,6,1,1,20,1,20],[2,2],[6,6,6],[6,6,20,6,6,6,6,2,2,2,2,1,1,2,2,2,2,21,1,1,1,1,1,8,21,21,21]] except []
tagSlices f901 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,0,1,4,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,0,1,4,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,0,1,4,2]) withHints bank eachTags[[2,2],[20,8,8,8],[2,2,2,2,2,2,1,1],[2,2,2],[2,2,2],[2,2,2,1,1,20,1,20],[],[2,2,2,2,2,2,1,1,2,2,2,2,10,10,20,10,1,19,1,1,1,21,8,20,21,212]] except []
end Blc.SelfintSingleObject.Compact45
