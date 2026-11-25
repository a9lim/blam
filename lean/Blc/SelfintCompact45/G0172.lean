import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g14671 on (row false true k160 6 6 3 4 [1,2,0,3]) byParts (fun j => piece 12 j false true k160 6 6 3 4 [1,2,0,3]) byCover (pieces_cover 12 (by decide) false true k160 6 6 3 4 [1,2,0,3]) withHints bank eachTags[[],[13,12,13,11,13,1,13,2,13,12,13,1,1,12,1,1,1,1,1,2,1,1,1,1],[],[],[3,9,3,25,3,1,26,2,5,11,1,1,3,9,3,25,3,1,21,2,5,11,1,1],[2,2,2,10,14,1,2,2,2,10,14,1],[],[],[],[1,12,1,1,1,1,1,2,1,1,1,1,13,12,13,11,13,1,13,2,13,12,13,1],[],[1,12,1,20,1,1,1,2,1,1,1,1]] except []
certRow g14672 on (row false false k115 6 6 3 4 [1,2,1,2]) using bank tags [2,2,44,44,44,11,44,44,44,11,44,44,2,2,2,2,44,44,44,11,44,44,44,11,44,44,44,44,44,1,44,44,44,1,44,44,44,44,44,24,44,44,44,27,44,44]
certRow g14673 on (row false true k160 6 6 3 4 [1,2,1,2]) using bank tags [2,2,2,10,14,1,14,12,14,11,14,1,14,2,14,12,14,1,2,2,2,1,14,1,2,2,2,10,14,1,14,12,14,11,14,1,14,2,14,12,14,1,1,12,1,1,1,1,1,2,1,1,1,1,25,9,36,23,25,1,10,2,37,19,1,1]
certRow g14674 on (row false false k115 6 6 3 4 [1,2,2,1]) using bank tags [2,2,44,44,44,26,44,44,44,19,44,44,44,44,44,56,44,44,44,43,44,44,2,2,44,44,44,11,44,44,44,37,44,44,44,44,44,24,44,44,44,27,44,44]
certRow g14675 on (row false true k160 6 6 3 4 [1,2,2,1]) using bank tags [2,2,2,10,14,1,12,12,12,37,12,1,12,2,12,11,12,1,11,12,1,43,1,1,12,2,1,26,1,1,2,2,2,1,14,1,14,12,14,11,14,1,14,2,14,12,14,1,25,9,36,23,25,1,10,2,37,19,1,1]
certRow g14676 on (row false false k115 6 6 3 4 [1,2,3,0]) using bank tags [2,2,44,44,44,11,44,44,44,19,44,44,44,44,44,10,44,44,44,36,44,44]
certRow g14677 on (row false true k160 6 6 3 4 [1,2,3,0]) using bank tags [2,2,2,10,14,1,5,12,5,19,5,1,1,2,5,37,1,1,3,9,3,25,3,1,22,2,5,11,1,1]
certRow g14678 on (row false false k115 6 6 3 4 [1,3,0,2]) using bank tags [2,2,2,2,44,44,44,20,44,44,44,20,44,44,44,44,44,1,44,44,44,1,44,44,44,44,44,10,44,44,44,36,44,44,44,44,44,10,44,44,44,36,44,44]
end Blc.SelfintSingleObject.Compact45
