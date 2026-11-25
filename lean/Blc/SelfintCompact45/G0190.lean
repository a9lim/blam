import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
import Blc.SelfintCompact45.Frames.Data10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g15134 on (row false false k116 6 6 3 5 [3,1,0,2,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g15136 on (row false false k116 6 6 3 5 [3,1,1,0,1]) using bank tags []
certRow g15138 on (row false false k116 6 6 3 5 [3,1,1,1,0]) using bank tags []
certRow g15140 on (row false false k116 6 6 3 5 [3,1,2,0,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g15142 on (row false false k116 6 6 3 5 [3,2,0,0,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g15144 on (row false false k116 6 6 3 5 [3,2,0,1,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g15146 on (row false false k116 6 6 3 5 [3,2,1,0,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g15148 on (row false false k116 6 6 3 5 [3,3,0,0,0]) using bank tags []
certRow g15150 on (row false false k116 6 6 3 5 [4,0,0,0,2]) using bank tags []
certRow g15152 on (row false false k116 6 6 3 5 [4,0,0,1,1]) using bank tags []
certRow g15154 on (row false false k116 6 6 3 5 [4,0,0,2,0]) using bank tags []
certRow g15156 on (row false false k116 6 6 3 5 [4,0,1,0,1]) using bank tags []
certRow g15158 on (row false false k116 6 6 3 5 [4,0,1,1,0]) using bank tags []
certRow g15160 on (row false false k116 6 6 3 5 [4,0,2,0,0]) using bank tags []
certRow g15162 on (row false false k116 6 6 3 5 [4,1,0,0,1]) using bank tags []
certRow g15164 on (row false false k116 6 6 3 5 [4,1,0,1,0]) using bank tags []
certRow g15166 on (row false false k116 6 6 3 5 [4,1,1,0,0]) using bank tags []
certRow g15168 on (row false false k116 6 6 3 5 [4,2,0,0,0]) using bank tags []
certRow g15170 on (row false false k116 6 6 3 5 [5,0,0,0,1]) using bank tags []
certRow g15172 on (row false false k116 6 6 3 5 [5,0,0,1,0]) using bank tags []
certRow g15174 on (row false false k116 6 6 3 5 [5,0,1,0,0]) using bank tags []
certRow g15176 on (row false false k116 6 6 3 5 [5,1,0,0,0]) using bank tags []
theorem g15178 : BadRow (row false false k116 6 6 3 5 [6,0,0,0,0]) := sparse_row false false k116 6 6 3 5 [6,0,0,0,0] (by decide)
theorem g15824 : BadRow (row false false k120 6 7 2 3 [0,0,7]) := sparse_row false false k120 6 7 2 3 [0,0,7] (by decide)
end Blc.SelfintSingleObject.Compact45
