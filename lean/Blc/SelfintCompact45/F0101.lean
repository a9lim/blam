import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f445 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,1,3,2,0]) using bank tags []
certRow f446 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,2,0,1,3]) using bank tags []
certRow f447 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,2,0,2,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow f448 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,2,0,3,1]) using bank tags []
certRow f449 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,2,1,0,3]) using bank tags []
certRow f450 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,2,1,1,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow f451 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,2,1,2,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow f452 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,2,1,3,0]) using bank tags []
certRow f453 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,2,2,0,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow f454 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,2,2,1,1]) using bank tags [2,2,2,2,2,2,2,2,2,2]
certRow f455 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,2,2,2,0]) using bank tags [2,2,2,2,2,2,2,2,2]
certRow f456 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,2,3,0,1]) using bank tags []
certRow f457 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,2,3,1,0]) using bank tags []
certRow f458 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,3,0,0,3]) using bank tags []
certRow f459 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,3,0,1,2]) using bank tags []
certRow f460 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,3,0,2,1]) using bank tags []
certRow f461 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,3,0,3,0]) using bank tags []
certRow f462 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,3,1,0,2]) using bank tags []
certRow f463 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,3,1,1,1]) using bank tags []
certRow f464 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,3,1,2,0]) using bank tags []
certRow f465 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,3,2,0,1]) using bank tags []
certRow f466 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,3,2,1,0]) using bank tags []
certRow f467 on (Grammar43.fourRow ⟨0,2,0,3,5,9⟩ [0,0] [3,3,3,0,0]) using bank tags []
tagSlices f468 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [0,0,0,0,2,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,3,6,5⟩ [0,0] [0,0,0,0,2,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [0,0,0,0,2,3]) withHints bank eachTags[[2,2],[2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,21,21,21,20,21,21,21,21,21,20,20,20,0,8,20,20,20,0,28,8,8,8,8,8,8,8,8],[2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[]] except [Floor45.e9692720934366,Floor45.e9692871929310]
end Blc.SelfintSingleObject.Compact45
