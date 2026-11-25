import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14642 on (row false false k115 6 6 3 4 [0,5,0,1]) using bank tags []
certRow g14643 on (row false true k160 6 6 3 4 [0,5,0,1]) using bank tags []
certRow g14644 on (row false false k115 6 6 3 4 [0,5,1,0]) using bank tags []
certRow g14645 on (row false true k160 6 6 3 4 [0,5,1,0]) using bank tags []
theorem g14646 : BadRow (row false false k115 6 6 3 4 [0,6,0,0]) := sparse_row false false k115 6 6 3 4 [0,6,0,0] (by decide)
theorem g14647 : BadRow (row false true k160 6 6 3 4 [0,6,0,0]) := sparse_row false true k160 6 6 3 4 [0,6,0,0] (by decide)
certRow g14648 on (row false false k115 6 6 3 4 [1,0,0,5]) using bank tags []
certRow g14649 on (row false true k160 6 6 3 4 [1,0,0,5]) using bank tags []
certRow g14650 on (row false false k115 6 6 3 4 [1,0,1,4]) using bank tags []
certRow g14651 on (row false true k160 6 6 3 4 [1,0,1,4]) using bank tags []
certRow g14652 on (row false false k115 6 6 3 4 [1,0,2,3]) using bank tags [2,2,2,2,44,44,44,11,44,44,44,37,44,44,44,44,44,1,44,44,44,1,44,44,2,2,44,44,44,11,44,44,44,37,44,44,44,44,44,1,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44,44,44,44,10,44,44,44,36,44,44]
tagSlices g14653 on (row false true k160 6 6 3 4 [1,0,2,3]) byParts (fun j => piece 12 j false true k160 6 6 3 4 [1,0,2,3]) byCover (pieces_cover 12 (by decide) false true k160 6 6 3 4 [1,0,2,3]) withHints bank eachTags[[],[1,12,1,1,1,1,1,2,1,1,1,1,1,12,1,1,1,1,1,2,1,1,1,1],[],[],[3,9,3,25,3,1,24,2,5,11,1,1],[2,2,2,10,14,1],[],[],[],[2,2,2,10,14,1,5,12,5,37,5,1,1,2,5,11,1,1,1,12,1,1,1,1,1,2,1,1,1,1],[],[2,2,2,1,14,1,5,12,5,37,5,1,1,2,5,11,1,1]] except []
certRow g14654 on (row false false k115 6 6 3 4 [1,0,3,2]) using bank tags [2,2,2,2,44,44,44,1,44,44,44,1,44,44,2,2,44,44,44,1,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44,44,44,44,10,44,44,44,36,44,44]
certRow g14655 on (row false true k160 6 6 3 4 [1,0,3,2]) using bank tags [2,2,2,10,14,1,2,2,2,10,14,1,1,12,1,1,1,1,1,2,1,1,1,1,2,2,2,1,14,1,1,12,1,1,1,1,1,2,1,1,1,1,1,12,1,1,1,1,1,2,1,1,1,1,3,9,3,25,3,1,25,2,5,11,1,1]
certRow g14656 on (row false false k115 6 6 3 4 [1,0,4,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
