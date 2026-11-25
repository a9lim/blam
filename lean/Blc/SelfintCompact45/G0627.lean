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
tagSlices g22519 on (row false true k301 5 3 2 4 [0,0,2,1]) byParts (fun j => piece 24 j false true k301 5 3 2 4 [0,0,2,1]) byCover (pieces_cover 24 (by decide) false true k301 5 3 2 4 [0,0,2,1]) withHints bank eachTags[[],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,36,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,36,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1,2,2,2,2,2,2,2,9,2,3,2,2,9,9,36,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[],[2,2,2,2,2,2,2,20,2,10,2,2,1,10,9,14,14,1,14,1,14,11,1,1,1,14,1,14,1,1],[],[],[],[],[],[],[],[],[],[],[],[17,9,17,9,1,1,29,9,1,1,17,12,20,1,32,2,1,1,32,2,20,1,20,1,1,2,32,2,1,2,17,12,1,1,1,14,1,1,1,1,1,1,29,14,1,1,1,14,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[]] except []
theorem g22520 : BadRow (row false false k277 5 3 2 4 [0,0,3,0]) := sparse_row false false k277 5 3 2 4 [0,0,3,0] (by decide)
theorem g22521 : BadRow (row false true k301 5 3 2 4 [0,0,3,0]) := sparse_row false true k301 5 3 2 4 [0,0,3,0] (by decide)
end Blc.SelfintSingleObject.Compact45
