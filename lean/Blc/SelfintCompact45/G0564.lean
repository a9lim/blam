import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data21
import Blc.SelfintCompact45.Frames.Data22
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g22114 : BadRow (row false false k252 8 3 4 3 [1,1,1]) := sparse_row false false k252 8 3 4 3 [1,1,1] (by decide)
certRow g22116 on (row false false k252 8 3 4 3 [1,2,0]) using bank tags [61,6]
certRow g22118 on (row false false k252 8 3 4 3 [2,0,1]) using bank tags [61,6,61,6]
certRow g22120 on (row false false k252 8 3 4 3 [2,1,0]) using bank tags [61,6]
theorem g22122 : BadRow (row false false k252 8 3 4 3 [3,0,0]) := sparse_row false false k252 8 3 4 3 [3,0,0] (by decide)
theorem g22124 : BadRow (row false false k253 8 3 4 4 [0,0,0,3]) := sparse_row false false k253 8 3 4 4 [0,0,0,3] (by decide)
theorem g22125 : BadRow (row false true k268 8 3 4 4 [0,0,0,3]) := sparse_row false true k268 8 3 4 4 [0,0,0,3] (by decide)
certRow g22126 on (row false false k253 8 3 4 4 [0,0,1,2]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3]
certRow g22127 on (row false true k268 8 3 4 4 [0,0,1,2]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g22128 on (row false false k253 8 3 4 4 [0,0,2,1]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3]
certRow g22129 on (row false true k268 8 3 4 4 [0,0,2,1]) using bank tags [1,1,1,1,1,1,1,1,1,1]
theorem g22130 : BadRow (row false false k253 8 3 4 4 [0,0,3,0]) := sparse_row false false k253 8 3 4 4 [0,0,3,0] (by decide)
theorem g22131 : BadRow (row false true k268 8 3 4 4 [0,0,3,0]) := sparse_row false true k268 8 3 4 4 [0,0,3,0] (by decide)
certRow g22132 on (row false false k253 8 3 4 4 [0,1,0,2]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3]
certRow g22133 on (row false true k268 8 3 4 4 [0,1,0,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
theorem g22134 : BadRow (row false false k253 8 3 4 4 [0,1,1,1]) := sparse_row false false k253 8 3 4 4 [0,1,1,1] (by decide)
theorem g22135 : BadRow (row false true k268 8 3 4 4 [0,1,1,1]) := sparse_row false true k268 8 3 4 4 [0,1,1,1] (by decide)
certRow g22136 on (row false false k253 8 3 4 4 [0,1,2,0]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3]
certRow g22137 on (row false true k268 8 3 4 4 [0,1,2,0]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g22138 on (row false false k253 8 3 4 4 [0,2,0,1]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3]
certRow g22139 on (row false true k268 8 3 4 4 [0,2,0,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g22140 on (row false false k253 8 3 4 4 [0,2,1,0]) using bank tags [6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3,6,6,6,3]
certRow g22141 on (row false true k268 8 3 4 4 [0,2,1,0]) using bank tags [1,1,1,1,1,1,1,1,1,1]
theorem g22142 : BadRow (row false false k253 8 3 4 4 [0,3,0,0]) := sparse_row false false k253 8 3 4 4 [0,3,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
