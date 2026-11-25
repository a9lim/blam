import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g24104 on (row false false k293 5 5 2 4 [3,1,1,0]) using bank tags []
certRow g24105 on (row false true k317 5 5 2 4 [3,1,1,0]) using bank tags []
certRow g24106 on (row false false k293 5 5 2 4 [3,2,0,0]) using bank tags []
certRow g24107 on (row false true k317 5 5 2 4 [3,2,0,0]) using bank tags []
certRow g24108 on (row false false k293 5 5 2 4 [4,0,0,1]) using bank tags []
certRow g24109 on (row false true k317 5 5 2 4 [4,0,0,1]) using bank tags []
certRow g24110 on (row false false k293 5 5 2 4 [4,0,1,0]) using bank tags []
certRow g24111 on (row false true k317 5 5 2 4 [4,0,1,0]) using bank tags []
certRow g24112 on (row false false k293 5 5 2 4 [4,1,0,0]) using bank tags []
certRow g24113 on (row false true k317 5 5 2 4 [4,1,0,0]) using bank tags []
theorem g24114 : BadRow (row false false k293 5 5 2 4 [5,0,0,0]) := sparse_row false false k293 5 5 2 4 [5,0,0,0] (by decide)
theorem g24115 : BadRow (row false true k317 5 5 2 4 [5,0,0,0]) := sparse_row false true k317 5 5 2 4 [5,0,0,0] (by decide)
theorem g24116 : BadRow (row false false k294 5 5 2 5 [0,0,0,0,5]) := sparse_row false false k294 5 5 2 5 [0,0,0,0,5] (by decide)
theorem g24117 : BadRow (row false true k318 5 5 2 5 [0,0,0,0,5]) := sparse_row false true k318 5 5 2 5 [0,0,0,0,5] (by decide)
certRow g24118 on (row false false k294 5 5 2 5 [0,0,0,1,4]) using bank tags []
certRow g24119 on (row false true k318 5 5 2 5 [0,0,0,1,4]) using bank tags []
certRow g24120 on (row false false k294 5 5 2 5 [0,0,0,2,3]) using bank tags []
certRow g24121 on (row false true k318 5 5 2 5 [0,0,0,2,3]) using bank tags []
certRow g24122 on (row false false k294 5 5 2 5 [0,0,0,3,2]) using bank tags []
certRow g24123 on (row false true k318 5 5 2 5 [0,0,0,3,2]) using bank tags []
certRow g24124 on (row false false k294 5 5 2 5 [0,0,0,4,1]) using bank tags []
certRow g24125 on (row false true k318 5 5 2 5 [0,0,0,4,1]) using bank tags []
theorem g24126 : BadRow (row false false k294 5 5 2 5 [0,0,0,5,0]) := sparse_row false false k294 5 5 2 5 [0,0,0,5,0] (by decide)
theorem g24127 : BadRow (row false true k318 5 5 2 5 [0,0,0,5,0]) := sparse_row false true k318 5 5 2 5 [0,0,0,5,0] (by decide)
end Blc.SelfintSingleObject.Compact45
