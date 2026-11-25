import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g12763 on (row false true k148 6 5 2 4 [1,0,2,2]) byParts (fun j => piece 12 j false true k148 6 5 2 4 [1,0,2,2]) byCover (pieces_cover 12 (by decide) false true k148 6 5 2 4 [1,0,2,2]) withHints bank eachTags[[],[44,22,1,1,1,1,13,13,11,12,1,33,1,1,12,2,11,35,1,1,13,13,12,2,11,5,1,1,1,1,13,13,44,22,1,1,1,1,1,1,1,12,1,33,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1],[44,22,1,1,1,1,13,13,11,12,1,1,1,1,12,2,11,35,1,1,13,13,12,2,11,5,1,1,1,1,13,13],[44,22,1,1,1,1,1,1,1,12,1,33,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,44,22,1,1,1,1,1,1,1,12,1,1,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[]] except []
certRow g12764 on (row false false k103 6 5 2 4 [1,0,3,1]) using bank tags []
certRow g12765 on (row false true k148 6 5 2 4 [1,0,3,1]) using bank tags []
certRow g12766 on (row false false k103 6 5 2 4 [1,0,4,0]) using bank tags []
certRow g12767 on (row false true k148 6 5 2 4 [1,0,4,0]) using bank tags []
certRow g12768 on (row false false k103 6 5 2 4 [1,1,0,3]) using bank tags []
certRow g12769 on (row false true k148 6 5 2 4 [1,1,0,3]) using bank tags []
certRow g12770 on (row false false k103 6 5 2 4 [1,1,1,2]) using bank tags []
certRow g12771 on (row false true k148 6 5 2 4 [1,1,1,2]) using bank tags []
certRow g12772 on (row false false k103 6 5 2 4 [1,1,2,1]) using bank tags []
certRow g12773 on (row false true k148 6 5 2 4 [1,1,2,1]) using bank tags []
certRow g12774 on (row false false k103 6 5 2 4 [1,1,3,0]) using bank tags []
certRow g12775 on (row false true k148 6 5 2 4 [1,1,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
