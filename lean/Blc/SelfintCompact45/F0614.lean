import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f2700 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,1,0,0] [1,2,1,0]) using bank tags [20,20,60,33,43,40,20,20]
certRow f2701 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,1,0,0] [2,0,0,2]) using bank tags []
certRow f2702 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,1,0,0] [2,0,1,1]) using bank tags [33,33,1,18,107,25,25,23,24,20]
certRow f2703 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,1,0,0] [2,0,2,0]) using bank tags []
certRow f2704 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,1,0,0] [2,1,0,1]) using bank tags [33,33,19,18,20,25,25,23,24,20]
certRow f2705 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,1,0,0] [2,1,1,0]) using bank tags [33,33,18,25,25,23]
certRow f2706 on (Grammar43.fourRow ⟨1,4,1,2,4,4⟩ [0,1,0,0] [2,2,0,0]) using bank tags []
certRow f2726 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [0,0,1,2]) using bank tags [11,11,11,11,0,1,1,1,25,0] except [Floor45.e9673256995694,Floor45.e9570177780590]
certRow f2727 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [0,0,2,1]) using bank tags [11,11,11,11,121,1,1,1,25,90]
certRow f2728 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [0,1,0,2]) using bank tags [11,11,11,11,11,11,11,20,189,37,30,1,1,1,25,25,21,91]
certRow f2729 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [0,1,1,1]) using bank tags []
certRow f2730 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [0,1,2,0]) using bank tags [19,19,11,19,28,37,1,1,25,21]
certRow f2731 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [0,2,0,1]) using bank tags [19,40,11,19,11,19,19,0,0,37,19,1,1,1,25,25,0,0] except [Floor45.e9673256996662,Floor45.e9673256995798,Floor45.e9570177781558,Floor45.e9570177780694]
certRow f2732 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [0,2,1,0]) using bank tags [19,11,11,19,28,19,1,1,25,21]
certRow f2733 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [1,0,0,2]) using bank tags [11,11,11,11,11,25,25,20,27,20]
certRow f2734 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [1,0,1,1]) using bank tags []
certRow f2735 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [1,0,2,0]) using bank tags [19,11,19,11,11,25,25,21,36,74]
certRow f2736 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [1,1,0,1]) using bank tags []
certRow f2737 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [1,1,1,0]) using bank tags []
certRow f2738 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [1,2,0,0]) using bank tags [19,40,19,25,25,36]
certRow f2739 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [2,0,0,1]) using bank tags [18,18,23,23,23,37,37,19,19,20]
certRow f2740 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [2,0,1,0]) using bank tags [18,18,23,23,23,19,37,40,19,40]
certRow f2741 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,0,1,1] [2,1,0,0]) using bank tags [18,18,23,18,18,23]
certRow f2758 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [0,0,1,2]) using bank tags [1,1,1,1,0] except [Floor45.e9555984255854]
end Blc.SelfintSingleObject.Compact45
