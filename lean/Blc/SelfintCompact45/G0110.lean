import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data07
import Blc.SelfintCompact45.Frames.Data08
import Blc.SelfintCompact45.Frames.Data11
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12037 on (row false true k139 6 4 2 4 [2,0,1,1]) using bank tags [2,2,14,2,2,14,2,2,14,2,2,14,2,2,14]
certRow g12038 on (row false false k94 6 4 2 4 [2,0,2,0]) using bank tags []
certRow g12039 on (row false true k139 6 4 2 4 [2,0,2,0]) using bank tags []
certRow g12040 on (row false false k94 6 4 2 4 [2,1,0,1]) using bank tags [14,1,2,1,2,2,2,35,2,2,33,2,2,14,1,2,1,2,2,2,37,2,2,33,2,2,14,1,2,1,2,2,2,20,2,2,33,2,2,14,1,2,1,2,2,2,1,2,2,33,2,2,14,1,2,1,2,2,2,1,2,2,33,2,2]
certRow g12041 on (row false true k139 6 4 2 4 [2,1,0,1]) using bank tags [2,2,14,2,2,14,2,2,14,2,2,14,2,2,14]
certRow g12042 on (row false false k94 6 4 2 4 [2,1,1,0]) using bank tags [14,1,2,1,2,2,2,35,2,2,33,2,2,14,1,2,1,2,2,2,35,2,2,33,2,2,14,1,2,1,2,2,2,1,2,2,33,2,2]
certRow g12043 on (row false true k139 6 4 2 4 [2,1,1,0]) using bank tags [2,2,14,2,2,14,2,2,14]
certRow g12044 on (row false false k94 6 4 2 4 [2,2,0,0]) using bank tags []
certRow g12045 on (row false true k139 6 4 2 4 [2,2,0,0]) using bank tags []
certRow g12046 on (row false false k94 6 4 2 4 [3,0,0,1]) using bank tags []
certRow g12047 on (row false true k139 6 4 2 4 [3,0,0,1]) using bank tags []
certRow g12048 on (row false false k94 6 4 2 4 [3,0,1,0]) using bank tags []
certRow g12049 on (row false true k139 6 4 2 4 [3,0,1,0]) using bank tags []
certRow g12050 on (row false false k94 6 4 2 4 [3,1,0,0]) using bank tags []
certRow g12051 on (row false true k139 6 4 2 4 [3,1,0,0]) using bank tags []
theorem g12052 : BadRow (row false false k94 6 4 2 4 [4,0,0,0]) := sparse_row false false k94 6 4 2 4 [4,0,0,0] (by decide)
theorem g12053 : BadRow (row false true k139 6 4 2 4 [4,0,0,0]) := sparse_row false true k139 6 4 2 4 [4,0,0,0] (by decide)
theorem g12674 : BadRow (row false false k102 6 5 2 3 [0,0,5]) := sparse_row false false k102 6 5 2 3 [0,0,5] (by decide)
certRow g12676 on (row false false k102 6 5 2 3 [0,1,4]) using bank tags []
certRow g12678 on (row false false k102 6 5 2 3 [0,2,3]) using bank tags []
certRow g12680 on (row false false k102 6 5 2 3 [0,3,2]) using bank tags []
certRow g12682 on (row false false k102 6 5 2 3 [0,4,1]) using bank tags []
theorem g12684 : BadRow (row false false k102 6 5 2 3 [0,5,0]) := sparse_row false false k102 6 5 2 3 [0,5,0] (by decide)
certRow g12686 on (row false false k102 6 5 2 3 [1,0,4]) using bank tags []
end Blc.SelfintSingleObject.Compact45
