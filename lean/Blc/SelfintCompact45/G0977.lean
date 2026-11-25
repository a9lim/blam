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
theorem g25955 : BadRow (row true true k339 6 3 2 6 [0,1,0,0,1,1]) := sparse_row true true k339 6 3 2 6 [0,1,0,0,1,1] (by decide)
certRow g25956 on (row true false k327 6 3 2 6 [0,1,0,0,2,0]) using bank tags []
certRow g25957 on (row true true k339 6 3 2 6 [0,1,0,0,2,0]) using bank tags []
theorem g25958 : BadRow (row true false k327 6 3 2 6 [0,1,0,1,0,1]) := sparse_row true false k327 6 3 2 6 [0,1,0,1,0,1] (by decide)
theorem g25959 : BadRow (row true true k339 6 3 2 6 [0,1,0,1,0,1]) := sparse_row true true k339 6 3 2 6 [0,1,0,1,0,1] (by decide)
theorem g25960 : BadRow (row true false k327 6 3 2 6 [0,1,0,1,1,0]) := sparse_row true false k327 6 3 2 6 [0,1,0,1,1,0] (by decide)
theorem g25961 : BadRow (row true true k339 6 3 2 6 [0,1,0,1,1,0]) := sparse_row true true k339 6 3 2 6 [0,1,0,1,1,0] (by decide)
certRow g25962 on (row true false k327 6 3 2 6 [0,1,0,2,0,0]) using bank tags []
certRow g25963 on (row true true k339 6 3 2 6 [0,1,0,2,0,0]) using bank tags []
theorem g25964 : BadRow (row true false k327 6 3 2 6 [0,1,1,0,0,1]) := sparse_row true false k327 6 3 2 6 [0,1,1,0,0,1] (by decide)
theorem g25965 : BadRow (row true true k339 6 3 2 6 [0,1,1,0,0,1]) := sparse_row true true k339 6 3 2 6 [0,1,1,0,0,1] (by decide)
theorem g25966 : BadRow (row true false k327 6 3 2 6 [0,1,1,0,1,0]) := sparse_row true false k327 6 3 2 6 [0,1,1,0,1,0] (by decide)
theorem g25967 : BadRow (row true true k339 6 3 2 6 [0,1,1,0,1,0]) := sparse_row true true k339 6 3 2 6 [0,1,1,0,1,0] (by decide)
theorem g25968 : BadRow (row true false k327 6 3 2 6 [0,1,1,1,0,0]) := sparse_row true false k327 6 3 2 6 [0,1,1,1,0,0] (by decide)
theorem g25969 : BadRow (row true true k339 6 3 2 6 [0,1,1,1,0,0]) := sparse_row true true k339 6 3 2 6 [0,1,1,1,0,0] (by decide)
certRow g25970 on (row true false k327 6 3 2 6 [0,1,2,0,0,0]) using bank tags []
certRow g25971 on (row true true k339 6 3 2 6 [0,1,2,0,0,0]) using bank tags []
certRow g25972 on (row true false k327 6 3 2 6 [0,2,0,0,0,1]) using bank tags []
certRow g25973 on (row true true k339 6 3 2 6 [0,2,0,0,0,1]) using bank tags []
certRow g25974 on (row true false k327 6 3 2 6 [0,2,0,0,1,0]) using bank tags []
certRow g25975 on (row true true k339 6 3 2 6 [0,2,0,0,1,0]) using bank tags []
certRow g25976 on (row true false k327 6 3 2 6 [0,2,0,1,0,0]) using bank tags []
certRow g25977 on (row true true k339 6 3 2 6 [0,2,0,1,0,0]) using bank tags []
certRow g25978 on (row true false k327 6 3 2 6 [0,2,1,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
