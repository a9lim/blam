import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data17
import Blc.SelfintCompact45.Frames.Data20
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g21107 on (row false true k241 7 5 4 4 [0,3,1,1]) byParts (fun j => piece 12 j false true k241 7 5 4 4 [0,3,1,1]) byCover (pieces_cover 12 (by decide) false true k241 7 5 4 4 [0,3,1,1]) withHints bank eachTags[[6,13,1,1,1],[2,14,1,1,1,2,14,1,1,1],[6,13,1,1,1,6,13,1,1,1,2,14,1,1,1,2,14,1,1,1,6,13,1,1,1],[6,13,1,1,1,6,13,1,1,1],[2,14,1,1,1,2,14,1,1,1,2,14,1,1,1],[2,14,1,1,1],[],[10,11,1,1,1,1,10,11,1,1,1,1],[],[2,14,1,1,1,2,14,1,1,1],[],[2,14,1,1,1]] except []
certRow g21108 on (row false false k205 7 5 4 4 [0,3,2,0]) using bank tags [6,6,6,9,6,6,6,9,6,6,6,9,2,2,2,3,6,6,6,9,2,2,2,9,2,2,2,9,2,2,2,9,6,6,6,33]
certRow g21109 on (row false true k241 7 5 4 4 [0,3,2,0]) using bank tags [6,13,1,1,1,6,13,1,1,1,6,13,1,1,1,2,14,1,1,1,6,13,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,6,13,1,1,1]
certRow g21110 on (row false false k205 7 5 4 4 [0,4,0,1]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,9,2,2,2,9,10,44,44,9,44,10,44,2,10,44,44,9,44,10,44,2]
certRow g21111 on (row false true k241 7 5 4 4 [0,4,0,1]) using bank tags [2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,10,11,1,1,1,1,10,11,1,1,1,1]
certRow g21112 on (row false false k205 7 5 4 4 [0,4,1,0]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,9,2,2,2,9,10,44,44,9,44,10,44,2]
certRow g21113 on (row false true k241 7 5 4 4 [0,4,1,0]) using bank tags [2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,10,11,1,1,1,1]
theorem g21114 : BadRow (row false false k205 7 5 4 4 [0,5,0,0]) := sparse_row false false k205 7 5 4 4 [0,5,0,0] (by decide)
theorem g21115 : BadRow (row false true k241 7 5 4 4 [0,5,0,0]) := sparse_row false true k241 7 5 4 4 [0,5,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
