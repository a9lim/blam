import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data20
import Blc.SelfintCompact45.Frames.Data22
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
theorem g21984 : BadRow (row false false k249 8 3 3 3 [1,1,1]) := sparse_row false false k249 8 3 3 3 [1,1,1] (by decide)
certRow g21986 on (row false false k249 8 3 3 3 [1,2,0]) using bank tags [61,6]
certRow g21988 on (row false false k249 8 3 3 3 [2,0,1]) using bank tags [61,6,61,6]
certRow g21990 on (row false false k249 8 3 3 3 [2,1,0]) using bank tags [61,6]
theorem g21992 : BadRow (row false false k249 8 3 3 3 [3,0,0]) := sparse_row false false k249 8 3 3 3 [3,0,0] (by decide)
theorem g21994 : BadRow (row false false k250 8 3 3 4 [0,0,0,3]) := sparse_row false false k250 8 3 3 4 [0,0,0,3] (by decide)
theorem g21995 : BadRow (row false true k265 8 3 3 4 [0,0,0,3]) := sparse_row false true k265 8 3 3 4 [0,0,0,3] (by decide)
certRow g21996 on (row false false k250 8 3 3 4 [0,0,1,2]) using bank tags [6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,33,61]
certRow g21997 on (row false true k265 8 3 3 4 [0,0,1,2]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g21998 on (row false false k250 8 3 3 4 [0,0,2,1]) using bank tags [6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,33,61]
certRow g21999 on (row false true k265 8 3 3 4 [0,0,2,1]) using bank tags [1,1,1,1,1,1,1,1,1,1]
theorem g22000 : BadRow (row false false k250 8 3 3 4 [0,0,3,0]) := sparse_row false false k250 8 3 3 4 [0,0,3,0] (by decide)
theorem g22001 : BadRow (row false true k265 8 3 3 4 [0,0,3,0]) := sparse_row false true k265 8 3 3 4 [0,0,3,0] (by decide)
certRow g22002 on (row false false k250 8 3 3 4 [0,1,0,2]) using bank tags [6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,33,61,6,6,6,33,61]
certRow g22003 on (row false true k265 8 3 3 4 [0,1,0,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
theorem g22004 : BadRow (row false false k250 8 3 3 4 [0,1,1,1]) := sparse_row false false k250 8 3 3 4 [0,1,1,1] (by decide)
theorem g22005 : BadRow (row false true k265 8 3 3 4 [0,1,1,1]) := sparse_row false true k265 8 3 3 4 [0,1,1,1] (by decide)
certRow g22006 on (row false false k250 8 3 3 4 [0,1,2,0]) using bank tags [6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,33,61]
certRow g22007 on (row false true k265 8 3 3 4 [0,1,2,0]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g22008 on (row false false k250 8 3 3 4 [0,2,0,1]) using bank tags [6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,33,61,6,6,6,33,61]
certRow g22009 on (row false true k265 8 3 3 4 [0,2,0,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g22010 on (row false false k250 8 3 3 4 [0,2,1,0]) using bank tags [6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,33,61]
certRow g22011 on (row false true k265 8 3 3 4 [0,2,1,0]) using bank tags [1,1,1,1,1,1,1,1,1,1]
theorem g22012 : BadRow (row false false k250 8 3 3 4 [0,3,0,0]) := sparse_row false false k250 8 3 3 4 [0,3,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
