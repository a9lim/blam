import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
import Blc.SelfintCompact45.Frames.Data14
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g16875 on (row false true k169 6 7 3 4 [0,0,3,4]) using bank tags []
certRow g16876 on (row false false k124 6 7 3 4 [0,0,4,3]) using bank tags []
certRow g16877 on (row false true k169 6 7 3 4 [0,0,4,3]) using bank tags []
certRow g16878 on (row false false k124 6 7 3 4 [0,0,5,2]) using bank tags []
certRow g16879 on (row false true k169 6 7 3 4 [0,0,5,2]) using bank tags []
certRow g16880 on (row false false k124 6 7 3 4 [0,0,6,1]) using bank tags []
certRow g16881 on (row false true k169 6 7 3 4 [0,0,6,1]) using bank tags []
theorem g16882 : BadRow (row false false k124 6 7 3 4 [0,0,7,0]) := sparse_row false false k124 6 7 3 4 [0,0,7,0] (by decide)
theorem g16883 : BadRow (row false true k169 6 7 3 4 [0,0,7,0]) := sparse_row false true k169 6 7 3 4 [0,0,7,0] (by decide)
certRow g16884 on (row false false k124 6 7 3 4 [0,1,0,6]) using bank tags []
certRow g16885 on (row false true k169 6 7 3 4 [0,1,0,6]) using bank tags []
certRow g16886 on (row false false k124 6 7 3 4 [0,1,1,5]) using bank tags []
certRow g16887 on (row false true k169 6 7 3 4 [0,1,1,5]) using bank tags []
certRow g16888 on (row false false k124 6 7 3 4 [0,1,2,4]) using bank tags []
certRow g16889 on (row false true k169 6 7 3 4 [0,1,2,4]) using bank tags []
certRow g16890 on (row false false k124 6 7 3 4 [0,1,3,3]) using bank tags [20,44,44,12,44,20,44,2,1,44,44,12,44,1,44,2,1,44,44,12,44,1,44,2,1,44,44,12,44,1,44,2]
certRow g16891 on (row false true k169 6 7 3 4 [0,1,3,3]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g16892 on (row false false k124 6 7 3 4 [0,1,4,2]) using bank tags []
certRow g16893 on (row false true k169 6 7 3 4 [0,1,4,2]) using bank tags []
certRow g16894 on (row false false k124 6 7 3 4 [0,1,5,1]) using bank tags []
certRow g16895 on (row false true k169 6 7 3 4 [0,1,5,1]) using bank tags []
certRow g16896 on (row false false k124 6 7 3 4 [0,1,6,0]) using bank tags []
certRow g16897 on (row false true k169 6 7 3 4 [0,1,6,0]) using bank tags []
certRow g16898 on (row false false k124 6 7 3 4 [0,2,0,5]) using bank tags []
end Blc.SelfintSingleObject.Compact45
