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
theorem g22013 : BadRow (row false true k265 8 3 3 4 [0,3,0,0]) := sparse_row false true k265 8 3 3 4 [0,3,0,0] (by decide)
certRow g22014 on (row false false k250 8 3 3 4 [1,0,0,2]) using bank tags [6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61]
certRow g22015 on (row false true k265 8 3 3 4 [1,0,0,2]) using bank tags [1,1,1,1,1,1,1,1,1,1]
theorem g22016 : BadRow (row false false k250 8 3 3 4 [1,0,1,1]) := sparse_row false false k250 8 3 3 4 [1,0,1,1] (by decide)
theorem g22017 : BadRow (row false true k265 8 3 3 4 [1,0,1,1]) := sparse_row false true k265 8 3 3 4 [1,0,1,1] (by decide)
certRow g22018 on (row false false k250 8 3 3 4 [1,0,2,0]) using bank tags [6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61]
certRow g22019 on (row false true k265 8 3 3 4 [1,0,2,0]) using bank tags [1,1,1,1,1,1,1,1,1,1]
theorem g22020 : BadRow (row false false k250 8 3 3 4 [1,1,0,1]) := sparse_row false false k250 8 3 3 4 [1,1,0,1] (by decide)
theorem g22021 : BadRow (row false true k265 8 3 3 4 [1,1,0,1]) := sparse_row false true k265 8 3 3 4 [1,1,0,1] (by decide)
theorem g22022 : BadRow (row false false k250 8 3 3 4 [1,1,1,0]) := sparse_row false false k250 8 3 3 4 [1,1,1,0] (by decide)
theorem g22023 : BadRow (row false true k265 8 3 3 4 [1,1,1,0]) := sparse_row false true k265 8 3 3 4 [1,1,1,0] (by decide)
certRow g22024 on (row false false k250 8 3 3 4 [1,2,0,0]) using bank tags [6,6,6,3,61,6,6,6,3,61,6,6,6,3,61]
certRow g22025 on (row false true k265 8 3 3 4 [1,2,0,0]) using bank tags [1,1,1,1,1,1]
certRow g22026 on (row false false k250 8 3 3 4 [2,0,0,1]) using bank tags [6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61]
certRow g22027 on (row false true k265 8 3 3 4 [2,0,0,1]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g22028 on (row false false k250 8 3 3 4 [2,0,1,0]) using bank tags [6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61,6,6,6,3,61]
certRow g22029 on (row false true k265 8 3 3 4 [2,0,1,0]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g22030 on (row false false k250 8 3 3 4 [2,1,0,0]) using bank tags [6,6,6,3,61,6,6,6,3,61,6,6,6,3,61]
certRow g22031 on (row false true k265 8 3 3 4 [2,1,0,0]) using bank tags [1,1,1,1,1,1]
theorem g22032 : BadRow (row false false k250 8 3 3 4 [3,0,0,0]) := sparse_row false false k250 8 3 3 4 [3,0,0,0] (by decide)
theorem g22033 : BadRow (row false true k265 8 3 3 4 [3,0,0,0]) := sparse_row false true k265 8 3 3 4 [3,0,0,0] (by decide)
theorem g22034 : BadRow (row false false k251 8 3 3 5 [0,0,0,0,3]) := sparse_row false false k251 8 3 3 5 [0,0,0,0,3] (by decide)
theorem g22035 : BadRow (row false true k266 8 3 3 5 [0,0,0,0,3]) := sparse_row false true k266 8 3 3 5 [0,0,0,0,3] (by decide)
certRow g22036 on (row false false k251 8 3 3 5 [0,0,0,1,2]) using bank tags [44,6,6,44]
end Blc.SelfintSingleObject.Compact45
