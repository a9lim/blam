import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g12781 on (row false true k148 6 5 2 4 [1,2,2,0]) byParts (fun j => piece 12 j false true k148 6 5 2 4 [1,2,2,0]) byCover (pieces_cover 12 (by decide) false true k148 6 5 2 4 [1,2,2,0]) withHints bank eachTags[[],[44,22,37,11,1,1,13,13,12,12,12,33,12,1,12,2,12,35,1,1,13,13,12,2,12,5,12,1,12,1,13,13,44,22,1,1,1,1,13,13,11,12,1,33,1,1,12,2,11,35,1,1,13,13,12,2,11,5,1,1,1,1,13,13],[44,22,11,12,1,1,15,15,14,12,14,33,14,1,14,2,14,1,1,1,15,15,14,2,14,1,14,1,14,1,15,15],[],[],[],[],[],[],[],[],[]] except []
certRow g12782 on (row false false k103 6 5 2 4 [1,3,0,1]) using bank tags []
certRow g12783 on (row false true k148 6 5 2 4 [1,3,0,1]) using bank tags []
certRow g12784 on (row false false k103 6 5 2 4 [1,3,1,0]) using bank tags []
certRow g12785 on (row false true k148 6 5 2 4 [1,3,1,0]) using bank tags []
certRow g12786 on (row false false k103 6 5 2 4 [1,4,0,0]) using bank tags []
certRow g12787 on (row false true k148 6 5 2 4 [1,4,0,0]) using bank tags []
certRow g12788 on (row false false k103 6 5 2 4 [2,0,0,3]) using bank tags []
certRow g12789 on (row false true k148 6 5 2 4 [2,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
