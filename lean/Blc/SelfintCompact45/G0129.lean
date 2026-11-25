import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g12805 on (row false true k148 6 5 2 4 [2,2,1,0]) byParts (fun j => piece 12 j false true k148 6 5 2 4 [2,2,1,0]) byCover (pieces_cover 12 (by decide) false true k148 6 5 2 4 [2,2,1,0]) withHints bank eachTags[[],[44,22,36,11,1,1,6,6,9,9,9,36,9,1,9,2,9,33,1,1,6,6,9,2,12,5,12,1,12,1,6,6,44,22,36,11,1,1,6,6,9,9,9,36,9,1,9,2,9,33,1,1,6,6,9,2,12,5,12,1,12,1,6,6],[8,22,8,1,1,1,6,6,10,9,8,8,1,1,9,2,10,33,1,1,6,6,9,2,11,5,1,1,1,1,6,6],[],[],[],[],[],[],[],[],[]] except []
certRow g12806 on (row false false k103 6 5 2 4 [2,3,0,0]) using bank tags []
certRow g12807 on (row false true k148 6 5 2 4 [2,3,0,0]) using bank tags []
certRow g12808 on (row false false k103 6 5 2 4 [3,0,0,2]) using bank tags []
certRow g12809 on (row false true k148 6 5 2 4 [3,0,0,2]) using bank tags []
certRow g12810 on (row false false k103 6 5 2 4 [3,0,1,1]) using bank tags []
certRow g12811 on (row false true k148 6 5 2 4 [3,0,1,1]) using bank tags []
certRow g12812 on (row false false k103 6 5 2 4 [3,0,2,0]) using bank tags []
certRow g12813 on (row false true k148 6 5 2 4 [3,0,2,0]) using bank tags []
certRow g12814 on (row false false k103 6 5 2 4 [3,1,0,1]) using bank tags []
certRow g12815 on (row false true k148 6 5 2 4 [3,1,0,1]) using bank tags []
certRow g12816 on (row false false k103 6 5 2 4 [3,1,1,0]) using bank tags []
certRow g12817 on (row false true k148 6 5 2 4 [3,1,1,0]) using bank tags []
certRow g12818 on (row false false k103 6 5 2 4 [3,2,0,0]) using bank tags []
certRow g12819 on (row false true k148 6 5 2 4 [3,2,0,0]) using bank tags []
certRow g12820 on (row false false k103 6 5 2 4 [4,0,0,1]) using bank tags []
certRow g12821 on (row false true k148 6 5 2 4 [4,0,0,1]) using bank tags []
certRow g12822 on (row false false k103 6 5 2 4 [4,0,1,0]) using bank tags []
certRow g12823 on (row false true k148 6 5 2 4 [4,0,1,0]) using bank tags []
certRow g12824 on (row false false k103 6 5 2 4 [4,1,0,0]) using bank tags []
certRow g12825 on (row false true k148 6 5 2 4 [4,1,0,0]) using bank tags []
theorem g12826 : BadRow (row false false k103 6 5 2 4 [5,0,0,0]) := sparse_row false false k103 6 5 2 4 [5,0,0,0] (by decide)
theorem g12827 : BadRow (row false true k148 6 5 2 4 [5,0,0,0]) := sparse_row false true k148 6 5 2 4 [5,0,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
