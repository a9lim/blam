import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g25054 on (row false false k298 5 5 3 5 [0,0,2,3,0]) using bank tags [12,11,12,1,12,1,12,11,12,11,12,1,12,11,12,1,12,1,12,11,12,11,12,1,12,19,12,19,44,20,44,20,44,20,44,20]
certRow g25056 on (row false false k298 5 5 3 5 [0,0,3,0,2]) using bank tags [12,11,12,37,12,1,12,1,12,1,12,11,12,37,12,11,12,37,12,11,12,37,12,1,12,1,12,1,12,11,12,37,12,11,12,37,12,19,12,30,12,19,12,30,44,20,44,20,44,20,44,20,44,20,44,20,44,20,44,20]
certRow g25058 on (row false false k298 5 5 3 5 [0,0,3,1,1]) using bank tags [12,1,12,1,12,1,12,1,12,1,12,1,12,10,12,10,12,10,44,1,44,103]
certRow g25060 on (row false false k298 5 5 3 5 [0,0,3,2,0]) using bank tags [12,11,12,1,12,1,12,11,12,11,12,1,12,11,12,1,12,1,12,11,12,11,12,1,12,19,12,19,44,20,44,20,44,20,44,20]
certRow g25062 on (row false false k298 5 5 3 5 [0,0,4,0,1]) using bank tags []
certRow g25064 on (row false false k298 5 5 3 5 [0,0,4,1,0]) using bank tags []
theorem g25066 : BadRow (row false false k298 5 5 3 5 [0,0,5,0,0]) := sparse_row false false k298 5 5 3 5 [0,0,5,0,0] (by decide)
certRow g25068 on (row false false k298 5 5 3 5 [0,1,0,0,4]) using bank tags []
certRow g25070 on (row false false k298 5 5 3 5 [0,1,0,1,3]) using bank tags [12,11,12,11,12,1,12,1,12,11,12,11,12,1,12,1,12,10,12,10,12,10,12,10,12,10,12,37,12,37,12,37,12,37,44,1,44,1,44,1,44,138,44,21,44,21,44,20,44,20,44,21,44,21,44,20,44,20]
certRow g25072 on (row false false k298 5 5 3 5 [0,1,0,2,2]) using bank tags [12,1,12,1,44,1,44,1,44,1,44,1,12,1,12,1,12,1,44,1,44,19,12,1,44,1,44,1,44,1,44,1,20,20,20,20,21,20,20,20,20,20]
certRow g25074 on (row false false k298 5 5 3 5 [0,1,0,3,1]) using bank tags [12,11,12,11,12,1,12,1,12,1,12,1,12,11,12,11,12,1,12,1,12,1,12,1,12,1,12,1,12,10,12,10,12,10,12,10,12,10,12,19,12,37,12,19,12,37,44,1,44,1,44,1,44,138,44,1,44,21,44,1,44,131,44,28,44,21,8,8,8,8,44,28,44,21,8,8,8,8]
certRow g25076 on (row false false k298 5 5 3 5 [0,1,0,4,0]) using bank tags []
certRow g25078 on (row false false k298 5 5 3 5 [0,1,1,0,3]) using bank tags [12,11,12,11,12,1,12,1,12,11,12,11,12,1,12,1,12,1,12,1,12,1,12,10,12,10,12,10,12,10,12,10,12,37,12,37,12,37,12,37,44,1,44,1,44,1,44,1,44,1,44,20,44,1,44,139,44,20,44,20,44,20,44,20,44,20,44,20,44,20,44,20]
end Blc.SelfintSingleObject.Compact45
