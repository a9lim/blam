import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12726 on (row false false k103 6 5 2 4 [0,0,5,0]) using bank tags []
certRow g12727 on (row false true k148 6 5 2 4 [0,0,5,0]) using bank tags []
certRow g12728 on (row false false k103 6 5 2 4 [0,1,0,4]) using bank tags []
certRow g12729 on (row false true k148 6 5 2 4 [0,1,0,4]) using bank tags []
certRow g12730 on (row false false k103 6 5 2 4 [0,1,1,3]) using bank tags []
certRow g12731 on (row false true k148 6 5 2 4 [0,1,1,3]) using bank tags []
tagSlices g12732 on (row false false k103 6 5 2 4 [0,1,2,2]) byParts (fun j => piece 12 j false false k103 6 5 2 4 [0,1,2,2]) byCover (pieces_cover 12 (by decide) false false k103 6 5 2 4 [0,1,2,2]) withHints bank eachTags[[],[],[44,20,44,44,44,44,44,5,44,26,44,44,44,44,44,44,44,37,44,44,44,44,5,44,44,44,44,44,2,44,44,44,12,44,20,44,44,44],[44,1,44,44,44,44,44,1,44,1,44,44,44,44,44,44,44,1,44,44,44,44,1,44,44,44,44,44,2,44,44,44,12,44,20,44,44,44,44,1,44,44,44,44,44,1,44,1,44,44,44,44,44,44,44,1,44,44,44,44,1,44,44,44,44,44,2,44,44,44,12,44,20,44,44,44],[],[],[],[],[],[],[],[]] except []
tagSlices g12733 on (row false true k148 6 5 2 4 [0,1,2,2]) byParts (fun j => piece 12 j false true k148 6 5 2 4 [0,1,2,2]) byCover (pieces_cover 12 (by decide) false true k148 6 5 2 4 [0,1,2,2]) withHints bank eachTags[[],[],[44,22,1,1,1,1,13,13,11,12,1,20,1,1,12,2,11,35,1,1,13,13,12,2,11,5,1,1,1,1,13,13],[44,22,1,1,1,1,1,1,1,12,1,35,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,44,22,1,1,1,1,1,1,1,12,1,20,1,1,1,2,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[]] except []
certRow g12734 on (row false false k103 6 5 2 4 [0,1,3,1]) using bank tags []
certRow g12735 on (row false true k148 6 5 2 4 [0,1,3,1]) using bank tags []
certRow g12736 on (row false false k103 6 5 2 4 [0,1,4,0]) using bank tags []
certRow g12737 on (row false true k148 6 5 2 4 [0,1,4,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
