import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1081 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,2,0,3,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,2,0,3,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,2,0,3,0]) withHints bank eachTags[[],[6,6,6,6,6],[6,6,36,39,18],[6,6],[6,6,6,6,6],[8,18,1,8,10,23,8,20],[6,6,6,6,6,10],[]] except []
tagSlices f1082 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,2,1,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,2,1,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,2,1,0,2]) withHints bank eachTags[[6,6],[6,6,6,6,6,6,6,6,6,6,2,18,8,2],[6,6,6,6,6,36,36,39,47,40,18,18,21,18],[6,6,6,6,6,6,6,18,1,8],[6,6,6,6,6,52,2,2,23,8,2],[6,6,8,8,18,36,36],[6,6,2,2],[6,6,10,10]] except []
tagSlices f1083 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,2,1,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,2,1,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,2,1,1,1]) withHints bank eachTags[[6,6,6],[2,2,18,8,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,36,47,40,18,18,18,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[2,2,18,1,27,8,2,23,8],[6,6,6,6,8,52,2,2,2,2,23,8,2,2,2],[2,2,2,2],[6,6,2,2]] except []
tagSlices f1084 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [2,2,1,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [2,2,1,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [2,2,1,2,0]) withHints bank eachTags[[6,6],[6,6,6,6,6],[6,6,6,6,6,6,6,36,39,18,18,30,18],[6,6,6,6,6,6],[],[6,8,2,2,18,1,27,8,2,10,2,23,8,20,18],[6,6,2],[10,10]] except []
end Blc.SelfintSingleObject.Compact45
