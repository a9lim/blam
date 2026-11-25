import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14095 on (row false true k157 6 6 2 4 [3,3,0,0]) using bank tags []
certRow g14096 on (row false false k112 6 6 2 4 [4,0,0,2]) using bank tags []
certRow g14097 on (row false true k157 6 6 2 4 [4,0,0,2]) using bank tags []
certRow g14098 on (row false false k112 6 6 2 4 [4,0,1,1]) using bank tags []
certRow g14099 on (row false true k157 6 6 2 4 [4,0,1,1]) using bank tags []
certRow g14100 on (row false false k112 6 6 2 4 [4,0,2,0]) using bank tags []
certRow g14101 on (row false true k157 6 6 2 4 [4,0,2,0]) using bank tags []
certRow g14102 on (row false false k112 6 6 2 4 [4,1,0,1]) using bank tags []
certRow g14103 on (row false true k157 6 6 2 4 [4,1,0,1]) using bank tags []
certRow g14104 on (row false false k112 6 6 2 4 [4,1,1,0]) using bank tags []
certRow g14105 on (row false true k157 6 6 2 4 [4,1,1,0]) using bank tags []
certRow g14106 on (row false false k112 6 6 2 4 [4,2,0,0]) using bank tags []
certRow g14107 on (row false true k157 6 6 2 4 [4,2,0,0]) using bank tags []
certRow g14108 on (row false false k112 6 6 2 4 [5,0,0,1]) using bank tags []
certRow g14109 on (row false true k157 6 6 2 4 [5,0,0,1]) using bank tags []
certRow g14110 on (row false false k112 6 6 2 4 [5,0,1,0]) using bank tags []
certRow g14111 on (row false true k157 6 6 2 4 [5,0,1,0]) using bank tags []
certRow g14112 on (row false false k112 6 6 2 4 [5,1,0,0]) using bank tags []
certRow g14113 on (row false true k157 6 6 2 4 [5,1,0,0]) using bank tags []
theorem g14114 : BadRow (row false false k112 6 6 2 4 [6,0,0,0]) := sparse_row false false k112 6 6 2 4 [6,0,0,0] (by decide)
theorem g14115 : BadRow (row false true k157 6 6 2 4 [6,0,0,0]) := sparse_row false true k157 6 6 2 4 [6,0,0,0] (by decide)
theorem g14117 : BadRow (row false true k158 6 6 2 5 [0,0,0,0,6]) := sparse_row false true k158 6 6 2 5 [0,0,0,0,6] (by decide)
certRow g14119 on (row false true k158 6 6 2 5 [0,0,0,1,5]) using bank tags []
certRow g14121 on (row false true k158 6 6 2 5 [0,0,0,2,4]) using bank tags []
end Blc.SelfintSingleObject.Compact45
