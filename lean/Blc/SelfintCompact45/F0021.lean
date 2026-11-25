import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f99 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,1,1,1,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,1,1,1,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,1,1,1,0,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,10,10],[1,1,10,10,10],[1,1,1,1,1,10,10,10,10,10,10,10,10,10],[],[]] except []
certRow f100 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,1,1,1,1,1]) using bank tags []
certRow f101 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,1,1,1,2,0]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,10,10,1,1,10,10,10]
tagSlices f102 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,1,1,2,0,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,1,1,2,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,1,1,2,0,1]) withHints bank eachTags[[],[1,37,1,1,1,1,37,1,1,1,1,1,1,1],[1,30,1,1,1],[1,39,10,10],[1,1,20,20,10],[1,1,1,1,1,20,20,20,10,20,20,20,20,10],[],[]] except []
certRow f103 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,1,1,2,1,0]) using bank tags [1,37,1,1,1,1,37,1,1,1,1,1,1,1,1,30,1,1,1,1,39,10,10,1,1,20,20,10]
tagSlices f104 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,0,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,0,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [2,1,2,0,0,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,19,19,1],[1,1,20,20],[1,1,20,20,20],[1,1,1,1,1,20,20,20,20,20,20,20,20,20],[],[]] except []
end Blc.SelfintSingleObject.Compact45
