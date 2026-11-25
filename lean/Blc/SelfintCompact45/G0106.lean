import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data07
import Blc.SelfintCompact45.Frames.Data11
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11964 on (row false false k93 6 4 2 3 [1,0,3]) using bank tags []
certRow g11966 on (row false false k93 6 4 2 3 [1,1,2]) using bank tags []
certRow g11968 on (row false false k93 6 4 2 3 [1,2,1]) using bank tags []
certRow g11970 on (row false false k93 6 4 2 3 [1,3,0]) using bank tags []
certRow g11972 on (row false false k93 6 4 2 3 [2,0,2]) using bank tags []
certRow g11974 on (row false false k93 6 4 2 3 [2,1,1]) using bank tags []
certRow g11976 on (row false false k93 6 4 2 3 [2,2,0]) using bank tags []
certRow g11978 on (row false false k93 6 4 2 3 [3,0,1]) using bank tags []
certRow g11980 on (row false false k93 6 4 2 3 [3,1,0]) using bank tags []
theorem g11982 : BadRow (row false false k93 6 4 2 3 [4,0,0]) := sparse_row false false k93 6 4 2 3 [4,0,0] (by decide)
theorem g11984 : BadRow (row false false k94 6 4 2 4 [0,0,0,4]) := sparse_row false false k94 6 4 2 4 [0,0,0,4] (by decide)
theorem g11985 : BadRow (row false true k139 6 4 2 4 [0,0,0,4]) := sparse_row false true k139 6 4 2 4 [0,0,0,4] (by decide)
certRow g11986 on (row false false k94 6 4 2 4 [0,0,1,3]) using bank tags []
certRow g11987 on (row false true k139 6 4 2 4 [0,0,1,3]) using bank tags []
certRow g11988 on (row false false k94 6 4 2 4 [0,0,2,2]) using bank tags []
certRow g11989 on (row false true k139 6 4 2 4 [0,0,2,2]) using bank tags []
certRow g11990 on (row false false k94 6 4 2 4 [0,0,3,1]) using bank tags []
certRow g11991 on (row false true k139 6 4 2 4 [0,0,3,1]) using bank tags []
theorem g11992 : BadRow (row false false k94 6 4 2 4 [0,0,4,0]) := sparse_row false false k94 6 4 2 4 [0,0,4,0] (by decide)
theorem g11993 : BadRow (row false true k139 6 4 2 4 [0,0,4,0]) := sparse_row false true k139 6 4 2 4 [0,0,4,0] (by decide)
certRow g11994 on (row false false k94 6 4 2 4 [0,1,0,3]) using bank tags []
certRow g11995 on (row false true k139 6 4 2 4 [0,1,0,3]) using bank tags []
certRow g11996 on (row false false k94 6 4 2 4 [0,1,1,2]) using bank tags [14,1,2,1,2,2,2,20,2,2,21,2,2,14,1,2,1,2,2,2,35,2,2,11,2,2,14,1,2,1,2,2,2,20,2,2,21,2,2]
certRow g11997 on (row false true k139 6 4 2 4 [0,1,1,2]) using bank tags [2,2,14,2,2,14,2,2,14]
end Blc.SelfintSingleObject.Compact45
