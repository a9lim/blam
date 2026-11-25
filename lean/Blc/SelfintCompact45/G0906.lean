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
tagSlices g25608 on (row false false k299 5 5 3 6 [1,1,0,1,0,2]) byParts (fun j => piece 24 j false false k299 5 5 3 6 [1,1,0,1,0,2]) byCover (pieces_cover 24 (by decide) false false k299 5 5 3 6 [1,1,0,1,0,2]) withHints bank eachTags[[],[],[8,8,8,8,8,8,8,8,8,8,8,8,8],[],[],[],[],[],[30,8,30,8],[2,2,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2],[1,44,21,8,8,1,44,21,8,8],[2,2,2,2],[],[2,2],[2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2],[],[1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[1,40,1,1,1,39,30,1,1,1,1,1,1,1,10,10,10,10,10,1,1,1,1,1,1,1,1,1,1,1,20,20,1,1,1,1,1,1,1,1,1,1,1,1,20,20,20,20,20,28,8,44,20,44,20,40,40,36,36,44,20,44,20],[],[],[]] except []
tagSlices g25609 on (row false true k323 5 5 3 6 [1,1,0,1,0,2]) byParts (fun j => piece 12 j false true k323 5 5 3 6 [1,1,0,1,0,2]) byCover (pieces_cover 12 (by decide) false true k323 5 5 3 6 [1,1,0,1,0,2]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
theorem g25610 : BadRow (row false false k299 5 5 3 6 [1,1,0,1,1,1]) := sparse_row false false k299 5 5 3 6 [1,1,0,1,1,1] (by decide)
theorem g25611 : BadRow (row false true k323 5 5 3 6 [1,1,0,1,1,1]) := sparse_row false true k323 5 5 3 6 [1,1,0,1,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
