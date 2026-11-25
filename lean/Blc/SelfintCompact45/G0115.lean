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
certRow g12754 on (row false false k103 6 5 2 4 [0,4,1,0]) using bank tags []
certRow g12755 on (row false true k148 6 5 2 4 [0,4,1,0]) using bank tags []
theorem g12756 : BadRow (row false false k103 6 5 2 4 [0,5,0,0]) := sparse_row false false k103 6 5 2 4 [0,5,0,0] (by decide)
theorem g12757 : BadRow (row false true k148 6 5 2 4 [0,5,0,0]) := sparse_row false true k148 6 5 2 4 [0,5,0,0] (by decide)
certRow g12758 on (row false false k103 6 5 2 4 [1,0,0,4]) using bank tags []
certRow g12759 on (row false true k148 6 5 2 4 [1,0,0,4]) using bank tags []
certRow g12760 on (row false false k103 6 5 2 4 [1,0,1,3]) using bank tags []
certRow g12761 on (row false true k148 6 5 2 4 [1,0,1,3]) using bank tags []
tagSlices g12762 on (row false false k103 6 5 2 4 [1,0,2,2]) byParts (fun j => piece 24 j false false k103 6 5 2 4 [1,0,2,2]) byCover (pieces_cover 24 (by decide) false false k103 6 5 2 4 [1,0,2,2]) withHints bank eachTags[[],[44,1,44,44,44,44,44,5,44,26,44,44,44,44,44,44,44,37,44,44,44,44,5,44,44,44,44,44,2,44,44,44,12,44,20,44,44,44,44,1,44,44,44,44,44,1,44,1,44,44,44,44,44,44,44,1,44,44,44,44,1,44,44,44,44,44,2,44,44,44,12,44,21,44,44,44],[44,1,44,44,44,44,44,5,44,26,44,44,44,44,44,44,44,37,44,44,44,44,5,44,44,44,44,44,2,44,44,44,12,44,20,44,44,44],[44,1,44,44,44,44,44,1,44,1,44,44,44,44,44,44,44,1,44,44,44,44,1,44,44,44,44,44,2,44,44,44,12,44,21,44,44,44,44,1,44,44,44,44,44,1,44,1,44,44,44,44,44,44,44,1,44,44,44,44,1,44,44,44,44,44,2,44,44,44,12,44,21,44,44,44],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
