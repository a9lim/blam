import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data17
import Blc.SelfintCompact45.Frames.Data20
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g21090 on (row false false k205 7 5 4 4 [0,1,2,2]) byParts (fun j => piece 12 j false false k205 7 5 4 4 [0,1,2,2]) byCover (pieces_cover 12 (by decide) false false k205 7 5 4 4 [0,1,2,2]) withHints bank eachTags[[2,2,2,9],[6,6,6,9,6,6,6,9],[6,6,6,3,6,6,6,9,6,6,6,9,6,6,6,9],[6,6,6,3,6,6,6,3,2,2,2,9],[2,2,2,9],[2,2,2,9,2,2,2,9,2,2,2,9],[],[2,2,2,10,2,2,2,10,23,44,44,9,44,23,44,2,27,44,44,9,44,27,44,2],[],[2,2,2,9,2,2,2,9],[],[6,6,6,9]] except []
tagSlices g21091 on (row false true k241 7 5 4 4 [0,1,2,2]) byParts (fun j => piece 12 j false true k241 7 5 4 4 [0,1,2,2]) byCover (pieces_cover 12 (by decide) false true k241 7 5 4 4 [0,1,2,2]) withHints bank eachTags[[2,14,1,1,1],[6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1,2,14,1,1,1],[2,14,1,1,1],[2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[],[2,14,1,1,1,2,14,1,1,1,23,19,1,1,1,1,27,40,1,1,1,1],[],[2,14,1,1,1,2,14,1,1,1],[],[6,13,1,1,1]] except []
certRow g21092 on (row false false k205 7 5 4 4 [0,1,3,1]) using bank tags [6,6,6,9,6,6,6,9,6,6,6,9,6,6,6,9,2,2,2,3,6,6,6,9,2,2,2,3,2,2,2,3,6,6,6,9,6,6,6,9,6,6,6,9,2,2,2,3,6,6,6,9,2,2,2,3,2,2,2,9,2,2,2,9,6,6,6,33,10,44,44,9,44,10,44,2]
end Blc.SelfintSingleObject.Compact45
