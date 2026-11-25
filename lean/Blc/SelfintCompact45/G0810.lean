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
tagSlices g24699 on (row false true k319 5 5 2 6 [1,1,0,1,0,2]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,1,0,1,0,2]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,1,0,1,0,2]) withHints bank eachTags[[],[2,2,2,2,2,2,2,1,1],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,1,1,1,1],[],[],[],[1,1,1,1]] except []
theorem g24700 : BadRow (row false false k295 5 5 2 6 [1,1,0,1,1,1]) := sparse_row false false k295 5 5 2 6 [1,1,0,1,1,1] (by decide)
theorem g24701 : BadRow (row false true k319 5 5 2 6 [1,1,0,1,1,1]) := sparse_row false true k319 5 5 2 6 [1,1,0,1,1,1] (by decide)
certRow g24702 on (row false false k295 5 5 2 6 [1,1,0,1,2,0]) using bank tags []
tagSlices g24703 on (row false true k319 5 5 2 6 [1,1,0,1,2,0]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,1,0,1,2,0]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,1,0,1,2,0]) withHints bank eachTags[[],[2,2,2,2,19],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,2,2,2,2,19,1,1],[],[],[1,1,1,1,1,44,1,1,1],[1,1]] except []
certRow g24704 on (row false false k295 5 5 2 6 [1,1,0,2,0,1]) using bank tags []
tagSlices g24705 on (row false true k319 5 5 2 6 [1,1,0,2,0,1]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,1,0,2,0,1]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,1,0,2,0,1]) withHints bank eachTags[[30,30,30,30,30,12,12],[2,2,2,2,2,2,2,1,37],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,1,37,1,1],[],[],[2,2,2,2,2,1,1],[1,1,1,1]] except []
certRow g24706 on (row false false k295 5 5 2 6 [1,1,0,2,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
