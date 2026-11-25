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
certRow g23096 on (row false false k286 5 4 2 5 [0,0,2,0,2]) using bank tags []
certRow g23097 on (row false true k310 5 4 2 5 [0,0,2,0,2]) using bank tags []
certRow g23098 on (row false false k286 5 4 2 5 [0,0,2,1,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,44,44,1,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44]
tagSlices g23099 on (row false true k310 5 4 2 5 [0,0,2,1,1]) byParts (fun j => piece 12 j false true k310 5 4 2 5 [0,0,2,1,1]) byCover (pieces_cover 12 (by decide) false true k310 5 4 2 5 [0,0,2,1,1]) withHints bank eachTags[[],[2,2,2,11,14,1,2,2,2,20,14,1,2,2,2,20,14,1],[],[2,2,2,11,14,1,2,2,2,11,14,1],[2,2,2,20,14,1,2,2,2,20,14,1,2,2,2,20,14,1,2,2,2,20,14,1,2,2,2,28,14,1],[],[2,2,2,37,14,1,2,2,2,20,14,1,2,2,2,20,14,1],[20,21,21,1,20,20,20,1,20,1,20,1,29,9,1,1,1,1,32,2,1,1,1,1],[],[],[31,1,1,1,20,1,32,1,1,1,1,1,20,1,1,1,20,1,32,1,1,1,1,1,29,1,1,1,20,1,32,1,1,1,1,1],[]] except []
certRow g23100 on (row false false k286 5 4 2 5 [0,0,2,2,0]) using bank tags []
certRow g23101 on (row false true k310 5 4 2 5 [0,0,2,2,0]) using bank tags []
certRow g23102 on (row false false k286 5 4 2 5 [0,0,3,0,1]) using bank tags []
certRow g23103 on (row false true k310 5 4 2 5 [0,0,3,0,1]) using bank tags []
certRow g23104 on (row false false k286 5 4 2 5 [0,0,3,1,0]) using bank tags []
certRow g23105 on (row false true k310 5 4 2 5 [0,0,3,1,0]) using bank tags []
theorem g23106 : BadRow (row false false k286 5 4 2 5 [0,0,4,0,0]) := sparse_row false false k286 5 4 2 5 [0,0,4,0,0] (by decide)
theorem g23107 : BadRow (row false true k310 5 4 2 5 [0,0,4,0,0]) := sparse_row false true k310 5 4 2 5 [0,0,4,0,0] (by decide)
certRow g23108 on (row false false k286 5 4 2 5 [0,1,0,0,3]) using bank tags []
certRow g23109 on (row false true k310 5 4 2 5 [0,1,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
