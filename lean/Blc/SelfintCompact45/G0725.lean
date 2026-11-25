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
certRow g23966 on (row false false k292 5 5 2 3 [0,2,3]) using bank tags []
certRow g23968 on (row false false k292 5 5 2 3 [0,3,2]) using bank tags []
certRow g23970 on (row false false k292 5 5 2 3 [0,4,1]) using bank tags []
theorem g23972 : BadRow (row false false k292 5 5 2 3 [0,5,0]) := sparse_row false false k292 5 5 2 3 [0,5,0] (by decide)
certRow g23974 on (row false false k292 5 5 2 3 [1,0,4]) using bank tags []
certRow g23976 on (row false false k292 5 5 2 3 [1,1,3]) using bank tags []
certRow g23978 on (row false false k292 5 5 2 3 [1,2,2]) using bank tags []
certRow g23980 on (row false false k292 5 5 2 3 [1,3,1]) using bank tags []
certRow g23982 on (row false false k292 5 5 2 3 [1,4,0]) using bank tags []
certRow g23984 on (row false false k292 5 5 2 3 [2,0,3]) using bank tags []
certRow g23986 on (row false false k292 5 5 2 3 [2,1,2]) using bank tags []
certRow g23988 on (row false false k292 5 5 2 3 [2,2,1]) using bank tags []
certRow g23990 on (row false false k292 5 5 2 3 [2,3,0]) using bank tags []
certRow g23992 on (row false false k292 5 5 2 3 [3,0,2]) using bank tags []
certRow g23994 on (row false false k292 5 5 2 3 [3,1,1]) using bank tags []
certRow g23996 on (row false false k292 5 5 2 3 [3,2,0]) using bank tags []
certRow g23998 on (row false false k292 5 5 2 3 [4,0,1]) using bank tags []
certRow g24000 on (row false false k292 5 5 2 3 [4,1,0]) using bank tags []
theorem g24002 : BadRow (row false false k292 5 5 2 3 [5,0,0]) := sparse_row false false k292 5 5 2 3 [5,0,0] (by decide)
theorem g24004 : BadRow (row false false k293 5 5 2 4 [0,0,0,5]) := sparse_row false false k293 5 5 2 4 [0,0,0,5] (by decide)
theorem g24005 : BadRow (row false true k317 5 5 2 4 [0,0,0,5]) := sparse_row false true k317 5 5 2 4 [0,0,0,5] (by decide)
certRow g24006 on (row false false k293 5 5 2 4 [0,0,1,4]) using bank tags []
certRow g24007 on (row false true k317 5 5 2 4 [0,0,1,4]) using bank tags []
certRow g24008 on (row false false k293 5 5 2 4 [0,0,2,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
