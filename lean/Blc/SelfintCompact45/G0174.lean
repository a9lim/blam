import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g14694 on (row false false k115 6 6 3 4 [2,0,2,2]) byParts (fun j => piece 12 j false false k115 6 6 3 4 [2,0,2,2]) byCover (pieces_cover 12 (by decide) false false k115 6 6 3 4 [2,0,2,2]) withHints bank eachTags[[],[44,44,44,20,44,44,44,1,44,44,44,44,44,21,44,44,44,10,44,44],[44,44,44,20,44,44,44,10,44,44,44,44,44,20,44,44,44,10,44,44],[],[],[],[],[],[],[2,2,44,44,44,26,44,44,44,19,44,44,44,44,44,20,44,44,44,1,44,44,44,44,44,20,44,44,44,1,44,44],[],[2,2,44,44,44,26,44,44,44,10,44,44]] except []
tagSlices g14695 on (row false true k160 6 6 3 4 [2,0,2,2]) byParts (fun j => piece 12 j false true k160 6 6 3 4 [2,0,2,2]) byCover (pieces_cover 12 (by decide) false true k160 6 6 3 4 [2,0,2,2]) withHints bank eachTags[[],[1,9,1,1,1,1,1,2,1,1,1,1,6,9,6,10,6,1,6,2,6,12,6,1],[2,9,2,10,2,1,2,2,2,12,2,1,6,9,6,10,6,1,6,2,6,12,6,1],[],[],[],[],[],[],[2,2,2,11,14,1,12,9,12,37,12,1,12,2,12,11,12,1,1,9,1,1,1,1,1,2,1,1,1,1,1,9,1,1,1,1,1,2,1,1,1,1],[],[2,2,2,11,14,1,6,9,6,10,6,1,6,2,6,12,6,1]] except []
certRow g14696 on (row false false k115 6 6 3 4 [2,0,3,1]) using bank tags [44,44,8,8,44,44,8,8,44,44,44,44,44,20,44,44,44,1,44,44,44,44,44,21,44,44,44,1,44,44,44,44,44,20,44,44,44,10,44,44]
certRow g14697 on (row false true k160 6 6 3 4 [2,0,3,1]) using bank tags [16,9,8,8,1,1,1,2,17,1,1,1,1,9,1,1,1,1,1,2,1,1,1,1,1,9,1,1,1,1,1,2,1,1,1,1,6,9,6,10,6,1,6,2,6,12,6,1]
certRow g14698 on (row false false k115 6 6 3 4 [2,0,4,0]) using bank tags []
certRow g14699 on (row false true k160 6 6 3 4 [2,0,4,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
