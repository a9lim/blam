import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
sliceRow f7641 on (Grammar43.fourRow ⟨2,2,2,5,4,3⟩ [0,2] [1,2,0,0]) byParts (fun j => Split43.four 12 j ⟨2,2,2,5,4,3⟩ [0,2] [1,2,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨2,2,2,5,4,3⟩ [0,2] [1,2,0,0]) slices 12 withHints bank tags [6] except []
sliceRow f7642 on (Grammar43.fourRow ⟨2,2,2,5,4,3⟩ [0,2] [2,0,0,1]) byParts (fun j => Split43.four 12 j ⟨2,2,2,5,4,3⟩ [0,2] [2,0,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨2,2,2,5,4,3⟩ [0,2] [2,0,0,1]) slices 12 withHints bank tags [6] except []
sliceRow f7643 on (Grammar43.fourRow ⟨2,2,2,5,4,3⟩ [0,2] [2,0,1,0]) byParts (fun j => Split43.four 12 j ⟨2,2,2,5,4,3⟩ [0,2] [2,0,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨2,2,2,5,4,3⟩ [0,2] [2,0,1,0]) slices 12 withHints bank tags [6] except []
sliceRow f7644 on (Grammar43.fourRow ⟨2,2,2,5,4,3⟩ [0,2] [2,1,0,0]) byParts (fun j => Split43.four 12 j ⟨2,2,2,5,4,3⟩ [0,2] [2,1,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨2,2,2,5,4,3⟩ [0,2] [2,1,0,0]) slices 12 withHints bank tags [6] except []
tagSlices f7645 on (Grammar43.fourRow ⟨2,2,2,5,4,3⟩ [0,2] [3,0,0,0]) byParts (fun j => Split43.four 12 j ⟨2,2,2,5,4,3⟩ [0,2] [3,0,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨2,2,2,5,4,3⟩ [0,2] [3,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
certRow f7720 on (Grammar43.fourRow ⟨3,2,3,2,4,6⟩ [0,3] [0,2,2,2]) using bank tags []
certRow f7721 on (Grammar43.fourRow ⟨3,2,3,2,4,6⟩ [0,3] [1,1,2,2]) using bank tags []
certRow f7722 on (Grammar43.fourRow ⟨3,2,3,2,4,6⟩ [0,3] [1,2,1,2]) using bank tags []
certRow f7723 on (Grammar43.fourRow ⟨3,2,3,2,4,6⟩ [0,3] [1,2,2,1]) using bank tags []
certRow f7724 on (Grammar43.fourRow ⟨3,2,3,2,4,6⟩ [0,3] [2,0,2,2]) using bank tags []
certRow f7725 on (Grammar43.fourRow ⟨3,2,3,2,4,6⟩ [0,3] [2,1,1,2]) using bank tags []
certRow f7726 on (Grammar43.fourRow ⟨3,2,3,2,4,6⟩ [0,3] [2,1,2,1]) using bank tags []
certRow f7727 on (Grammar43.fourRow ⟨3,2,3,2,4,6⟩ [0,3] [2,2,0,2]) using bank tags []
certRow f7728 on (Grammar43.fourRow ⟨3,2,3,2,4,6⟩ [0,3] [2,2,1,1]) using bank tags []
certRow f7729 on (Grammar43.fourRow ⟨3,2,3,2,4,6⟩ [0,3] [2,2,2,0]) using bank tags []
certRow f8510 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [0,0,1,3]) using bank tags [2,2,2,2,2,2,2,2,3,3]
certRow f8511 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [0,0,2,2]) using bank tags [2,2,2,2,2,2,2,2,3,3]
certRow f8512 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [0,0,3,1]) using bank tags [2,2,2,2,2,2,2,2,3,3]
certRow f8513 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [0,1,0,3]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3]
certRow f8514 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [0,1,1,2]) using bank tags [6,6,6,2,2,2,2,2,3]
certRow f8515 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [0,1,2,1]) using bank tags [6,6,6,2,2,2,2,2,3]
certRow f8516 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [0,1,3,0]) using bank tags [2,2,2,2,2,3]
certRow f8517 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [0,2,0,2]) using bank tags [2,2,2,2,2,2,2,2,2,3,3]
certRow f8518 on (Grammar43.fourRow ⟨3,2,3,3,4,4⟩ [0,3] [0,2,1,1]) using bank tags [6,6,6,2,2,2,2,2,2,2,2,3,3]
end Blc.SelfintSingleObject.Compact45
