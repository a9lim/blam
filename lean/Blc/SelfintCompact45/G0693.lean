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
tagSlices g23137 on (row false true k310 5 4 2 5 [0,2,1,1,0]) byParts (fun j => piece 12 j false true k310 5 4 2 5 [0,2,1,1,0]) byCover (pieces_cover 12 (by decide) false true k310 5 4 2 5 [0,2,1,1,0]) withHints bank eachTags[[],[2,2,2,11,14,1,2,2,2,11,14,1,2,2,2,1,14,1],[2,2,2,11,14,1,2,2,2,11,14,1],[2,2,2,20,14,1,2,2,2,20,14,1],[2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[],[2,2,2,19,14,1,2,2,2,19,14,1,2,2,2,20,14,1],[],[],[],[20,1,20,28,1,1,1,1,1,1,1,1,20,1,8,8,1,1,1,1,1,1,1,1,20,1,8,8,1,1,36,1,1,1,1,1],[]] except []
certRow g23138 on (row false false k286 5 4 2 5 [0,2,2,0,0]) using bank tags []
certRow g23139 on (row false true k310 5 4 2 5 [0,2,2,0,0]) using bank tags []
certRow g23140 on (row false false k286 5 4 2 5 [0,3,0,0,1]) using bank tags []
certRow g23141 on (row false true k310 5 4 2 5 [0,3,0,0,1]) using bank tags []
certRow g23142 on (row false false k286 5 4 2 5 [0,3,0,1,0]) using bank tags []
certRow g23143 on (row false true k310 5 4 2 5 [0,3,0,1,0]) using bank tags []
certRow g23144 on (row false false k286 5 4 2 5 [0,3,1,0,0]) using bank tags []
certRow g23145 on (row false true k310 5 4 2 5 [0,3,1,0,0]) using bank tags []
theorem g23146 : BadRow (row false false k286 5 4 2 5 [0,4,0,0,0]) := sparse_row false false k286 5 4 2 5 [0,4,0,0,0] (by decide)
theorem g23147 : BadRow (row false true k310 5 4 2 5 [0,4,0,0,0]) := sparse_row false true k310 5 4 2 5 [0,4,0,0,0] (by decide)
certRow g23148 on (row false false k286 5 4 2 5 [1,0,0,0,3]) using bank tags []
certRow g23149 on (row false true k310 5 4 2 5 [1,0,0,0,3]) using bank tags []
certRow g23150 on (row false false k286 5 4 2 5 [1,0,0,1,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,44,44,20,44,44,44,20,44,44,44,44,44,20,44,44,44,20,44,44,44,44,8,8,44,44,8,8,44,44,44,44,44,1,44,44,44,20,44,44,44,44,44,1,44,44,44,1,44,44]
end Blc.SelfintSingleObject.Compact45
