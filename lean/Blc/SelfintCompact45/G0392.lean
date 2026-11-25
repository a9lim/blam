import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g19837 on (row false true k229 7 4 4 4 [3,1,0,0]) using bank tags [6,6,6,9,13,1,6,6,6,9,13,1,6,6,6,9,13,1]
theorem g19838 : BadRow (row false false k193 7 4 4 4 [4,0,0,0]) := sparse_row false false k193 7 4 4 4 [4,0,0,0] (by decide)
theorem g19839 : BadRow (row false true k229 7 4 4 4 [4,0,0,0]) := sparse_row false true k229 7 4 4 4 [4,0,0,0] (by decide)
theorem g19840 : BadRow (row false false k194 7 4 4 5 [0,0,0,0,4]) := sparse_row false false k194 7 4 4 5 [0,0,0,0,4] (by decide)
tagSlices g19842 on (row false false k194 7 4 4 5 [0,0,0,1,3]) byParts (fun j => piece 8 j false false k194 7 4 4 5 [0,0,0,1,3]) byCover (pieces_cover 8 (by decide) false false k194 7 4 4 5 [0,0,0,1,3]) withHints bank eachTags[[],[20,1,2,33,9,33,9],[2,2,1,2,2,2,6,2],[2,10,44,20,1,44,71],[6,6,6,6,2,6,21,2,2,2,20,2,2,2],[],[1,2,20,2],[6,2,3,3,3,3,3,3,3,44,3,3,44,3,3,3,9,3,9,3]] except []
tagSlices g19844 on (row false false k194 7 4 4 5 [0,0,0,2,2]) byParts (fun j => piece 8 j false false k194 7 4 4 5 [0,0,0,2,2]) byCover (pieces_cover 8 (by decide) false false k194 7 4 4 5 [0,0,0,2,2]) withHints bank eachTags[[],[18,2,20,2,33,9,33,9],[6,6,6,6,2,2],[6,1,44,74,1,44,46],[6,2,20,2,20,2,2,2],[2,9,2,20,2,2,2],[28,20,2,2],[6,2,2,3,3,3,3,3,3,3,3,44,3,44,3,3,3,9,3,9,3]] except []
tagSlices g19846 on (row false false k194 7 4 4 5 [0,0,0,3,1]) byParts (fun j => piece 8 j false false k194 7 4 4 5 [0,0,0,3,1]) byCover (pieces_cover 8 (by decide) false false k194 7 4 4 5 [0,0,0,3,1]) withHints bank eachTags[[],[20,24,2,33,9,33,9],[6,6,6,2,6,1,2,1,2,2,2,6,2],[6,2,10,44,20,1,44,58],[6,6,6,6,6,2,6,24,2],[2,20,2,20,2,2,2],[1,2,20,2],[6,6,2,3,3,3,3,3,3,3,44,3,3,44,3,3,3,9,3,9,3]] except []
theorem g19848 : BadRow (row false false k194 7 4 4 5 [0,0,0,4,0]) := sparse_row false false k194 7 4 4 5 [0,0,0,4,0] (by decide)
end Blc.SelfintSingleObject.Compact45
