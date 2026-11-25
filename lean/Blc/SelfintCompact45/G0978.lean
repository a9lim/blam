import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data27
import Blc.SelfintCompact45.Frames.Data28
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g25979 on (row true true k339 6 3 2 6 [0,2,1,0,0,0]) using bank tags []
theorem g25980 : BadRow (row true false k327 6 3 2 6 [0,3,0,0,0,0]) := sparse_row true false k327 6 3 2 6 [0,3,0,0,0,0] (by decide)
theorem g25981 : BadRow (row true true k339 6 3 2 6 [0,3,0,0,0,0]) := sparse_row true true k339 6 3 2 6 [0,3,0,0,0,0] (by decide)
certRow g25982 on (row true false k327 6 3 2 6 [1,0,0,0,0,2]) using bank tags []
certRow g25983 on (row true true k339 6 3 2 6 [1,0,0,0,0,2]) using bank tags []
theorem g25984 : BadRow (row true false k327 6 3 2 6 [1,0,0,0,1,1]) := sparse_row true false k327 6 3 2 6 [1,0,0,0,1,1] (by decide)
theorem g25985 : BadRow (row true true k339 6 3 2 6 [1,0,0,0,1,1]) := sparse_row true true k339 6 3 2 6 [1,0,0,0,1,1] (by decide)
certRow g25986 on (row true false k327 6 3 2 6 [1,0,0,0,2,0]) using bank tags []
certRow g25987 on (row true true k339 6 3 2 6 [1,0,0,0,2,0]) using bank tags []
theorem g25988 : BadRow (row true false k327 6 3 2 6 [1,0,0,1,0,1]) := sparse_row true false k327 6 3 2 6 [1,0,0,1,0,1] (by decide)
theorem g25989 : BadRow (row true true k339 6 3 2 6 [1,0,0,1,0,1]) := sparse_row true true k339 6 3 2 6 [1,0,0,1,0,1] (by decide)
theorem g25990 : BadRow (row true false k327 6 3 2 6 [1,0,0,1,1,0]) := sparse_row true false k327 6 3 2 6 [1,0,0,1,1,0] (by decide)
theorem g25991 : BadRow (row true true k339 6 3 2 6 [1,0,0,1,1,0]) := sparse_row true true k339 6 3 2 6 [1,0,0,1,1,0] (by decide)
certRow g25992 on (row true false k327 6 3 2 6 [1,0,0,2,0,0]) using bank tags []
certRow g25993 on (row true true k339 6 3 2 6 [1,0,0,2,0,0]) using bank tags []
theorem g25994 : BadRow (row true false k327 6 3 2 6 [1,0,1,0,0,1]) := sparse_row true false k327 6 3 2 6 [1,0,1,0,0,1] (by decide)
theorem g25995 : BadRow (row true true k339 6 3 2 6 [1,0,1,0,0,1]) := sparse_row true true k339 6 3 2 6 [1,0,1,0,0,1] (by decide)
theorem g25996 : BadRow (row true false k327 6 3 2 6 [1,0,1,0,1,0]) := sparse_row true false k327 6 3 2 6 [1,0,1,0,1,0] (by decide)
theorem g25997 : BadRow (row true true k339 6 3 2 6 [1,0,1,0,1,0]) := sparse_row true true k339 6 3 2 6 [1,0,1,0,1,0] (by decide)
theorem g25998 : BadRow (row true false k327 6 3 2 6 [1,0,1,1,0,0]) := sparse_row true false k327 6 3 2 6 [1,0,1,1,0,0] (by decide)
theorem g25999 : BadRow (row true true k339 6 3 2 6 [1,0,1,1,0,0]) := sparse_row true true k339 6 3 2 6 [1,0,1,1,0,0] (by decide)
certRow g26000 on (row true false k327 6 3 2 6 [1,0,2,0,0,0]) using bank tags []
certRow g26001 on (row true true k339 6 3 2 6 [1,0,2,0,0,0]) using bank tags []
theorem g26002 : BadRow (row true false k327 6 3 2 6 [1,1,0,0,0,1]) := sparse_row true false k327 6 3 2 6 [1,1,0,0,0,1] (by decide)
end Blc.SelfintSingleObject.Compact45
