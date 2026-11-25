import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data02
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g2888 on (row false false k24 5 7 2 3 [3,3,1]) using bank tags []
certRow g2890 on (row false false k24 5 7 2 3 [3,4,0]) using bank tags []
certRow g2892 on (row false false k24 5 7 2 3 [4,0,3]) using bank tags []
certRow g2894 on (row false false k24 5 7 2 3 [4,1,2]) using bank tags []
certRow g2896 on (row false false k24 5 7 2 3 [4,2,1]) using bank tags []
certRow g2898 on (row false false k24 5 7 2 3 [4,3,0]) using bank tags []
certRow g2900 on (row false false k24 5 7 2 3 [5,0,2]) using bank tags []
certRow g2902 on (row false false k24 5 7 2 3 [5,1,1]) using bank tags []
certRow g2904 on (row false false k24 5 7 2 3 [5,2,0]) using bank tags []
certRow g2906 on (row false false k24 5 7 2 3 [6,0,1]) using bank tags []
certRow g2908 on (row false false k24 5 7 2 3 [6,1,0]) using bank tags []
theorem g2910 : BadRow (row false false k24 5 7 2 3 [7,0,0]) := sparse_row false false k24 5 7 2 3 [7,0,0] (by decide)
theorem g2912 : BadRow (row false false k25 5 7 2 4 [0,0,0,7]) := sparse_row false false k25 5 7 2 4 [0,0,0,7] (by decide)
certRow g2914 on (row false false k25 5 7 2 4 [0,0,1,6]) using bank tags []
certRow g2916 on (row false false k25 5 7 2 4 [0,0,2,5]) using bank tags []
certRow g2918 on (row false false k25 5 7 2 4 [0,0,3,4]) using bank tags []
certRow g2920 on (row false false k25 5 7 2 4 [0,0,4,3]) using bank tags []
certRow g2922 on (row false false k25 5 7 2 4 [0,0,5,2]) using bank tags []
certRow g2924 on (row false false k25 5 7 2 4 [0,0,6,1]) using bank tags []
theorem g2926 : BadRow (row false false k25 5 7 2 4 [0,0,7,0]) := sparse_row false false k25 5 7 2 4 [0,0,7,0] (by decide)
certRow g2928 on (row false false k25 5 7 2 4 [0,1,0,6]) using bank tags []
certRow g2930 on (row false false k25 5 7 2 4 [0,1,1,5]) using bank tags []
certRow g2932 on (row false false k25 5 7 2 4 [0,1,2,4]) using bank tags []
certRow g2934 on (row false false k25 5 7 2 4 [0,1,3,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
