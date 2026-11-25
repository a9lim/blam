import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14912 on (row false false k116 6 6 3 5 [0,4,0,2,0]) using bank tags []
certRow g14914 on (row false false k116 6 6 3 5 [0,4,1,0,1]) using bank tags []
certRow g14916 on (row false false k116 6 6 3 5 [0,4,1,1,0]) using bank tags []
certRow g14918 on (row false false k116 6 6 3 5 [0,4,2,0,0]) using bank tags []
certRow g14920 on (row false false k116 6 6 3 5 [0,5,0,0,1]) using bank tags []
certRow g14922 on (row false false k116 6 6 3 5 [0,5,0,1,0]) using bank tags []
certRow g14924 on (row false false k116 6 6 3 5 [0,5,1,0,0]) using bank tags []
theorem g14926 : BadRow (row false false k116 6 6 3 5 [0,6,0,0,0]) := sparse_row false false k116 6 6 3 5 [0,6,0,0,0] (by decide)
certRow g14928 on (row false false k116 6 6 3 5 [1,0,0,0,5]) using bank tags []
certRow g14930 on (row false false k116 6 6 3 5 [1,0,0,1,4]) using bank tags []
certRow g14932 on (row false false k116 6 6 3 5 [1,0,0,2,3]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3]
certRow g14934 on (row false false k116 6 6 3 5 [1,0,0,3,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,1,1,3,3]
certRow g14936 on (row false false k116 6 6 3 5 [1,0,0,4,1]) using bank tags []
certRow g14938 on (row false false k116 6 6 3 5 [1,0,0,5,0]) using bank tags []
certRow g14940 on (row false false k116 6 6 3 5 [1,0,1,0,4]) using bank tags []
certRow g14942 on (row false false k116 6 6 3 5 [1,0,1,1,3]) using bank tags [2,2,2,2,2,2,2,2,2,2]
certRow g14944 on (row false false k116 6 6 3 5 [1,0,1,2,2]) using bank tags [2,2,12,2,2,1,2,2,2]
certRow g14946 on (row false false k116 6 6 3 5 [1,0,1,3,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g14948 on (row false false k116 6 6 3 5 [1,0,1,4,0]) using bank tags []
certRow g14950 on (row false false k116 6 6 3 5 [1,0,2,0,3]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,12,1,2,2,12,1,1,3,3,3,3]
certRow g14952 on (row false false k116 6 6 3 5 [1,0,2,1,2]) using bank tags [2,2,2,2,2,2,2]
certRow g14954 on (row false false k116 6 6 3 5 [1,0,2,2,1]) using bank tags [2,2,2]
certRow g14956 on (row false false k116 6 6 3 5 [1,0,2,3,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,12,1,2,2,12,1,1,2,3,3]
certRow g14958 on (row false false k116 6 6 3 5 [1,0,3,0,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,1,1,1,1,3,3,3,3]
end Blc.SelfintSingleObject.Compact45
