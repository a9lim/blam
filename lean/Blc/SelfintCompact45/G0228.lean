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
certRow g17086 on (row false false k124 6 7 3 4 [4,3,0,0]) using bank tags []
certRow g17087 on (row false true k169 6 7 3 4 [4,3,0,0]) using bank tags []
certRow g17088 on (row false false k124 6 7 3 4 [5,0,0,2]) using bank tags []
certRow g17089 on (row false true k169 6 7 3 4 [5,0,0,2]) using bank tags []
certRow g17090 on (row false false k124 6 7 3 4 [5,0,1,1]) using bank tags []
certRow g17091 on (row false true k169 6 7 3 4 [5,0,1,1]) using bank tags []
certRow g17092 on (row false false k124 6 7 3 4 [5,0,2,0]) using bank tags []
certRow g17093 on (row false true k169 6 7 3 4 [5,0,2,0]) using bank tags []
certRow g17094 on (row false false k124 6 7 3 4 [5,1,0,1]) using bank tags []
certRow g17095 on (row false true k169 6 7 3 4 [5,1,0,1]) using bank tags []
certRow g17096 on (row false false k124 6 7 3 4 [5,1,1,0]) using bank tags []
certRow g17097 on (row false true k169 6 7 3 4 [5,1,1,0]) using bank tags []
certRow g17098 on (row false false k124 6 7 3 4 [5,2,0,0]) using bank tags []
certRow g17099 on (row false true k169 6 7 3 4 [5,2,0,0]) using bank tags []
certRow g17100 on (row false false k124 6 7 3 4 [6,0,0,1]) using bank tags []
certRow g17101 on (row false true k169 6 7 3 4 [6,0,0,1]) using bank tags []
certRow g17102 on (row false false k124 6 7 3 4 [6,0,1,0]) using bank tags []
certRow g17103 on (row false true k169 6 7 3 4 [6,0,1,0]) using bank tags []
certRow g17104 on (row false false k124 6 7 3 4 [6,1,0,0]) using bank tags []
certRow g17105 on (row false true k169 6 7 3 4 [6,1,0,0]) using bank tags []
theorem g17106 : BadRow (row false false k124 6 7 3 4 [7,0,0,0]) := sparse_row false false k124 6 7 3 4 [7,0,0,0] (by decide)
theorem g17107 : BadRow (row false true k169 6 7 3 4 [7,0,0,0]) := sparse_row false true k169 6 7 3 4 [7,0,0,0] (by decide)
theorem g17108 : BadRow (row false false k125 6 7 3 5 [0,0,0,0,7]) := sparse_row false false k125 6 7 3 5 [0,0,0,0,7] (by decide)
theorem g17109 : BadRow (row false true k170 6 7 3 5 [0,0,0,0,7]) := sparse_row false true k170 6 7 3 5 [0,0,0,0,7] (by decide)
end Blc.SelfintSingleObject.Compact45
