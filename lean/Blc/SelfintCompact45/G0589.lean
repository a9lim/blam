import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data21
import Blc.SelfintCompact45.Frames.Data22
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g22333 : BadRow (row false true k272 8 3 5 5 [0,3,0,0,0]) := sparse_row false true k272 8 3 5 5 [0,3,0,0,0] (by decide)
tagSlices g22334 on (row false false k257 8 3 5 5 [1,0,0,0,2]) byParts (fun j => piece 12 j false false k257 8 3 5 5 [1,0,0,0,2]) byCover (pieces_cover 12 (by decide) false false k257 8 3 5 5 [1,0,0,0,2]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
