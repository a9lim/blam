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
certRow g17158 on (row false false k125 6 7 3 5 [0,0,3,4,0]) using bank tags []
certRow g17159 on (row false true k170 6 7 3 5 [0,0,3,4,0]) using bank tags []
certRow g17160 on (row false false k125 6 7 3 5 [0,0,4,0,3]) using bank tags []
certRow g17161 on (row false true k170 6 7 3 5 [0,0,4,0,3]) using bank tags []
certRow g17162 on (row false false k125 6 7 3 5 [0,0,4,1,2]) using bank tags []
certRow g17163 on (row false true k170 6 7 3 5 [0,0,4,1,2]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,6,6,6,2,2,20,20]
certRow g17164 on (row false false k125 6 7 3 5 [0,0,4,2,1]) using bank tags []
certRow g17165 on (row false true k170 6 7 3 5 [0,0,4,2,1]) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,6,6,6,2,2,20,20]
certRow g17166 on (row false false k125 6 7 3 5 [0,0,4,3,0]) using bank tags []
certRow g17167 on (row false true k170 6 7 3 5 [0,0,4,3,0]) using bank tags []
certRow g17168 on (row false false k125 6 7 3 5 [0,0,5,0,2]) using bank tags []
certRow g17169 on (row false true k170 6 7 3 5 [0,0,5,0,2]) using bank tags []
certRow g17170 on (row false false k125 6 7 3 5 [0,0,5,1,1]) using bank tags []
certRow g17171 on (row false true k170 6 7 3 5 [0,0,5,1,1]) using bank tags []
certRow g17172 on (row false false k125 6 7 3 5 [0,0,5,2,0]) using bank tags []
certRow g17173 on (row false true k170 6 7 3 5 [0,0,5,2,0]) using bank tags []
certRow g17174 on (row false false k125 6 7 3 5 [0,0,6,0,1]) using bank tags []
certRow g17175 on (row false true k170 6 7 3 5 [0,0,6,0,1]) using bank tags []
certRow g17176 on (row false false k125 6 7 3 5 [0,0,6,1,0]) using bank tags []
certRow g17177 on (row false true k170 6 7 3 5 [0,0,6,1,0]) using bank tags []
theorem g17178 : BadRow (row false false k125 6 7 3 5 [0,0,7,0,0]) := sparse_row false false k125 6 7 3 5 [0,0,7,0,0] (by decide)
theorem g17179 : BadRow (row false true k170 6 7 3 5 [0,0,7,0,0]) := sparse_row false true k170 6 7 3 5 [0,0,7,0,0] (by decide)
certRow g17180 on (row false false k125 6 7 3 5 [0,1,0,0,6]) using bank tags []
certRow g17181 on (row false true k170 6 7 3 5 [0,1,0,0,6]) using bank tags []
end Blc.SelfintSingleObject.Compact45
