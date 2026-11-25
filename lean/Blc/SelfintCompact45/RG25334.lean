import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g25334 on (row false false k299 5 5 3 6 [0,0,1,1,2,1]) byParts (fun j => piece 8 j false false k299 5 5 3 6 [0,0,1,1,2,1]) byCover (pieces_cover 8 (by decide) false false k299 5 5 3 6 [0,0,1,1,2,1]) withHints bank eachTags[[2,2,2],[],[2,2,1,1,2,2,2,2,2,2,2,10,10,10,10,10,10,10,10,10],[],[],[],[2,2],[1,1,1]] except []
end Blc.SelfintSingleObject.Compact45
