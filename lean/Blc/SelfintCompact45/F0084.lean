import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f280 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [2,0,0,1,0,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,2,6,3⟩ [0,0,0] [2,0,0,1,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,2,6,3⟩ [0,0,0] [2,0,0,1,0,0]) withHints bank eachTags[[],[9,9,9,9,9,9,9,9,9,9,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10,10,10,10],[9,9,9,9,9,36,36,36,36,36],[9,9,9,9,36,36,20,20],[9,9,9,9,9,10,10,36,36,20],[9,9,9,9,9,9,9,9,9,9,9,9,9,9,10,10,10,10,10,36,36,36,20,10,10,36,36,20],[],[],[],[],[],[]] except []
tagSlices f281 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [2,0,1,0,0,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,2,6,3⟩ [0,0,0] [2,0,1,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,2,6,3⟩ [0,0,0] [2,0,1,0,0,0]) withHints bank eachTags[[],[9,9,9,9,9,9,9,9,9,9,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10,10,10,10],[9,9,9,9,9,36,36,36,36,36],[9,9,9,9,10,10,36,36],[9,9,9,9,9,10,10,36,10,36],[9,9,9,9,9,9,9,9,9,9,9,9,9,9,10,10,10,10,10,36,36,10,36,10,10,36,10,36],[],[],[],[],[],[]] except []
tagSlices f282 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [2,1,0,0,0,0]) byParts (fun j => Split43.four 8 j ⟨0,3,0,2,6,3⟩ [0,0,0] [2,1,0,0,0,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,3,0,2,6,3⟩ [0,0,0] [2,1,0,0,0,0]) withHints bank eachTags[[],[9,9,9,9,9,9,9,9,9,9,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10,10,10,10],[],[9,9,10,10],[9,9,9,10,10,10],[9,9,9,9,9,9,9,9,9,10,10,10,10,10,10,10,10,10],[],[]] except []
certRow f283 on (Grammar43.fourRow ⟨0,4,0,2,4,7⟩ [0,0,0,0] [1,2,2,2]) using bank tags []
certRow f284 on (Grammar43.fourRow ⟨0,4,0,2,4,7⟩ [0,0,0,0] [2,1,2,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
