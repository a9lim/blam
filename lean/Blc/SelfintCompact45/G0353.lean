import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data14
import Blc.SelfintCompact45.Frames.Data15
import Blc.SelfintCompact45.Frames.Data17
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g18990 on (row false false k179 7 3 3 5 [2,0,0,0,1]) using bank tags [2,2,3,2,2,2,2,2,2,3,2,2,2,3,2,2,2,33,2,2,2,2,3,2,2,2]
certRow g18991 on (row false true k215 7 3 3 5 [2,0,0,0,1]) using bank tags []
certRow g18992 on (row false false k179 7 3 3 5 [2,0,0,1,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,3,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g18993 on (row false true k215 7 3 3 5 [2,0,0,1,0]) using bank tags []
certRow g18994 on (row false false k179 7 3 3 5 [2,0,1,0,0]) using bank tags [3,2,2,2,3,2,2,2,2,2,33,2,2,2,2,2,33,2,33,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g18995 on (row false true k215 7 3 3 5 [2,0,1,0,0]) using bank tags []
certRow g18996 on (row false false k179 7 3 3 5 [2,1,0,0,0]) using bank tags [3,2,2,2,3,2,2,2,2,3,2,2,2,33,2,2,2,2,2,2,2,2]
certRow g18997 on (row false true k215 7 3 3 5 [2,1,0,0,0]) using bank tags []
theorem g18998 : BadRow (row false false k179 7 3 3 5 [3,0,0,0,0]) := sparse_row false false k179 7 3 3 5 [3,0,0,0,0] (by decide)
theorem g18999 : BadRow (row false true k215 7 3 3 5 [3,0,0,0,0]) := sparse_row false true k215 7 3 3 5 [3,0,0,0,0] (by decide)
theorem g19000 : BadRow (row false false k180 7 3 4 3 [0,0,3]) := sparse_row false false k180 7 3 4 3 [0,0,3] (by decide)
certRow g19002 on (row false false k180 7 3 4 3 [0,1,2]) using bank tags []
certRow g19004 on (row false false k180 7 3 4 3 [0,2,1]) using bank tags []
theorem g19006 : BadRow (row false false k180 7 3 4 3 [0,3,0]) := sparse_row false false k180 7 3 4 3 [0,3,0] (by decide)
certRow g19008 on (row false false k180 7 3 4 3 [1,0,2]) using bank tags []
theorem g19010 : BadRow (row false false k180 7 3 4 3 [1,1,1]) := sparse_row false false k180 7 3 4 3 [1,1,1] (by decide)
certRow g19012 on (row false false k180 7 3 4 3 [1,2,0]) using bank tags []
certRow g19014 on (row false false k180 7 3 4 3 [2,0,1]) using bank tags []
certRow g19016 on (row false false k180 7 3 4 3 [2,1,0]) using bank tags []
theorem g19018 : BadRow (row false false k180 7 3 4 3 [3,0,0]) := sparse_row false false k180 7 3 4 3 [3,0,0] (by decide)
theorem g19020 : BadRow (row false false k181 7 3 4 4 [0,0,0,3]) := sparse_row false false k181 7 3 4 4 [0,0,0,3] (by decide)
certRow g19022 on (row false false k181 7 3 4 4 [0,0,1,2]) using bank tags [13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6]
certRow g19024 on (row false false k181 7 3 4 4 [0,0,2,1]) using bank tags [13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6,13,1,6,3,6,6]
theorem g19026 : BadRow (row false false k181 7 3 4 4 [0,0,3,0]) := sparse_row false false k181 7 3 4 4 [0,0,3,0] (by decide)
end Blc.SelfintSingleObject.Compact45
