import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f2553 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,1,0,2,0]) using bank tags [11,12,11,12,12,11,12,11,11,12,12,12,12,12,11,12,11,12,12,12,12,20,20,20,20,20,0,0] except [Floor45.e9636575984058,Floor45.e9636575981242]
theorem f2554 : BadRow (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,1,1,0,1]) := sparse_four ⟨1,3,2,2,5,3⟩ [0,1,1] [0,1,1,0,1] (by decide)
theorem f2555 : BadRow (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,1,1,1,0]) := sparse_four ⟨1,3,2,2,5,3⟩ [0,1,1] [0,1,1,1,0] (by decide)
certRow f2556 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,1,2,0,0]) using bank tags [11,11,11,11,11,12,11,11,12,11,11,11,11,20,20,20,0] except [Floor45.e9636575984106]
certRow f2557 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,2,0,0,1]) using bank tags [11,11,11,11,11,12,12,11,12,11,11,12,11,12,11,11,11,11,11,20,20,20,20,20]
certRow f2558 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,2,0,1,0]) using bank tags [11,11,11,11,11,12,12,11,12,11,11,12,11,12,11,11,11,11,11,11,11,20,20,20,20,20,0,0] except [Floor45.e9636575984858,Floor45.e9636575981402]
certRow f2559 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,2,1,0,0]) using bank tags [11,11,11,12,12,12,11,12,12,11,11,11,11,20,20,20,0] except [Floor45.e9636575984874]
certRow f2560 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [1,0,0,0,2]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12]
theorem f2561 : BadRow (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [1,0,0,1,1]) := sparse_four ⟨1,3,2,2,5,3⟩ [0,1,1] [1,0,0,1,1] (by decide)
certRow f2562 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [1,0,0,2,0]) using bank tags [11,12,11,12,12,11,12,11,11,12,12,12,12,12]
theorem f2563 : BadRow (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [1,0,1,0,1]) := sparse_four ⟨1,3,2,2,5,3⟩ [0,1,1] [1,0,1,0,1] (by decide)
theorem f2564 : BadRow (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [1,0,1,1,0]) := sparse_four ⟨1,3,2,2,5,3⟩ [0,1,1] [1,0,1,1,0] (by decide)
certRow f2565 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [1,0,2,0,0]) using bank tags [11,11,12,11,12,11,11,12,12,11,12,11,12,12]
theorem f2566 : BadRow (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [1,1,0,0,1]) := sparse_four ⟨1,3,2,2,5,3⟩ [0,1,1] [1,1,0,0,1] (by decide)
theorem f2567 : BadRow (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [1,1,0,1,0]) := sparse_four ⟨1,3,2,2,5,3⟩ [0,1,1] [1,1,0,1,0] (by decide)
theorem f2568 : BadRow (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [1,1,1,0,0]) := sparse_four ⟨1,3,2,2,5,3⟩ [0,1,1] [1,1,1,0,0] (by decide)
certRow f2569 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [1,2,0,0,0]) using bank tags [11,11,11,11,11,11,11,11,11]
certRow f2570 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [2,0,0,0,1]) using bank tags [10,10,10,10,10,10,10,10,10,10,10,10,10,10]
certRow f2571 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [2,0,0,1,0]) using bank tags [10,10,10,10,10,10,10,10,10,10,10,10,10,10]
certRow f2572 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [2,0,1,0,0]) using bank tags [10,10,10,10,10,10,10,10,10,10,10,10,10,10]
certRow f2573 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [2,1,0,0,0]) using bank tags [10,10,10,10,10,10,10,10,10]
certRow f2650 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [0,0,2,2]) using bank tags []
certRow f2651 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [0,1,1,2]) using bank tags [11,11,11,1,1,1,1,1,1,1,1,1,40,24,20]
certRow f2652 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [0,1,2,1]) using bank tags [37,11,11,1,1,1,1,1,1,1,1,1,40,24,20]
end Blc.SelfintSingleObject.Compact45
