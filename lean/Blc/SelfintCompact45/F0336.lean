import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f1331 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,2,1,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3,33,33,33,33,25]
certRow f1332 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [0,3,0,0]) using bank tags []
certRow f1333 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [1,0,0,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3,33,33,33,33,33]
certRow f1334 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [1,0,1,1]) using bank tags []
certRow f1335 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [1,0,2,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3,33,33,33,33,33]
certRow f1336 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [1,1,0,1]) using bank tags []
certRow f1337 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [1,1,1,0]) using bank tags []
certRow f1338 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [1,2,0,0]) using bank tags [6,6,6,6,6,6,3,3,3,3,3,3,33,33,33]
certRow f1339 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [2,0,0,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3,33,33,33,33,33]
certRow f1340 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [2,0,1,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,3,3,3,3,3,3,3,3,3,3,33,33,33,33,33]
certRow f1341 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [2,1,0,0]) using bank tags [6,6,6,6,6,6,3,3,3,3,3,3,33,33,33]
certRow f1342 on (Grammar43.fourRow ⟨0,4,0,4,4,3⟩ [0,0,0,0] [3,0,0,0]) using bank tags []
sliceRow f1343 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [0,0,4,5]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [0,0,4,5]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [0,0,4,5]) slices 12 withHints bank tags [2,1] except []
sliceRow f1344 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [0,0,5,4]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [0,0,5,4]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [0,0,5,4]) slices 12 withHints bank tags [2,1] except []
sliceRow f1345 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [0,1,3,5]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [0,1,3,5]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [0,1,3,5]) slices 12 withHints bank tags [2,1,11,10,18] except []
sliceRow f1346 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [0,1,4,4]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [0,1,4,4]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [0,1,4,4]) slices 12 withHints bank tags [2,6,1] except []
sliceRow f1347 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [0,1,5,3]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [0,1,5,3]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [0,1,5,3]) slices 12 withHints bank tags [2,1,10,18] except []
sliceRow f1348 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [0,2,2,5]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,4,9⟩ [0,0] [0,2,2,5]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [0,2,2,5]) slices 12 withHints bank tags [2,18,20,10] except []
tagSlices f1349 on (Grammar43.fourRow ⟨0,2,0,5,4,9⟩ [0,0] [0,2,3,4]) byParts (fun j => Split43.four 8 j ⟨0,2,0,5,4,9⟩ [0,0] [0,2,3,4]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,9⟩ [0,0] [0,2,3,4]) withHints bank eachTags[[2,2,1,2],[6,6,6,1],[2,2],[6,18],[6,2,2,2,12],[11,2,11,6,2],[],[6,6,2,2]] except []
end Blc.SelfintSingleObject.Compact45
