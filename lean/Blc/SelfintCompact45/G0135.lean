import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g13069 on (row false true k149 6 5 2 5 [3,2,0,0,0]) using bank tags []
certRow g13071 on (row false true k149 6 5 2 5 [4,0,0,0,1]) using bank tags []
certRow g13073 on (row false true k149 6 5 2 5 [4,0,0,1,0]) using bank tags []
certRow g13075 on (row false true k149 6 5 2 5 [4,0,1,0,0]) using bank tags []
certRow g13077 on (row false true k149 6 5 2 5 [4,1,0,0,0]) using bank tags []
theorem g13079 : BadRow (row false true k149 6 5 2 5 [5,0,0,0,0]) := sparse_row false true k149 6 5 2 5 [5,0,0,0,0] (by decide)
theorem g13080 : BadRow (row false false k105 6 5 3 3 [0,0,5]) := sparse_row false false k105 6 5 3 3 [0,0,5] (by decide)
certRow g13082 on (row false false k105 6 5 3 3 [0,1,4]) using bank tags []
certRow g13084 on (row false false k105 6 5 3 3 [0,2,3]) using bank tags []
certRow g13086 on (row false false k105 6 5 3 3 [0,3,2]) using bank tags []
certRow g13088 on (row false false k105 6 5 3 3 [0,4,1]) using bank tags []
theorem g13090 : BadRow (row false false k105 6 5 3 3 [0,5,0]) := sparse_row false false k105 6 5 3 3 [0,5,0] (by decide)
certRow g13092 on (row false false k105 6 5 3 3 [1,0,4]) using bank tags []
certRow g13094 on (row false false k105 6 5 3 3 [1,1,3]) using bank tags []
certRow g13096 on (row false false k105 6 5 3 3 [1,2,2]) using bank tags []
certRow g13098 on (row false false k105 6 5 3 3 [1,3,1]) using bank tags []
certRow g13100 on (row false false k105 6 5 3 3 [1,4,0]) using bank tags []
certRow g13102 on (row false false k105 6 5 3 3 [2,0,3]) using bank tags []
certRow g13104 on (row false false k105 6 5 3 3 [2,1,2]) using bank tags []
certRow g13106 on (row false false k105 6 5 3 3 [2,2,1]) using bank tags []
certRow g13108 on (row false false k105 6 5 3 3 [2,3,0]) using bank tags []
certRow g13110 on (row false false k105 6 5 3 3 [3,0,2]) using bank tags []
certRow g13112 on (row false false k105 6 5 3 3 [3,1,1]) using bank tags []
certRow g13114 on (row false false k105 6 5 3 3 [3,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
