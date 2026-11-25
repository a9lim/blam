import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g12742 on (row false false k103 6 5 2 4 [0,2,2,1]) byParts (fun j => piece 12 j false false k103 6 5 2 4 [0,2,2,1]) byCover (pieces_cover 12 (by decide) false false k103 6 5 2 4 [0,2,2,1]) withHints bank eachTags[[],[],[44,11,44,44,44,44,44,20,44,20,44,44,44,44,44,44,44,19,44,44,44,44,20,44,44,44,44,44,2,44,44,44,12,44,11,44,44,44],[44,21,44,44,44,44,44,5,44,26,44,44,44,44,44,44,44,37,44,44,44,44,5,44,44,44,44,44,2,44,44,44,12,44,21,44,44,44,44,21,44,44,44,44,44,21,44,20,44,44,44,44,44,44,44,21,44,44,44,44,20,44,44,44,44,44,2,44,44,44,12,44,21,44,44,44],[],[],[],[],[],[],[],[]] except []
tagSlices g12743 on (row false true k148 6 5 2 4 [0,2,2,1]) byParts (fun j => piece 12 j false true k148 6 5 2 4 [0,2,2,1]) byCover (pieces_cover 12 (by decide) false true k148 6 5 2 4 [0,2,2,1]) withHints bank eachTags[[],[],[44,22,11,12,1,1,15,15,14,12,14,11,14,1,14,2,14,20,1,1,15,15,14,2,14,1,14,1,14,1,15,15],[44,22,1,1,1,1,13,13,11,12,1,21,1,1,12,2,11,35,1,1,13,13,12,2,11,5,1,1,1,1,13,13,44,22,1,1,1,1,1,1,1,12,1,21,1,1,1,2,1,20,1,1,1,1,1,2,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[]] except []
certRow g12744 on (row false false k103 6 5 2 4 [0,2,3,0]) using bank tags []
certRow g12745 on (row false true k148 6 5 2 4 [0,2,3,0]) using bank tags []
certRow g12746 on (row false false k103 6 5 2 4 [0,3,0,2]) using bank tags []
certRow g12747 on (row false true k148 6 5 2 4 [0,3,0,2]) using bank tags []
certRow g12748 on (row false false k103 6 5 2 4 [0,3,1,1]) using bank tags []
certRow g12749 on (row false true k148 6 5 2 4 [0,3,1,1]) using bank tags []
certRow g12750 on (row false false k103 6 5 2 4 [0,3,2,0]) using bank tags []
certRow g12751 on (row false true k148 6 5 2 4 [0,3,2,0]) using bank tags []
certRow g12752 on (row false false k103 6 5 2 4 [0,4,0,1]) using bank tags []
certRow g12753 on (row false true k148 6 5 2 4 [0,4,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
