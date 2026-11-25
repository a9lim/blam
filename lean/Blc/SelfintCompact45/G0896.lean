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
tagSlices g25566 on (row false false k299 5 5 3 6 [1,0,1,0,3,0]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [1,0,1,0,3,0]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [1,0,1,0,3,0]) withHints bank eachTags[[2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2],[1,1,1,1,1,1,1],[2,2,2,2,2],[],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,1,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,20,20,20,20,20,8,8,20,1,1,1,1]] except []
tagSlices g25567 on (row false true k323 5 5 3 6 [1,0,1,0,3,0]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [1,0,1,0,3,0]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [1,0,1,0,3,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g25568 on (row false false k299 5 5 3 6 [1,0,1,1,0,2]) byParts (fun j => piece 12 j false false k299 5 5 3 6 [1,0,1,1,0,2]) byCover (pieces_cover 12 (by decide) false false k299 5 5 3 6 [1,0,1,1,0,2]) withHints bank eachTags[[2,2,2,2,2],[2,2],[2,2,2,2,1,1,1,1,1,2,2,1,1,1],[],[2,2,2,2,2,20,20,20,20,20,44,20,44,20],[],[1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[39,40,1,1,1,1,19,1,1,39,1,1,1,1,28,8,8,8,8,20,20,36,36,20,20,20,20,20,20,20,20,20,20,20,20,20,20,2,2,20,1,1,1,1,1,1,1,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[20,44,20,20,44,20],[2,2,2,2]] except []
tagSlices g25569 on (row false true k323 5 5 3 6 [1,0,1,1,0,2]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [1,0,1,1,0,2]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [1,0,1,1,0,2]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g25570 : BadRow (row false false k299 5 5 3 6 [1,0,1,1,1,1]) := sparse_row false false k299 5 5 3 6 [1,0,1,1,1,1] (by decide)
theorem g25571 : BadRow (row false true k323 5 5 3 6 [1,0,1,1,1,1]) := sparse_row false true k323 5 5 3 6 [1,0,1,1,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
