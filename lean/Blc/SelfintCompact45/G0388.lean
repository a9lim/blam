import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g19781 on (row false true k229 7 4 4 4 [0,1,0,3]) byParts (fun j => piece 12 j false true k229 7 4 4 4 [0,1,0,3]) byCover (pieces_cover 12 (by decide) false true k229 7 4 4 4 [0,1,0,3]) withHints bank eachTags[[],[6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1],[6,6,6,9,13,1],[6,6,6,9,13,1,6,6,6,9,13,1],[6,6,6,9,13,1,6,6,6,9,13,1],[6,6,6,9,13,1,6,6,6,9,13,1],[],[6,6,6,33,13,1,6,6,6,33,13,1,6,6,6,33,13,1,6,6,6,33,13,1],[],[6,6,6,9,13,1,6,6,6,9,13,1],[],[6,6,6,9,13,1]] except []
certRow g19782 on (row false false k193 7 4 4 4 [0,1,1,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19783 on (row false true k229 7 4 4 4 [0,1,1,2]) using bank tags [6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,33,13,1]
certRow g19784 on (row false false k193 7 4 4 4 [0,1,2,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19785 on (row false true k229 7 4 4 4 [0,1,2,1]) using bank tags [6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,3,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,33,13,1]
certRow g19786 on (row false false k193 7 4 4 4 [0,1,3,0]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19787 on (row false true k229 7 4 4 4 [0,1,3,0]) using bank tags [6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,33,13,1]
certRow g19788 on (row false false k193 7 4 4 4 [0,2,0,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g19789 on (row false true k229 7 4 4 4 [0,2,0,2]) using bank tags [6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,33,13,1,6,6,6,33,13,1]
end Blc.SelfintSingleObject.Compact45
