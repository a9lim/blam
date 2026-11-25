import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f2759 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [0,0,2,1]) using bank tags [1,1,1,1,100]
certRow f2760 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [0,1,0,2]) using bank tags [37,40,1,1,1,19,30,21,101]
theorem f2761 : BadRow (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [0,1,1,1]) := sparse_four ⟨1,4,2,2,4,3⟩ [0,1,1,0] [0,1,1,1] (by decide)
certRow f2762 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [0,1,2,0]) using bank tags [19,1,1,30,21]
certRow f2763 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [0,2,0,1]) using bank tags [37,30,1,1,1,40,1,20,0] except [Floor45.e9555984255958]
certRow f2764 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [0,2,1,0]) using bank tags [37,1,1,40,28]
certRow f2765 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [1,0,0,2]) using bank tags [37,37,19,23,20]
theorem f2766 : BadRow (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [1,0,1,1]) := sparse_four ⟨1,4,2,2,4,3⟩ [0,1,1,0] [1,0,1,1] (by decide)
certRow f2767 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [1,0,2,0]) using bank tags [19,37,23,19,27]
theorem f2768 : BadRow (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [1,1,0,1]) := sparse_four ⟨1,4,2,2,4,3⟩ [0,1,1,0] [1,1,0,1] (by decide)
theorem f2769 : BadRow (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [1,1,1,0]) := sparse_four ⟨1,4,2,2,4,3⟩ [0,1,1,0] [1,1,1,0] (by decide)
certRow f2770 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [1,2,0,0]) using bank tags [19,19,40]
certRow f2771 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [2,0,0,1]) using bank tags [25,25,27,27,20]
certRow f2772 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [2,0,1,0]) using bank tags [25,25,27,36,74]
certRow f2773 on (Grammar43.fourRow ⟨1,4,2,2,4,3⟩ [0,1,1,0] [2,1,0,0]) using bank tags [25,25,36]
certRow f2826 on (Grammar43.fourRow ⟨1,2,1,3,4,10⟩ [0,1] [1,3,3,3]) using bank tags []
certRow f2827 on (Grammar43.fourRow ⟨1,2,1,3,4,10⟩ [0,1] [2,2,3,3]) using bank tags []
certRow f2828 on (Grammar43.fourRow ⟨1,2,1,3,4,10⟩ [0,1] [2,3,2,3]) using bank tags []
certRow f2829 on (Grammar43.fourRow ⟨1,2,1,3,4,10⟩ [0,1] [2,3,3,2]) using bank tags []
certRow f2830 on (Grammar43.fourRow ⟨1,2,1,3,4,10⟩ [0,1] [3,1,3,3]) using bank tags []
certRow f2831 on (Grammar43.fourRow ⟨1,2,1,3,4,10⟩ [0,1] [3,2,2,3]) using bank tags []
certRow f2832 on (Grammar43.fourRow ⟨1,2,1,3,4,10⟩ [0,1] [3,2,3,2]) using bank tags []
certRow f2833 on (Grammar43.fourRow ⟨1,2,1,3,4,10⟩ [0,1] [3,3,1,3]) using bank tags []
certRow f2834 on (Grammar43.fourRow ⟨1,2,1,3,4,10⟩ [0,1] [3,3,2,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
