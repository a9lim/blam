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
certRow g23033 on (row false true k309 5 4 2 4 [0,3,0,1]) using bank tags []
certRow g23034 on (row false false k285 5 4 2 4 [0,3,1,0]) using bank tags []
certRow g23035 on (row false true k309 5 4 2 4 [0,3,1,0]) using bank tags []
theorem g23036 : BadRow (row false false k285 5 4 2 4 [0,4,0,0]) := sparse_row false false k285 5 4 2 4 [0,4,0,0] (by decide)
theorem g23037 : BadRow (row false true k309 5 4 2 4 [0,4,0,0]) := sparse_row false true k309 5 4 2 4 [0,4,0,0] (by decide)
certRow g23038 on (row false false k285 5 4 2 4 [1,0,0,3]) using bank tags []
certRow g23039 on (row false true k309 5 4 2 4 [1,0,0,3]) using bank tags []
tagSlices g23040 on (row false false k285 5 4 2 4 [1,0,1,2]) byParts (fun j => piece 12 j false false k285 5 4 2 4 [1,0,1,2]) byCover (pieces_cover 12 (by decide) false false k285 5 4 2 4 [1,0,1,2]) withHints bank eachTags[[],[2,2,12,1,2,2,12,40,37,2,2,37,2,2,12,1,2,2,12,1,1,2,2,1],[2,2,12,1,2,2,12,21,21,2,2,21],[2,2,12,1,2,2,12,20,20,2,2,20,2,2,12,1,2,2,12,106,46,2,2,46],[],[44,44,44,44,44,44,20,44,1,44,20,44,20,44,44,44,44,44,44,20,44,20,44,20,44,20,44,20,44,44,44,44,44,44,20,44,20,44,20,44,44,44,44,44],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
