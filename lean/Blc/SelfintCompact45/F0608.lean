import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f2443 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,2,1,0,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,25,25,25,20,33,33,33,33,33,36,36,33,33,36,20,28,28,0] except [Floor45.e9570803793130]
certRow f2444 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [2,0,0,0,2]) using bank tags []
certRow f2445 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [2,0,0,1,1]) using bank tags [9,9,9,9,9,9,9,9,9,9,9,9,9,9,37,1,37,1,1,20,20,30,20,20,20,20,20,20]
certRow f2446 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [2,0,0,2,0]) using bank tags []
certRow f2447 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [2,0,1,0,1]) using bank tags [9,9,9,9,9,9,9,9,9,9,9,9,9,9,37,19,1,1,1,30,20,20,20,20,20,20,20,20]
certRow f2448 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [2,0,1,1,0]) using bank tags [9,9,9,9,9,9,9,9,9,9,9,9,9,9,37,37,1,37,1,30,20,20,20,19,20,39,20,20]
certRow f2449 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [2,0,2,0,0]) using bank tags []
certRow f2450 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [2,1,0,0,1]) using bank tags [9,9,9,9,9,9,9,9,9,9,9,9,9,9,36,36,18,18,1,23,23,20,20,20,20,58,20,58]
certRow f2451 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [2,1,0,1,0]) using bank tags [9,9,9,9,9,9,9,9,9,9,9,9,9,9,36,36,18,36,18,23,23,20,21,18,23,27,108,108]
certRow f2452 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [2,1,1,0,0]) using bank tags [9,9,9,9,9,9,9,9,9,9,36,36,36,36,36,23,23,18,18,27]
certRow f2453 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [2,2,0,0,0]) using bank tags []
certRow f2454 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [0,0,0,2,2]) using bank tags []
certRow f2455 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [0,0,1,1,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,20,20,20]
certRow f2456 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [0,0,1,2,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,20,20,20,20]
certRow f2457 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [0,0,2,0,2]) using bank tags []
certRow f2458 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [0,0,2,1,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,20,20,20,20]
certRow f2459 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [0,0,2,2,0]) using bank tags []
certRow f2460 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [0,1,0,1,2]) using bank tags [37,1,1,40,56,1,1,1,1,1,1,1,1,1,19,1,1,40,39,1,0,20,20,20,20,20,97] except [Floor45.e9558992554862]
certRow f2461 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [0,1,0,2,1]) using bank tags [37,1,1,1,1,1,1,1,1,1,1,1,1,1,40,1,1,1,30,1,0,20,20,20,20,20,20,20,97] except [Floor45.e9558992554870]
certRow f2462 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [0,1,1,0,2]) using bank tags [37,40,1,40,56,1,1,1,1,1,1,1,1,1,19,30,1,40,1,1,1,0,0,20,20,97,20,97,97,97] except [Floor45.e9558992555630,Floor45.e9558992554926]
theorem f2463 : BadRow (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [0,1,1,1,1]) := sparse_four ⟨1,3,1,2,5,4⟩ [0,1,0] [0,1,1,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
