import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f2429 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,0,0,2,1]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,25,25,25,25,20,33,33,33,33,33,19,1,19,21,36,36,20,20,21,8,8,8,20,20]
certRow f2430 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,0,1,0,2]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,25,25,25,25,25,25,25,20,20,33,33,33,33,33,19,40,36,20,36,36,28,23,20,20,28,28,20,21,20,20,20,0] except [Floor45.e9570803846062]
theorem f2431 : BadRow (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,0,1,1,1]) := sparse_four ⟨1,3,1,2,5,4⟩ [0,0,1] [1,0,1,1,1] (by decide)
certRow f2432 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,0,1,2,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,25,25,25,25,20,20,33,33,33,33,33,19,19,36,21,33,33,40,36,0,20,93,0,20,20,0] except [Floor45.e9570799154618,Floor45.e9570805132730,Floor45.e9570803789242]
certRow f2433 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,0,2,0,1]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,25,25,25,25,25,25,25,21,20,33,33,33,33,33,19,1,36,20,36,36,20,20,20,28,8,8,8,8,20,20,21,21]
certRow f2434 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,0,2,1,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,25,25,25,25,21,0,33,33,33,33,33,19,19,36,28,33,33,40,36,108,28,8,8,20,21,8] except [Floor45.e9673883004378]
certRow f2435 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,1,0,0,2]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,25,25,25,25,25,33,33,33,33,33,36,36,36,20,36,36,23,23,20,24,24,20,20,20]
theorem f2436 : BadRow (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,1,0,1,1]) := sparse_four ⟨1,3,1,2,5,4⟩ [0,0,1] [1,1,0,1,1] (by decide)
certRow f2437 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,1,0,2,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,25,25,25,25,25,20,20,33,33,33,33,33,36,36,36,0,33,33,36,36,27,24,24,21,20,28,74,38] except [Floor45.e9570799180410]
theorem f2438 : BadRow (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,1,1,0,1]) := sparse_four ⟨1,3,1,2,5,4⟩ [0,0,1] [1,1,1,0,1] (by decide)
theorem f2439 : BadRow (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,1,1,1,0]) := sparse_four ⟨1,3,1,2,5,4⟩ [0,0,1] [1,1,1,1,0] (by decide)
certRow f2440 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,1,2,0,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,25,25,25,20,33,33,33,33,33,36,36,33,33,36,24,24,20,74]
certRow f2441 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,2,0,0,1]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,25,25,25,25,25,33,33,33,33,33,36,36,36,20,36,36,20,20,20,118,8,8,8,8]
certRow f2442 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,2,0,1,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,25,25,25,25,25,21,0,33,33,33,33,33,36,36,36,20,33,33,36,36,51,28,28,8,21,8,0,8] except [Floor45.e9673883004762,Floor45.e9570803793114]
end Blc.SelfintSingleObject.Compact45
