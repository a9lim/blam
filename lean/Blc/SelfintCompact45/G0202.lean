import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g16125 on (row false true k166 6 7 2 4 [5,1,1,0]) using bank tags []
certRow g16126 on (row false false k121 6 7 2 4 [5,2,0,0]) using bank tags []
certRow g16127 on (row false true k166 6 7 2 4 [5,2,0,0]) using bank tags []
certRow g16128 on (row false false k121 6 7 2 4 [6,0,0,1]) using bank tags []
certRow g16129 on (row false true k166 6 7 2 4 [6,0,0,1]) using bank tags []
certRow g16130 on (row false false k121 6 7 2 4 [6,0,1,0]) using bank tags []
certRow g16131 on (row false true k166 6 7 2 4 [6,0,1,0]) using bank tags []
certRow g16132 on (row false false k121 6 7 2 4 [6,1,0,0]) using bank tags []
certRow g16133 on (row false true k166 6 7 2 4 [6,1,0,0]) using bank tags []
theorem g16134 : BadRow (row false false k121 6 7 2 4 [7,0,0,0]) := sparse_row false false k121 6 7 2 4 [7,0,0,0] (by decide)
theorem g16135 : BadRow (row false true k166 6 7 2 4 [7,0,0,0]) := sparse_row false true k166 6 7 2 4 [7,0,0,0] (by decide)
theorem g16137 : BadRow (row false true k167 6 7 2 5 [0,0,0,0,7]) := sparse_row false true k167 6 7 2 5 [0,0,0,0,7] (by decide)
certRow g16139 on (row false true k167 6 7 2 5 [0,0,0,1,6]) using bank tags []
certRow g16141 on (row false true k167 6 7 2 5 [0,0,0,2,5]) using bank tags []
certRow g16143 on (row false true k167 6 7 2 5 [0,0,0,3,4]) using bank tags []
certRow g16145 on (row false true k167 6 7 2 5 [0,0,0,4,3]) using bank tags []
certRow g16147 on (row false true k167 6 7 2 5 [0,0,0,5,2]) using bank tags []
certRow g16149 on (row false true k167 6 7 2 5 [0,0,0,6,1]) using bank tags []
theorem g16151 : BadRow (row false true k167 6 7 2 5 [0,0,0,7,0]) := sparse_row false true k167 6 7 2 5 [0,0,0,7,0] (by decide)
certRow g16153 on (row false true k167 6 7 2 5 [0,0,1,0,6]) using bank tags []
certRow g16155 on (row false true k167 6 7 2 5 [0,0,1,1,5]) using bank tags []
certRow g16157 on (row false true k167 6 7 2 5 [0,0,1,2,4]) using bank tags []
certRow g16159 on (row false true k167 6 7 2 5 [0,0,1,3,3]) using bank tags []
certRow g16161 on (row false true k167 6 7 2 5 [0,0,1,4,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
