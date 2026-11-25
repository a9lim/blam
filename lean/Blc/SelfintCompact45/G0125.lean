import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g12797 on (row false true k148 6 5 2 4 [2,1,0,2]) byParts (fun j => piece 12 j false true k148 6 5 2 4 [2,1,0,2]) byCover (pieces_cover 12 (by decide) false true k148 6 5 2 4 [2,1,0,2]) withHints bank eachTags[[],[44,22,1,1,1,1,6,6,1,9,1,36,1,1,1,2,1,33,1,1,6,6,1,2,1,5,1,1,1,1,6,6,44,22,1,1,1,1,6,6,1,9,1,1,1,1,1,2,1,33,1,1,6,6,1,2,1,5,1,1,1,1,6,6],[44,22,10,12,1,1,7,7,2,9,2,10,2,1,2,2,2,1,1,1,7,7,2,2,2,1,2,1,2,1,7,7],[44,22,10,12,1,1,6,6,2,9,2,10,2,1,2,2,2,1,1,1,6,6,2,2,2,1,2,1,2,1,6,6,44,22,10,12,1,1,7,7,2,9,2,10,2,1,2,2,2,36,1,1,7,7,2,2,2,11,2,1,2,1,7,7],[],[],[],[],[],[],[],[]] except []
certRow g12798 on (row false false k103 6 5 2 4 [2,1,1,1]) using bank tags []
certRow g12799 on (row false true k148 6 5 2 4 [2,1,1,1]) using bank tags []
tagSlices g12800 on (row false false k103 6 5 2 4 [2,1,2,0]) byParts (fun j => piece 12 j false false k103 6 5 2 4 [2,1,2,0]) byCover (pieces_cover 12 (by decide) false false k103 6 5 2 4 [2,1,2,0]) withHints bank eachTags[[],[44,37,44,44,44,44,44,3,44,1,44,44,44,44,44,44,44,36,44,44,44,44,3,44,44,44,44,44,2,44,44,44,9,44,18,44,44,44,44,1,44,44,44,44,44,3,44,1,44,44,44,44,44,44,44,36,44,44,44,44,3,44,44,44,44,44,2,44,44,44,9,44,18,44,44,44],[44,10,44,44,44,44,44,27,44,20,44,44,44,44,44,44,44,10,44,44,44,44,27,44,44,44,44,44,2,44,44,44,9,44,10,44,44,44],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
