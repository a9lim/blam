import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
import Blc.SelfintCompact45.Frames.Data09
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13452 on (row false false k107 6 5 3 5 [2,2,1,0,0]) using bank tags [1,1,1,1,1,2,2,1,1,1,1,1,44,10,44,10,44,10,44,10,44,10,44,10,44,10,44,10,8,8,8,8,8,8,44,36,44,36,8,8,2,2]
certRow g13454 on (row false false k107 6 5 3 5 [2,3,0,0,0]) using bank tags []
certRow g13456 on (row false false k107 6 5 3 5 [3,0,0,0,2]) using bank tags []
certRow g13458 on (row false false k107 6 5 3 5 [3,0,0,1,1]) using bank tags []
certRow g13460 on (row false false k107 6 5 3 5 [3,0,0,2,0]) using bank tags []
certRow g13462 on (row false false k107 6 5 3 5 [3,0,1,0,1]) using bank tags []
certRow g13464 on (row false false k107 6 5 3 5 [3,0,1,1,0]) using bank tags []
certRow g13466 on (row false false k107 6 5 3 5 [3,0,2,0,0]) using bank tags []
certRow g13468 on (row false false k107 6 5 3 5 [3,1,0,0,1]) using bank tags []
certRow g13470 on (row false false k107 6 5 3 5 [3,1,0,1,0]) using bank tags []
certRow g13472 on (row false false k107 6 5 3 5 [3,1,1,0,0]) using bank tags []
certRow g13474 on (row false false k107 6 5 3 5 [3,2,0,0,0]) using bank tags []
certRow g13476 on (row false false k107 6 5 3 5 [4,0,0,0,1]) using bank tags []
certRow g13478 on (row false false k107 6 5 3 5 [4,0,0,1,0]) using bank tags []
certRow g13480 on (row false false k107 6 5 3 5 [4,0,1,0,0]) using bank tags []
certRow g13482 on (row false false k107 6 5 3 5 [4,1,0,0,0]) using bank tags []
theorem g13484 : BadRow (row false false k107 6 5 3 5 [5,0,0,0,0]) := sparse_row false false k107 6 5 3 5 [5,0,0,0,0] (by decide)
theorem g13892 : BadRow (row false false k111 6 6 2 3 [0,0,6]) := sparse_row false false k111 6 6 2 3 [0,0,6] (by decide)
certRow g13894 on (row false false k111 6 6 2 3 [0,1,5]) using bank tags []
certRow g13896 on (row false false k111 6 6 2 3 [0,2,4]) using bank tags []
certRow g13898 on (row false false k111 6 6 2 3 [0,3,3]) using bank tags []
certRow g13900 on (row false false k111 6 6 2 3 [0,4,2]) using bank tags []
certRow g13902 on (row false false k111 6 6 2 3 [0,5,1]) using bank tags []
theorem g13904 : BadRow (row false false k111 6 6 2 3 [0,6,0]) := sparse_row false false k111 6 6 2 3 [0,6,0] (by decide)
end Blc.SelfintSingleObject.Compact45
