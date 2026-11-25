import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1076 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,1,3,1,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,1,3,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,1,3,1,0]) withHints bank eachTags[[6,6,6],[40],[6,6,6,2,1,2,2,2,2,10],[6,6,6],[40,1,33],[2,1,2,10],[6,6,6],[]] except []
sliceRow f1077 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,1,4,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,1,4,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,1,4,0,0]) slices 12 withHints bank tags [1,2,52,23] except []
tagSlices f1078 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,2,0,0,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,2,0,0,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,2,0,0,3]) withHints bank eachTags[[18,8],[6,6,6,6,6,20],[6,6,36,36,39,39,18],[6,6,18,1,8,23,8],[6,6,6,6,6,40,36],[8,8],[6,6,6,6,6,10,10],[]] except []
tagSlices f1079 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,2,0,1,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,2,0,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,2,0,1,2]) withHints bank eachTags[[6,18,8],[6,6,6,6,6,6,6,6,6,6,2,2],[6,6,6,6,36,36,36,39,39,18,39,18,18],[6,6,6,6,6,6,6,6,6,18,1,8,23,8],[6,6,6,6,6,18,1,8,2,23,8,2],[6,6,6,8,8,8,20,18,36,36],[6,6,2,2,2,10],[6,6,6,6,10,10]] except []
tagSlices f1080 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,2,0,2,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,2,0,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,2,0,2,1]) withHints bank eachTags[[6],[6,6,6,6,6,2,39],[6,6,6,6,6,6,6,6,6,36,36,39,18,39,18,18],[6,6,6,6,6,6,6],[6,6,6,6,6,18,1,8,10,23,8,20],[6,6,8,8,18,1,8,2,10,23,8,2,18],[6,6,2,10,10,2],[6,6,10,10]] except []
end Blc.SelfintSingleObject.Compact45
