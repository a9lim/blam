import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data02
import Blc.SelfintCompact45.Frames.Data06
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g4889 on (row false true k73 5 8 2 4 [0,0,7,1]) using bank tags []
theorem g4890 : BadRow (row false false k31 5 8 2 4 [0,0,8,0]) := sparse_row false false k31 5 8 2 4 [0,0,8,0] (by decide)
theorem g4891 : BadRow (row false true k73 5 8 2 4 [0,0,8,0]) := sparse_row false true k73 5 8 2 4 [0,0,8,0] (by decide)
certRow g4892 on (row false false k31 5 8 2 4 [0,1,0,7]) using bank tags []
certRow g4893 on (row false true k73 5 8 2 4 [0,1,0,7]) using bank tags []
certRow g4894 on (row false false k31 5 8 2 4 [0,1,1,6]) using bank tags []
certRow g4895 on (row false true k73 5 8 2 4 [0,1,1,6]) using bank tags []
certRow g4896 on (row false false k31 5 8 2 4 [0,1,2,5]) using bank tags []
certRow g4897 on (row false true k73 5 8 2 4 [0,1,2,5]) using bank tags []
certRow g4898 on (row false false k31 5 8 2 4 [0,1,3,4]) using bank tags []
certRow g4899 on (row false true k73 5 8 2 4 [0,1,3,4]) using bank tags []
certRow g4900 on (row false false k31 5 8 2 4 [0,1,4,3]) using bank tags []
certRow g4901 on (row false true k73 5 8 2 4 [0,1,4,3]) using bank tags []
certRow g4902 on (row false false k31 5 8 2 4 [0,1,5,2]) using bank tags []
certRow g4903 on (row false true k73 5 8 2 4 [0,1,5,2]) using bank tags []
certRow g4904 on (row false false k31 5 8 2 4 [0,1,6,1]) using bank tags []
certRow g4905 on (row false true k73 5 8 2 4 [0,1,6,1]) using bank tags []
certRow g4906 on (row false false k31 5 8 2 4 [0,1,7,0]) using bank tags []
certRow g4907 on (row false true k73 5 8 2 4 [0,1,7,0]) using bank tags []
certRow g4908 on (row false false k31 5 8 2 4 [0,2,0,6]) using bank tags []
certRow g4909 on (row false true k73 5 8 2 4 [0,2,0,6]) using bank tags []
certRow g4910 on (row false false k31 5 8 2 4 [0,2,1,5]) using bank tags []
certRow g4911 on (row false true k73 5 8 2 4 [0,2,1,5]) using bank tags []
certRow g4912 on (row false false k31 5 8 2 4 [0,2,2,4]) using bank tags []
end Blc.SelfintSingleObject.Compact45
