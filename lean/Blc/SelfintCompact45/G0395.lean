import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g19864 on (row false false k194 7 4 4 5 [0,0,3,0,1]) byParts (fun j => piece 12 j false false k194 7 4 4 5 [0,0,3,0,1]) byCover (pieces_cover 12 (by decide) false false k194 7 4 4 5 [0,0,3,0,1]) withHints bank eachTags[[6,6,6,6,6,6,6,6,2,2,6,6],[2,2,2,2,2,2,25,73],[2,2],[6,2,2,6,6,6,2,2],[],[],[48,24,2,2,6,6],[],[6,2,25,2,25,2],[33,9,33,9],[6,6,6,2,2,6,2,71,2,2,2,6,2,2],[3,3,3,3,3,3,3,3,44,3,44,3,3,44,3,44,3,3,3,9,3,9,3,10,44,47,10,44,20]] except []
tagSlices g19866 on (row false false k194 7 4 4 5 [0,0,3,1,0]) byParts (fun j => piece 8 j false false k194 7 4 4 5 [0,0,3,1,0]) byCover (pieces_cover 8 (by decide) false false k194 7 4 4 5 [0,0,3,1,0]) withHints bank eachTags[[6,2],[2,2,2,6,2,2,25,33,9],[6,2,6,2,2,2,2,44,3,44,3],[2,2,10,44,47],[6,6,6,6,2,2,6,25,2,2,2,2,2,4,2,4],[2],[48,2],[2,2,2,6,2,2,3,3,3,3,44,3,3,44,3,3,44,3,44,3,3,9,3]] except []
theorem g19868 : BadRow (row false false k194 7 4 4 5 [0,0,4,0,0]) := sparse_row false false k194 7 4 4 5 [0,0,4,0,0] (by decide)
tagSlices g19870 on (row false false k194 7 4 4 5 [0,1,0,0,3]) byParts (fun j => piece 12 j false false k194 7 4 4 5 [0,1,0,0,3]) byCover (pieces_cover 12 (by decide) false false k194 7 4 4 5 [0,1,0,0,3]) withHints bank eachTags[[6,6,6,6,6,6,2,6,2,2,2,2,1,2,2,2,1,2,2,2,2,2],[],[2,2,2,2,2],[6,2,6,2,2,2,2,6,6,2,2,2,2,2],[],[6,6,6,2,2],[],[6,6],[2,2],[2,2],[1,2,2,2,1,2,2,2,2,2],[3,3,3,3,3,3,3,44,3,3,44,3,3,3,44,3,44,3,44,3,44,3,44,3,44,3,44,3,44,3]] except []
end Blc.SelfintSingleObject.Compact45
