import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g20336 on (row false false k199 7 5 2 4 [2,0,1,2]) byParts (fun j => piece 12 j false false k199 7 5 2 4 [2,0,1,2]) byCover (pieces_cover 12 (by decide) false false k199 7 5 2 4 [2,0,1,2]) withHints bank eachTags[[],[44,37,44,44,44,44,44,44,44,44,44,44,9,44,37,44,2,44,61,44,1,44,44,44,44,44,44,44,44,44,44,9,44,1,44,2,44,61],[44,10,44,44,44,44,44,44,44,44,44,44,9,44,10,44,2,44,61],[44,10,44,44,44,44,44,44,44,44,44,44,9,44,10,44,2,44,61,44,10,44,44,44,44,44,44,44,44,44,44,9,44,10,44,2,44,61],[],[],[],[],[],[],[],[]] except []
certRow g20337 on (row false true k235 7 5 2 4 [2,0,1,2]) using bank tags [44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1]
tagSlices g20338 on (row false false k199 7 5 2 4 [2,0,2,1]) byParts (fun j => piece 12 j false false k199 7 5 2 4 [2,0,2,1]) byCover (pieces_cover 12 (by decide) false false k199 7 5 2 4 [2,0,2,1]) withHints bank eachTags[[],[44,37,44,44,44,44,44,44,44,44,44,44,9,44,37,44,2,44,61,44,1,44,44,44,44,44,44,44,44,44,44,9,44,1,44,2,44,61],[44,10,44,44,44,44,44,44,44,44,44,44,9,44,10,44,2,44,61],[44,20,44,44,44,44,44,44,44,44,44,44,9,44,20,44,2,44,61,44,10,44,44,44,44,44,44,44,44,44,44,9,44,10,44,2,44,61],[],[],[],[],[],[],[],[]] except []
certRow g20339 on (row false true k235 7 5 2 4 [2,0,2,1]) using bank tags [44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1,44,22,1,1,1]
certRow g20340 on (row false false k199 7 5 2 4 [2,0,3,0]) using bank tags []
certRow g20341 on (row false true k235 7 5 2 4 [2,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
