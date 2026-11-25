import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data17
import Blc.SelfintCompact45.Frames.Data20
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g21116 on (row false false k205 7 5 4 4 [1,0,0,4]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,9]
certRow g21117 on (row false true k241 7 5 4 4 [1,0,0,4]) using bank tags [2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1]
certRow g21118 on (row false false k205 7 5 4 4 [1,0,1,3]) using bank tags [6,6,6,9,6,6,6,9,6,6,6,9,6,6,6,9,6,6,6,9,6,6,6,9,6,6,6,9,6,6,6,9,2,2,2,3,6,6,6,9,6,6,6,9,6,6,6,9,6,6,6,9,2,2,2,3,2,2,2,3,6,6,6,33,6,6,6,33,2,2,2,9,2,2,2,9,2,2,2,9]
tagSlices g21119 on (row false true k241 7 5 4 4 [1,0,1,3]) byParts (fun j => piece 12 j false true k241 7 5 4 4 [1,0,1,3]) byCover (pieces_cover 12 (by decide) false true k241 7 5 4 4 [1,0,1,3]) withHints bank eachTags[[],[6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1,2,14,1,1,1,2,14,1,1,1],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1,2,14,1,1,1,2,14,1,1,1],[],[],[],[],[6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,2,14,1,1,1,2,14,1,1,1],[],[6,13,1,1,1,6,13,1,1,1]] except []
end Blc.SelfintSingleObject.Compact45
