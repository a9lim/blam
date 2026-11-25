import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g12793 on (row false true k148 6 5 2 4 [2,0,2,1]) byParts (fun j => piece 12 j false true k148 6 5 2 4 [2,0,2,1]) byCover (pieces_cover 12 (by decide) false true k148 6 5 2 4 [2,0,2,1]) withHints bank eachTags[[],[44,22,37,11,1,1,6,6,12,9,12,37,12,1,12,2,12,33,1,1,6,6,12,2,12,5,12,1,12,1,6,6,44,22,1,1,1,1,6,6,1,9,1,1,1,1,1,2,1,33,1,1,6,6,1,2,1,5,1,1,1,1,6,6],[44,22,10,12,1,1,7,7,2,9,2,10,2,1,2,2,2,23,1,1,7,7,2,2,2,19,2,1,2,1,7,7],[44,22,1,1,1,1,6,6,1,9,1,1,1,1,1,2,1,33,1,1,6,6,1,2,1,5,1,1,1,1,6,6,44,22,10,12,1,1,7,7,2,9,2,10,2,1,2,2,2,20,1,1,7,7,2,2,2,1,2,1,2,1,7,7],[],[],[],[],[],[],[],[]] except []
certRow g12794 on (row false false k103 6 5 2 4 [2,0,3,0]) using bank tags []
certRow g12795 on (row false true k148 6 5 2 4 [2,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
