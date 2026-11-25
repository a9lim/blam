import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f1822 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,0,1,0] [2,0,0,1]) using bank tags [44,44,18,18,16,44,44,16,46,6,16,45,31,65,22]
certRow f1823 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,0,1,0] [2,0,1,0]) using bank tags [44,44,18,44,18,44,44,16,46,45,16,78,31,77,36]
certRow f1824 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,0,1,0] [2,1,0,0]) using bank tags [44,44,44,44,44,46,44,18,16]
certRow f1825 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [0,0,1,2]) using bank tags [1,1,1,0,0,6,6,6,6,0] except [Floor44.e4779443161966,Floor44.e4779443751790,Floor44.e4768303680366]
certRow f1826 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [0,0,2,1]) using bank tags [1,1,1,0,79,22,6,6,6,73] except [Floor44.e4779443161974]
certRow f1827 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [0,1,0,2]) using bank tags [1,47,1,1,1,0,0,6,99,32,31,6,6,6,30,6,22,74] except [Floor44.e4779443162734,Floor44.e4779443162030]
certRow f1828 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [0,1,1,1]) using bank tags []
certRow f1829 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [0,1,2,0]) using bank tags [32,1,1,6,22,30,6,37,6,22]
certRow f1830 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [0,2,0,1]) using bank tags [21,26,1,1,1,46,31,0,0,49,32,6,6,36,72,6,6,0] except [Floor44.e4779443752758,Floor44.e4779443751894,Floor44.e4768303680470]
certRow f1831 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [0,2,1,0]) using bank tags [21,1,1,46,35,49,6,36,72,35]
certRow f1832 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [1,0,0,2]) using bank tags [6,6,6,6,6,32,71,6,31,70]
certRow f1833 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [1,0,1,1]) using bank tags []
certRow f1834 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [1,0,2,0]) using bank tags [6,6,6,6,6,30,30,45,31,65]
certRow f1835 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [1,1,0,1]) using bank tags []
certRow f1836 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [1,1,1,0]) using bank tags []
certRow f1837 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [1,2,0,0]) using bank tags [18,16,16,49,32,31]
certRow f1838 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [2,0,0,1]) using bank tags [20,20,26,24,32,23,23,18,44,6]
certRow f1839 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [2,0,1,0]) using bank tags [20,20,24,20,18,23,23,18,44,45]
certRow f1840 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,1,0,0] [2,1,0,0]) using bank tags [20,20,20,23,23,44]
certRow f1841 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [1,0,0,0] [0,0,1,2]) using bank tags []
certRow f1842 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [1,0,0,0] [0,0,2,1]) using bank tags []
certRow f1843 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [1,0,0,0] [0,1,0,2]) using bank tags []
certRow f1844 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [1,0,0,0] [0,1,1,1]) using bank tags []
certRow f1845 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [1,0,0,0] [0,1,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
