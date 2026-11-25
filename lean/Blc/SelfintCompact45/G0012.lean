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
certRow g4961 on (row false true k73 5 8 2 4 [0,7,1,0]) using bank tags []
theorem g4962 : BadRow (row false false k31 5 8 2 4 [0,8,0,0]) := sparse_row false false k31 5 8 2 4 [0,8,0,0] (by decide)
theorem g4963 : BadRow (row false true k73 5 8 2 4 [0,8,0,0]) := sparse_row false true k73 5 8 2 4 [0,8,0,0] (by decide)
certRow g4964 on (row false false k31 5 8 2 4 [1,0,0,7]) using bank tags []
certRow g4965 on (row false true k73 5 8 2 4 [1,0,0,7]) using bank tags []
certRow g4966 on (row false false k31 5 8 2 4 [1,0,1,6]) using bank tags []
certRow g4967 on (row false true k73 5 8 2 4 [1,0,1,6]) using bank tags []
certRow g4968 on (row false false k31 5 8 2 4 [1,0,2,5]) using bank tags []
certRow g4969 on (row false true k73 5 8 2 4 [1,0,2,5]) using bank tags []
certRow g4970 on (row false false k31 5 8 2 4 [1,0,3,4]) using bank tags []
certRow g4971 on (row false true k73 5 8 2 4 [1,0,3,4]) using bank tags []
certRow g4972 on (row false false k31 5 8 2 4 [1,0,4,3]) using bank tags []
certRow g4973 on (row false true k73 5 8 2 4 [1,0,4,3]) using bank tags []
certRow g4974 on (row false false k31 5 8 2 4 [1,0,5,2]) using bank tags []
certRow g4975 on (row false true k73 5 8 2 4 [1,0,5,2]) using bank tags []
certRow g4976 on (row false false k31 5 8 2 4 [1,0,6,1]) using bank tags []
certRow g4977 on (row false true k73 5 8 2 4 [1,0,6,1]) using bank tags []
certRow g4978 on (row false false k31 5 8 2 4 [1,0,7,0]) using bank tags []
certRow g4979 on (row false true k73 5 8 2 4 [1,0,7,0]) using bank tags []
certRow g4980 on (row false false k31 5 8 2 4 [1,1,0,6]) using bank tags []
certRow g4981 on (row false true k73 5 8 2 4 [1,1,0,6]) using bank tags []
certRow g4982 on (row false false k31 5 8 2 4 [1,1,1,5]) using bank tags []
certRow g4983 on (row false true k73 5 8 2 4 [1,1,1,5]) using bank tags []
certRow g4984 on (row false false k31 5 8 2 4 [1,1,2,4]) using bank tags []
end Blc.SelfintSingleObject.Compact45
