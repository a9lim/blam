import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12738 on (row false false k103 6 5 2 4 [0,2,0,3]) using bank tags []
certRow g12739 on (row false true k148 6 5 2 4 [0,2,0,3]) using bank tags []
tagSlices g12740 on (row false false k103 6 5 2 4 [0,2,1,2]) byParts (fun j => piece 12 j false false k103 6 5 2 4 [0,2,1,2]) byCover (pieces_cover 12 (by decide) false false k103 6 5 2 4 [0,2,1,2]) withHints bank eachTags[[],[],[44,20,44,44,44,44,44,20,44,20,44,44,44,44,44,44,44,20,44,44,44,44,20,44,44,44,44,44,2,44,44,44,12,44,20,44,44,44],[44,11,44,44,44,44,44,20,44,1,44,44,44,44,44,44,44,11,44,44,44,44,20,44,44,44,44,44,2,44,44,44,12,44,11,44,44,44,44,20,44,44,44,44,44,20,44,20,44,44,44,44,44,44,44,20,44,44,44,44,20,44,44,44,44,44,2,44,44,44,12,44,20,44,44,44],[],[],[],[],[],[],[],[]] except []
tagSlices g12741 on (row false true k148 6 5 2 4 [0,2,1,2]) byParts (fun j => piece 12 j false true k148 6 5 2 4 [0,2,1,2]) byCover (pieces_cover 12 (by decide) false true k148 6 5 2 4 [0,2,1,2]) withHints bank eachTags[[],[],[44,22,1,1,1,1,1,1,1,12,1,35,1,1,1,2,1,20,1,1,1,1,1,2,1,1,1,1,1,1,1,1],[44,22,11,12,1,1,15,15,14,12,14,11,14,1,14,2,14,20,1,1,15,15,14,2,14,1,14,1,14,1,15,15,44,22,1,1,1,1,1,1,1,12,1,20,1,1,1,2,1,20,1,1,1,1,1,2,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
