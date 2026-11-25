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
theorem g26003 : BadRow (row true true k339 6 3 2 6 [1,1,0,0,0,1]) := sparse_row true true k339 6 3 2 6 [1,1,0,0,0,1] (by decide)
theorem g26004 : BadRow (row true false k327 6 3 2 6 [1,1,0,0,1,0]) := sparse_row true false k327 6 3 2 6 [1,1,0,0,1,0] (by decide)
theorem g26005 : BadRow (row true true k339 6 3 2 6 [1,1,0,0,1,0]) := sparse_row true true k339 6 3 2 6 [1,1,0,0,1,0] (by decide)
theorem g26006 : BadRow (row true false k327 6 3 2 6 [1,1,0,1,0,0]) := sparse_row true false k327 6 3 2 6 [1,1,0,1,0,0] (by decide)
theorem g26007 : BadRow (row true true k339 6 3 2 6 [1,1,0,1,0,0]) := sparse_row true true k339 6 3 2 6 [1,1,0,1,0,0] (by decide)
theorem g26008 : BadRow (row true false k327 6 3 2 6 [1,1,1,0,0,0]) := sparse_row true false k327 6 3 2 6 [1,1,1,0,0,0] (by decide)
theorem g26009 : BadRow (row true true k339 6 3 2 6 [1,1,1,0,0,0]) := sparse_row true true k339 6 3 2 6 [1,1,1,0,0,0] (by decide)
certRow g26010 on (row true false k327 6 3 2 6 [1,2,0,0,0,0]) using bank tags []
certRow g26011 on (row true true k339 6 3 2 6 [1,2,0,0,0,0]) using bank tags []
certRow g26012 on (row true false k327 6 3 2 6 [2,0,0,0,0,1]) using bank tags []
certRow g26013 on (row true true k339 6 3 2 6 [2,0,0,0,0,1]) using bank tags []
certRow g26014 on (row true false k327 6 3 2 6 [2,0,0,0,1,0]) using bank tags []
certRow g26015 on (row true true k339 6 3 2 6 [2,0,0,0,1,0]) using bank tags []
certRow g26016 on (row true false k327 6 3 2 6 [2,0,0,1,0,0]) using bank tags []
certRow g26017 on (row true true k339 6 3 2 6 [2,0,0,1,0,0]) using bank tags []
certRow g26018 on (row true false k327 6 3 2 6 [2,0,1,0,0,0]) using bank tags []
certRow g26019 on (row true true k339 6 3 2 6 [2,0,1,0,0,0]) using bank tags []
certRow g26020 on (row true false k327 6 3 2 6 [2,1,0,0,0,0]) using bank tags []
certRow g26021 on (row true true k339 6 3 2 6 [2,1,0,0,0,0]) using bank tags []
theorem g26022 : BadRow (row true false k327 6 3 2 6 [3,0,0,0,0,0]) := sparse_row true false k327 6 3 2 6 [3,0,0,0,0,0] (by decide)
theorem g26023 : BadRow (row true true k339 6 3 2 6 [3,0,0,0,0,0]) := sparse_row true true k339 6 3 2 6 [3,0,0,0,0,0] (by decide)
theorem g26024 : BadRow (row true false k328 6 3 3 3 [0,0,3]) := sparse_row true false k328 6 3 3 3 [0,0,3] (by decide)
certRow g26026 on (row true false k328 6 3 3 3 [0,1,2]) using bank tags [61,2,61,2,61,37,61,19,8,8,8,8]
certRow g26028 on (row true false k328 6 3 3 3 [0,2,1]) using bank tags [61,2,61,2,61,37,61,19,8,8,8,8]
end Blc.SelfintSingleObject.Compact45
