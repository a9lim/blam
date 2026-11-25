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
theorem g25931 : BadRow (row true true k339 6 3 2 6 [0,0,0,3,0,0]) := sparse_row true true k339 6 3 2 6 [0,0,0,3,0,0] (by decide)
certRow g25932 on (row true false k327 6 3 2 6 [0,0,1,0,0,2]) using bank tags []
certRow g25933 on (row true true k339 6 3 2 6 [0,0,1,0,0,2]) using bank tags []
theorem g25934 : BadRow (row true false k327 6 3 2 6 [0,0,1,0,1,1]) := sparse_row true false k327 6 3 2 6 [0,0,1,0,1,1] (by decide)
theorem g25935 : BadRow (row true true k339 6 3 2 6 [0,0,1,0,1,1]) := sparse_row true true k339 6 3 2 6 [0,0,1,0,1,1] (by decide)
certRow g25936 on (row true false k327 6 3 2 6 [0,0,1,0,2,0]) using bank tags []
certRow g25937 on (row true true k339 6 3 2 6 [0,0,1,0,2,0]) using bank tags []
theorem g25938 : BadRow (row true false k327 6 3 2 6 [0,0,1,1,0,1]) := sparse_row true false k327 6 3 2 6 [0,0,1,1,0,1] (by decide)
theorem g25939 : BadRow (row true true k339 6 3 2 6 [0,0,1,1,0,1]) := sparse_row true true k339 6 3 2 6 [0,0,1,1,0,1] (by decide)
theorem g25940 : BadRow (row true false k327 6 3 2 6 [0,0,1,1,1,0]) := sparse_row true false k327 6 3 2 6 [0,0,1,1,1,0] (by decide)
theorem g25941 : BadRow (row true true k339 6 3 2 6 [0,0,1,1,1,0]) := sparse_row true true k339 6 3 2 6 [0,0,1,1,1,0] (by decide)
certRow g25942 on (row true false k327 6 3 2 6 [0,0,1,2,0,0]) using bank tags []
certRow g25943 on (row true true k339 6 3 2 6 [0,0,1,2,0,0]) using bank tags []
certRow g25944 on (row true false k327 6 3 2 6 [0,0,2,0,0,1]) using bank tags []
certRow g25945 on (row true true k339 6 3 2 6 [0,0,2,0,0,1]) using bank tags []
certRow g25946 on (row true false k327 6 3 2 6 [0,0,2,0,1,0]) using bank tags []
certRow g25947 on (row true true k339 6 3 2 6 [0,0,2,0,1,0]) using bank tags []
certRow g25948 on (row true false k327 6 3 2 6 [0,0,2,1,0,0]) using bank tags []
certRow g25949 on (row true true k339 6 3 2 6 [0,0,2,1,0,0]) using bank tags []
theorem g25950 : BadRow (row true false k327 6 3 2 6 [0,0,3,0,0,0]) := sparse_row true false k327 6 3 2 6 [0,0,3,0,0,0] (by decide)
theorem g25951 : BadRow (row true true k339 6 3 2 6 [0,0,3,0,0,0]) := sparse_row true true k339 6 3 2 6 [0,0,3,0,0,0] (by decide)
certRow g25952 on (row true false k327 6 3 2 6 [0,1,0,0,0,2]) using bank tags []
certRow g25953 on (row true true k339 6 3 2 6 [0,1,0,0,0,2]) using bank tags []
theorem g25954 : BadRow (row true false k327 6 3 2 6 [0,1,0,0,1,1]) := sparse_row true false k327 6 3 2 6 [0,1,0,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
