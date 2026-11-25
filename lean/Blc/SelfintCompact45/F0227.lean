import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f681 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [3,1,0,1,0,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,3,6,5⟩ [0,0] [3,1,0,1,0,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [3,1,0,1,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[]] except []
tagSlices f682 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [3,1,1,0,0,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,3,6,5⟩ [0,0] [3,1,1,0,0,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [3,1,1,0,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[],[2,2,2],[2,2,2,2,2,2,2,2,2,2],[],[]] except []
tagSlices f683 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [3,2,0,0,0,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,3,6,5⟩ [0,0] [3,2,0,0,0,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [3,2,0,0,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2],[2,2,2],[2,2,2,2,2,2,2,2,2],[],[]] except []
certRow f684 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [0,3,3,3]) using bank tags []
certRow f685 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [1,2,3,3]) using bank tags [1,1,1,1,1,1]
certRow f686 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [1,3,2,3]) using bank tags [1,1,1,1,1,1]
certRow f687 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [1,3,3,2]) using bank tags [1,1,1,1,1,1]
certRow f688 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [2,1,3,3]) using bank tags [1,1,1,1,1,1,1,1,1,20]
certRow f689 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [2,2,2,3]) using bank tags []
certRow f690 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [2,2,3,2]) using bank tags []
certRow f691 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [2,3,1,3]) using bank tags [1,1,1,1,1,1,30,1,59,20]
certRow f692 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [2,3,2,2]) using bank tags []
certRow f693 on (Grammar43.fourRow ⟨0,3,0,3,4,9⟩ [0,0,0] [2,3,3,1]) using bank tags [1,1,1,1,1,48]
end Blc.SelfintSingleObject.Compact45
