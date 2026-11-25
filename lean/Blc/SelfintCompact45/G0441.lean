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
theorem g21075 : BadRow (row false true k241 7 5 4 4 [0,0,0,5]) := sparse_row false true k241 7 5 4 4 [0,0,0,5] (by decide)
certRow g21076 on (row false false k205 7 5 4 4 [0,0,1,4]) using bank tags [2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,3,2,2,2,9,2,2,2,9,2,2,2,9,2,2,2,10,10,44,44,9,44,10,44,2,10,44,44,9,44,10,44,2,20,44,44,9,44,20,44,2]
certRow g21077 on (row false true k241 7 5 4 4 [0,0,1,4]) using bank tags [2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,10,11,1,1,1,1,10,11,1,1,1,1,1,1,1,1,1,1]
tagSlices g21078 on (row false false k205 7 5 4 4 [0,0,2,3]) byParts (fun j => piece 12 j false false k205 7 5 4 4 [0,0,2,3]) byCover (pieces_cover 12 (by decide) false false k205 7 5 4 4 [0,0,2,3]) withHints bank eachTags[[],[6,6,6,9],[2,2,2,3,2,2,2,3],[6,6,6,9,6,6,6,9,2,2,2,9,2,2,2,9],[6,6,6,9,2,2,2,3,2,2,2,9,2,2,2,9],[],[],[6,6,6,33,2,2,2,10,2,2,2,10,10,44,44,9,44,10,44,2,27,44,44,9,44,27,44,2,23,44,44,9,44,23,44,2],[],[2,2,2,3,2,2,2,9,2,2,2,9],[],[]] except []
end Blc.SelfintSingleObject.Compact45
