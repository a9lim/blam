import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1085 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,2,2,0,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,2,2,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,2,2,0,1]) withHints bank eachTags[[6,6,6,6],[6,6,6,6,6],[6,6,6,6,6,6,6,6,47,47,18,18,2,2,18,8,2,10],[6,6,6,6],[6,6,6,6,6,27,10],[52,10,2,2,23,8,2,10],[6,6,10,10],[10,10]] except []
tagSlices f1086 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,2,2,1,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,2,2,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,2,2,1,0]) withHints bank eachTags[[6,6,6,6],[6,6,6,6,6],[6,6,6,6,6,6,47,18,18,2,2,18,8,2,10],[6,6,6,6,6],[],[2,27,27,2,10,10,2,2,23,8,10],[6,6,10],[10,10]] except []
sliceRow f1087 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,2,3,0,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [2,2,3,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,2,3,0,0]) slices 12 withHints bank tags [6,2,47,18,27] except []
tagSlices f1088 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,3,0,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,3,0,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,3,0,0,2]) withHints bank eachTags[[],[6,6,6,6,6,18],[6,6,23],[6,6],[6,6,6,6,6,1,8,8,8,8,18,18],[47,36],[6,6,6,6,6,36,36],[10,10]] except []
tagSlices f1089 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,3,0,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,3,0,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,3,0,1,1]) withHints bank eachTags[[6],[18],[6,6,2],[2,2],[1,1,1,8,1,8,1,8,18,18],[18,2,18,2],[6,6,6,6,6,6,6,36,36,36],[2,59,8,2,2]] except []
end Blc.SelfintSingleObject.Compact45
