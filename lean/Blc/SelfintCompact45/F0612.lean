import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f2653 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [0,2,0,2]) using bank tags []
certRow f2654 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [0,2,1,1]) using bank tags [11,37,11,20,20,20,1,1,1,1,1,1,40,24,20]
certRow f2655 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [0,2,2,0]) using bank tags []
certRow f2656 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [1,0,1,2]) using bank tags [11,11,11,11,11,47,26,26,40,19,1,185,20,20,20,20,20,120,33,33,43,19,107,20,43,40,20,20,38,21]
certRow f2657 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [1,0,2,1]) using bank tags [37,11,37,11,11,47,43,26,30,19,1,8,20,20,20,20,20,8,33,33,1,36,20,8,43,40,20,20,21,8]
certRow f2658 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [1,1,0,2]) using bank tags [11,11,11,11,11,47,47,26,26,19,19,30,52,20,20,20,0,20,0,52,20,33,33,19,19,0,74,113,40,20,20,28,20,20,21] except [Floor45.e9572509120110,Floor45.e9572509113774,Floor45.e9566066662830]
theorem f2659 : BadRow (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [1,1,1,1]) := sparse_four ⟨1,4,1,2,4,4⟩ [0,0,0,1] [1,1,1,1] (by decide)
certRow f2660 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [1,1,2,0]) using bank tags [37,11,37,47,43,26,40,52,20,20,0,52,33,33,19,74,30,57,0,73] except [Floor45.e9572509120122,Floor45.e9540296865402]
certRow f2661 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [1,2,0,1]) using bank tags [37,19,11,37,11,47,47,43,43,19,40,1,93,8,20,20,20,21,20,21,8,33,33,36,36,20,28,8,30,20,20,20,21,28,8]
certRow f2662 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [1,2,1,0]) using bank tags [37,19,11,47,43,43,19,20,20,20,20,20,33,33,36,0,30,60,21,28] except [Floor45.e9566067035962]
certRow f2663 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [2,0,0,2]) using bank tags []
certRow f2664 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [2,0,1,1]) using bank tags [36,36,18,18,18,40,20,20,20,28,40,1,20,20,20,20,20,48,20,49,24,23,20,20,20]
certRow f2665 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [2,0,2,0]) using bank tags []
certRow f2666 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [2,1,0,1]) using bank tags [36,36,18,18,18,23,27,58,20,58,52,52,20,20,89,20,59,20,89,84,27,74,20,59,21]
certRow f2667 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [2,1,1,0]) using bank tags [36,36,18,23,23,58,52,52,20,58,20,59,27,58,20]
certRow f2668 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,0,1] [2,2,0,0]) using bank tags []
certRow f2669 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,1,0] [0,0,2,2]) using bank tags []
certRow f2670 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,1,0] [0,1,1,2]) using bank tags [1,1,1,1,1,1,20,20,20]
certRow f2671 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,1,0] [0,1,2,1]) using bank tags [1,1,1,1,1,1,20,20,20]
certRow f2672 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,1,0] [0,2,0,2]) using bank tags []
certRow f2673 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,1,0] [0,2,1,1]) using bank tags [20,20,20,1,1,1,20,20,20]
certRow f2674 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,1,0] [0,2,2,0]) using bank tags []
certRow f2675 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,0,1,0] [1,0,1,2]) using bank tags [19,1,1,30,1,20,19,1,21,21,46,24,25,25,56,24,85,86]
end Blc.SelfintSingleObject.Compact45
