import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g23157 on (row false true k310 5 4 2 5 [1,0,1,0,2]) byParts (fun j => piece 24 j false true k310 5 4 2 5 [1,0,1,0,2]) byCover (pieces_cover 24 (by decide) false true k310 5 4 2 5 [1,0,1,0,2]) withHints bank eachTags[[],[2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1],[2,2,2,1,14,1,2,2,2,27,14,1],[2,2,2,10,14,1,2,2,2,0,14,1],[2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,20,14,1,2,2,2,10,14,1,2,2,2,0,14,1,1,12,1,1,1,1,1,2,1,1,1,1,1,12,1,1,1,1,1,2,1,1,1,1],[],[29,10,22,20,1,1,1,9,1,1,1,1,29,10,28,20,1,1,1,9,1,1,1,1,29,10,29,20,1,1,1,9,29,1,1,1,29,10,21,20,1,1,1,9,1,1,1,1,29,10,21,20,1,1,1,9,1,1,1,1,20,1,21,20,20,20,20,1,1,1,20,1,21,1,22,20,20,20,20,1,1,1,20,1],[],[],[],[6,10,6,1,6,1,6,1,6,1,6,1,6,10,6,1,6,1,6,1,6,1,6,1],[],[],[],[],[],[],[],[],[],[],[],[2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,17,12,29,1,1,1,29,2,1,1,1,1,17,12,29,1,1,1,1,2,29,1,1,1],[]] except [Floor45.e2394982569582,Floor45.e2394982544814]
theorem g23158 : BadRow (row false false k286 5 4 2 5 [1,0,1,1,1]) := sparse_row false false k286 5 4 2 5 [1,0,1,1,1] (by decide)
theorem g23159 : BadRow (row false true k310 5 4 2 5 [1,0,1,1,1]) := sparse_row false true k310 5 4 2 5 [1,0,1,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
