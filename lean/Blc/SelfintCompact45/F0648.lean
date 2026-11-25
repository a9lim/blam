import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f4573 on (Grammar43.fourRow ⟨1,3,1,4,4,4⟩ [0,1,0] [4,0,0,0]) using bank tags []
certRow f4609 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [0,0,0,3]) using bank tags []
certRow f4610 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [0,0,1,2]) using bank tags [6,6,6,6,6]
certRow f4611 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [0,0,2,1]) using bank tags [6,6,6,6,6]
certRow f4612 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [0,0,3,0]) using bank tags []
certRow f4613 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [0,1,0,2]) using bank tags [6,6,6,6,6,6,6,6,6]
certRow f4614 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [0,1,1,1]) using bank tags []
certRow f4615 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [0,1,2,0]) using bank tags [6,6,6,6,6]
certRow f4616 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [0,2,0,1]) using bank tags [6,6,6,6,6,6,6,6,6]
certRow f4617 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [0,2,1,0]) using bank tags [6,6,6,6,6]
certRow f4618 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [0,3,0,0]) using bank tags []
certRow f4619 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [1,0,0,2]) using bank tags [6,6,6,6,6]
certRow f4620 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [1,0,1,1]) using bank tags []
certRow f4621 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [1,0,2,0]) using bank tags [6,6,6,6,6]
certRow f4622 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [1,1,0,1]) using bank tags []
certRow f4623 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [1,1,1,0]) using bank tags []
certRow f4624 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [1,2,0,0]) using bank tags [6,6,6]
certRow f4625 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [2,0,0,1]) using bank tags [6,6,6,6,6]
certRow f4626 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [2,0,1,0]) using bank tags [6,6,6,6,6]
certRow f4627 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [2,1,0,0]) using bank tags [6,6,6]
certRow f4628 on (Grammar43.fourRow ⟨1,3,2,4,4,3⟩ [0,1,1] [3,0,0,0]) using bank tags []
sliceRow f4773 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,0,1,5]) byParts (fun j => Split43.four 12 j ⟨1,2,1,5,4,6⟩ [0,1] [0,0,1,5]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,0,1,5]) slices 12 withHints bank tags [2,3] except []
tagSlices f4774 on (Grammar43.fourRow ⟨1,2,1,5,4,6⟩ [0,1] [0,0,2,4]) byParts (fun j => Split43.four 8 j ⟨1,2,1,5,4,6⟩ [0,1] [0,0,2,4]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,5,4,6⟩ [0,1] [0,0,2,4]) withHints bank eachTags[[2,2,2,2,2,2],[6,6,6,2,2,2],[2,2],[6,6,6,2,3,3,3,3],[6,2],[6,2,6,6,2,2],[],[]] except []
end Blc.SelfintSingleObject.Compact45
