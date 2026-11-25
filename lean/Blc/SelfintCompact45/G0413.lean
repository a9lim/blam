import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g20322 on (row false false k199 7 5 2 4 [1,2,0,2]) byParts (fun j => piece 12 j false false k199 7 5 2 4 [1,2,0,2]) byCover (pieces_cover 12 (by decide) false false k199 7 5 2 4 [1,2,0,2]) withHints bank eachTags[[],[44,33,44,44,44,44,44,44,44,44,44,44,12,44,33,44,2,44,61,44,33,44,44,44,44,44,44,44,44,44,44,12,44,33,44,2,44,61],[44,33,44,44,44,44,44,44,44,44,44,44,12,44,33,44,2,44,61],[44,33,44,44,44,44,44,44,44,44,44,44,12,44,33,44,2,44,61,44,33,44,44,44,44,44,44,44,44,44,44,12,44,33,44,2,44,61],[],[],[],[],[],[],[],[]] except []
certRow g20323 on (row false true k235 7 5 2 4 [1,2,0,2]) using bank tags [44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1]
certRow g20324 on (row false false k199 7 5 2 4 [1,2,1,1]) using bank tags []
certRow g20325 on (row false true k235 7 5 2 4 [1,2,1,1]) using bank tags []
certRow g20326 on (row false false k199 7 5 2 4 [1,2,2,0]) using bank tags [44,33,44,44,44,44,44,44,44,44,44,44,12,44,33,44,2,44,61,44,33,44,44,44,44,44,44,44,44,44,44,12,44,33,44,2,44,61,44,33,44,44,44,44,44,44,44,44,44,44,12,44,33,44,2,44,61]
certRow g20327 on (row false true k235 7 5 2 4 [1,2,2,0]) using bank tags [44,22,1,1,1,44,22,1,1,1,44,22,1,1,1]
certRow g20328 on (row false false k199 7 5 2 4 [1,3,0,1]) using bank tags []
certRow g20329 on (row false true k235 7 5 2 4 [1,3,0,1]) using bank tags []
certRow g20330 on (row false false k199 7 5 2 4 [1,3,1,0]) using bank tags []
certRow g20331 on (row false true k235 7 5 2 4 [1,3,1,0]) using bank tags []
certRow g20332 on (row false false k199 7 5 2 4 [1,4,0,0]) using bank tags []
certRow g20333 on (row false true k235 7 5 2 4 [1,4,0,0]) using bank tags []
certRow g20334 on (row false false k199 7 5 2 4 [2,0,0,3]) using bank tags []
certRow g20335 on (row false true k235 7 5 2 4 [2,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
