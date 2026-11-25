import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g25426 on (row false false k299 5 5 3 6 [0,1,1,0,3,0]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [0,1,1,0,3,0]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [0,1,1,0,3,0]) withHints bank eachTags[[2,2,2,2],[2,2,2,2,2,2],[1,1,1,1,1,1,1,20,20,20,20,20,20,20,20,20,20,20,20,20,20,8,8,20,8,20,20,8,8,8,8,44,0,44,0],[2,2,2,2,2,44,0,44,0,44,0,44,0],[],[],[2,2,2,2,2,2,2],[2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1],[2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1]] except [Floor45.e9692715709306,Floor45.e9692715703674,Floor45.e9692402709370,Floor45.e9692402703738]
tagSlices g25427 on (row false true k323 5 5 3 6 [0,1,1,0,3,0]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,1,1,0,3,0]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,1,1,0,3,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25428 on (row false false k299 5 5 3 6 [0,1,1,1,0,2]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [0,1,1,1,0,2]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [0,1,1,1,0,2]) withHints bank eachTags[[],[2,2],[1,1,1,1,1,2,2,1,1,1,10,10,10,10,10,10,10,10,10,10,10,10,10,10,20,20,20,20,20,20,20,8,8,20,20,20,20,8,28,0,8,0,8,8,8,8,8,0,28,0,0,8,8,8,8],[],[],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,19,19,1,40,1,2,2,1,40,40,1,1,1,1,1,1],[2,2,2,2,2],[],[2,2,2,2]] except [Floor45.e9692726283182,Floor45.e9692726260654,Floor45.e9636229836314,Floor45.e9636229656090,Floor45.e9692728003502]
tagSlices g25429 on (row false true k323 5 5 3 6 [0,1,1,1,0,2]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [0,1,1,1,0,2]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [0,1,1,1,0,2]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g25430 : BadRow (row false false k299 5 5 3 6 [0,1,1,1,1,1]) := sparse_row false false k299 5 5 3 6 [0,1,1,1,1,1] (by decide)
theorem g25431 : BadRow (row false true k323 5 5 3 6 [0,1,1,1,1,1]) := sparse_row false true k323 5 5 3 6 [0,1,1,1,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
