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
theorem g22514 : BadRow (row false false k277 5 3 2 4 [0,0,0,3]) := sparse_row false false k277 5 3 2 4 [0,0,0,3] (by decide)
theorem g22515 : BadRow (row false true k301 5 3 2 4 [0,0,0,3]) := sparse_row false true k301 5 3 2 4 [0,0,0,3] (by decide)
tagSlices g22516 on (row false false k277 5 3 2 4 [0,0,1,2]) byParts (fun j => piece 24 j false false k277 5 3 2 4 [0,0,1,2]) byCover (pieces_cover 24 (by decide) false false k277 5 3 2 4 [0,0,1,2]) withHints bank eachTags[[],[14,1,14,1,1,12,1,14,5,1,1,1,12,11,14,14,1,14,1,12,12,2,2,9,9,36,2,2,9,2,3,2,2,2,2,2],[],[14,1,14,1,1,12,1,14,5,1,1,1,12,11,14,14,1,14,1,12,12,2,2,9,9,36,2,2,9,2,3,2,2,2,2,2,14,1,14,1,1,12,20,14,5,1,1,1,12,11,14,14,1,14,1,12,12,2,2,9,9,36,2,2,9,2,3,2,2,2,2,2],[],[14,1,14,1,1,12,1,14,11,1,1,1,12,37,14,14,1,14,1,12,12,2,2,1,10,9,2,2,0,2,10,2,2,2,2,2],[],[],[],[],[],[],[],[],[],[],[],[44,1,44,1,44,1,44,1,44,1,44,1,44,0,44,1,44,14,44,1,44,14,44,1,44,0,44,0,44,12,44,1,44,14,44,1,44,1,44,0,44,0,44,1,44,1,44,2,44,2,44,2,44,12,44,1,44,2,44,1,44,2,44,9,44,9,44,1,44,9,44,1],[],[],[],[],[],[]] except [Floor45.e8996295740270,Floor45.e9632991677294,Floor45.e9636212902766,Floor45.e9633260112750,Floor45.e9636246457198,Floor45.e9633293667182]
end Blc.SelfintSingleObject.Compact45
