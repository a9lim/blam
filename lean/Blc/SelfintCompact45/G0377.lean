import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
import Blc.SelfintCompact45.Frames.Data18
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g19564 on (row false false k190 7 4 3 4 [1,0,2,1]) byParts (fun j => piece 12 j false false k190 7 4 3 4 [1,0,2,1]) byCover (pieces_cover 12 (by decide) false false k190 7 4 3 4 [1,0,2,1]) withHints bank eachTags[[],[6,6,6,6,9,6,6,3,6,6,6,6,9,6,6,3,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9],[6,6,6,6,9,6,6,3],[6,6,6,6,9,6,6,3,6,6,6,6,9,6,6,3],[],[6,6,6,6,33,6,6,33],[],[],[],[2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9],[],[2,2,2,2,9,2,2,9]] except []
certRow g19565 on (row false true k226 7 4 3 4 [1,0,2,1]) using bank tags [6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1]
certRow g19566 on (row false false k190 7 4 3 4 [1,0,3,0]) using bank tags [2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9]
certRow g19567 on (row false true k226 7 4 3 4 [1,0,3,0]) using bank tags [2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1]
certRow g19568 on (row false false k190 7 4 3 4 [1,1,0,2]) using bank tags [6,6,6,6,9,6,6,3,6,6,6,6,9,6,6,3,6,6,6,6,9,6,6,3,6,6,6,6,9,6,6,3,6,6,6,6,9,6,6,3,6,6,6,6,33,6,6,33,6,6,6,6,33,6,6,33,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9]
certRow g19569 on (row false true k226 7 4 3 4 [1,1,0,2]) using bank tags [6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,6,13,6,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1]
theorem g19570 : BadRow (row false false k190 7 4 3 4 [1,1,1,1]) := sparse_row false false k190 7 4 3 4 [1,1,1,1] (by decide)
theorem g19571 : BadRow (row false true k226 7 4 3 4 [1,1,1,1]) := sparse_row false true k226 7 4 3 4 [1,1,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
