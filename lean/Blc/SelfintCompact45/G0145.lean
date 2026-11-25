import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13352 on (row false false k107 6 5 3 5 [1,0,0,3,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,8,8,44,1,44,9]
certRow g13354 on (row false false k107 6 5 3 5 [1,0,0,4,0]) using bank tags []
certRow g13356 on (row false false k107 6 5 3 5 [1,0,1,0,3]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,1,44,1,44,1,44,9,44,9]
certRow g13358 on (row false false k107 6 5 3 5 [1,0,1,1,2]) using bank tags [2,2,2,2,37,1,1]
certRow g13360 on (row false false k107 6 5 3 5 [1,0,1,2,1]) using bank tags [2,2,1,37,1,2,9]
certRow g13362 on (row false false k107 6 5 3 5 [1,0,1,3,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,1,44,1,44,9,44,21]
certRow g13364 on (row false false k107 6 5 3 5 [1,0,2,0,2]) using bank tags [2,44,12,2,2,44,12,44,1,2,44,12,44,1,44,12,2,2,2,44,1,2,44,12,44,1,2,44,12,44,12,44,1,44,1,2,44,1,8,8,44,1]
certRow g13366 on (row false false k107 6 5 3 5 [1,0,2,1,1]) using bank tags [1,1,1,2,9]
certRow g13368 on (row false false k107 6 5 3 5 [1,0,2,2,0]) using bank tags [2,44,11,44,1,2,44,12,44,1,44,1,2,44,11,44,1,44,11,44,1,2,44,12,2,44,12,2,44,12,44,1,44,1,44,1,44,1,44,1,8,8]
certRow g13370 on (row false false k107 6 5 3 5 [1,0,3,0,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,8,8,44,1,44,1,44,9,44,9]
certRow g13372 on (row false false k107 6 5 3 5 [1,0,3,1,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,1,44,9,44,20]
certRow g13374 on (row false false k107 6 5 3 5 [1,0,4,0,0]) using bank tags []
certRow g13376 on (row false false k107 6 5 3 5 [1,1,0,0,3]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,1,44,1]
certRow g13378 on (row false false k107 6 5 3 5 [1,1,0,1,2]) using bank tags [2,2,2,2,2,2,2,19,1,36,1,36,2,44,1,9,10,8,8]
certRow g13380 on (row false false k107 6 5 3 5 [1,1,0,2,1]) using bank tags [2,2,1,1,36,36,36,2,9,10,8,8,2,9,2,9]
certRow g13382 on (row false false k107 6 5 3 5 [1,1,0,3,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,1,44,1,44,20,44,21]
certRow g13384 on (row false false k107 6 5 3 5 [1,1,1,0,2]) using bank tags [2,2,2,2,2,18,18,8,23,8,2,2,44,1,9,10,9,10,8,8,8,8]
theorem g13386 : BadRow (row false false k107 6 5 3 5 [1,1,1,1,1]) := sparse_row false false k107 6 5 3 5 [1,1,1,1,1] (by decide)
certRow g13388 on (row false false k107 6 5 3 5 [1,1,1,2,0]) using bank tags [18,18,8,2,9,10,8,8]
end Blc.SelfintSingleObject.Compact45
