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
tagSlices g23173 on (row false true k310 5 4 2 5 [1,1,0,2,0]) byParts (fun j => piece 24 j false true k310 5 4 2 5 [1,1,0,2,0]) byCover (pieces_cover 24 (by decide) false true k310 5 4 2 5 [1,1,0,2,0]) withHints bank eachTags[[],[2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1],[2,2,2,10,14,1,2,2,2,10,14,1],[2,2,2,10,14,1,2,2,2,10,14,1],[2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1],[],[30,10,22,20,1,1,11,9,1,1,1,1,29,10,22,20,1,1,1,9,1,1,1,1,30,10,34,20,20,1,11,9,1,1,1,1,29,10,22,20,1,1,1,9,1,1,1,1,29,10,21,20,1,1,1,9,1,1,1,1],[],[],[],[],[],[],[],[],[],[],[],[],[17,1,17,20,1,1,1,1,17,1,1,1,17,1,22,20,1,1,1,1,1,1,1,1,1,12,1,1,1,1,1,2,1,1,1,1,1,12,1,1,1,1,1,2,1,1,1,1],[],[],[2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[]] except []
theorem g23174 : BadRow (row false false k286 5 4 2 5 [1,1,1,0,1]) := sparse_row false false k286 5 4 2 5 [1,1,1,0,1] (by decide)
theorem g23175 : BadRow (row false true k310 5 4 2 5 [1,1,1,0,1]) := sparse_row false true k310 5 4 2 5 [1,1,1,0,1] (by decide)
theorem g23176 : BadRow (row false false k286 5 4 2 5 [1,1,1,1,0]) := sparse_row false false k286 5 4 2 5 [1,1,1,1,0] (by decide)
theorem g23177 : BadRow (row false true k310 5 4 2 5 [1,1,1,1,0]) := sparse_row false true k310 5 4 2 5 [1,1,1,1,0] (by decide)
certRow g23178 on (row false false k286 5 4 2 5 [1,1,2,0,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,44,44,1,44,44,44,20,44,44,44,44,44,1,44,44,44,20,44,44,44,44,44,1,44,44,44,20,44,44,44,44,44,1,44,44,44,20,44,44]
end Blc.SelfintSingleObject.Compact45
