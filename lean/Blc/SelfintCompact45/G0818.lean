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
certRow g24863 on (row false true k319 5 5 2 6 [4,0,0,0,1,0]) using bank tags []
certRow g24864 on (row false false k295 5 5 2 6 [4,0,0,1,0,0]) using bank tags []
certRow g24865 on (row false true k319 5 5 2 6 [4,0,0,1,0,0]) using bank tags []
certRow g24866 on (row false false k295 5 5 2 6 [4,0,1,0,0,0]) using bank tags []
certRow g24867 on (row false true k319 5 5 2 6 [4,0,1,0,0,0]) using bank tags []
certRow g24868 on (row false false k295 5 5 2 6 [4,1,0,0,0,0]) using bank tags []
certRow g24869 on (row false true k319 5 5 2 6 [4,1,0,0,0,0]) using bank tags []
theorem g24870 : BadRow (row false false k295 5 5 2 6 [5,0,0,0,0,0]) := sparse_row false false k295 5 5 2 6 [5,0,0,0,0,0] (by decide)
theorem g24871 : BadRow (row false true k319 5 5 2 6 [5,0,0,0,0,0]) := sparse_row false true k319 5 5 2 6 [5,0,0,0,0,0] (by decide)
theorem g25026 : BadRow (row false false k298 5 5 3 5 [0,0,0,0,5]) := sparse_row false false k298 5 5 3 5 [0,0,0,0,5] (by decide)
certRow g25028 on (row false false k298 5 5 3 5 [0,0,0,1,4]) using bank tags []
theorem g25030 (h : BadRow [Floor45.e9573684227550]) : BadRow (row false false k298 5 5 3 5 [0,0,0,2,3]) := tagged bank [12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,44,20,44,0,44,20,44,0] (hard := [Floor45.e9573684227550]) (by decide +kernel) h
certRow g25032 on (row false false k298 5 5 3 5 [0,0,0,3,2]) using bank tags [12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,44,20,44,20,44,20,44,20]
certRow g25034 on (row false false k298 5 5 3 5 [0,0,0,4,1]) using bank tags []
theorem g25036 : BadRow (row false false k298 5 5 3 5 [0,0,0,5,0]) := sparse_row false false k298 5 5 3 5 [0,0,0,5,0] (by decide)
certRow g25038 on (row false false k298 5 5 3 5 [0,0,1,0,4]) using bank tags []
certRow g25040 on (row false false k298 5 5 3 5 [0,0,1,1,3]) using bank tags [12,10,12,10,12,10]
certRow g25042 on (row false false k298 5 5 3 5 [0,0,1,2,2]) using bank tags [12,1,12,1,44,21,44,1,12,1,12,1,44,21,44,1,44,21,44,1,20,1,20,1,20,1]
certRow g25044 on (row false false k298 5 5 3 5 [0,0,1,3,1]) using bank tags [12,1,12,1,12,1,12,1,12,10,12,10,12,10,44,1,44,0] except [Floor45.e9573528286966]
certRow g25046 on (row false false k298 5 5 3 5 [0,0,1,4,0]) using bank tags []
certRow g25048 on (row false false k298 5 5 3 5 [0,0,2,0,3]) using bank tags [12,11,12,37,12,1,12,1,12,1,12,11,12,37,12,11,12,37,12,11,12,37,12,1,12,1,12,1,12,11,12,37,12,11,12,37,12,37,12,40,12,37,12,40,44,20,44,20,44,20,44,21,44,20,44,20,44,20,44,21]
certRow g25050 on (row false false k298 5 5 3 5 [0,0,2,1,2]) using bank tags [12,1,12,1,12,1,44,20,44,1,12,1,12,1,44,21,44,1,12,1,44,20,44,1,20,1,20,1,20,1]
certRow g25052 on (row false false k298 5 5 3 5 [0,0,2,2,1]) using bank tags [12,1,44,21,44,1,44,20,44,1,12,1,44,21,44,1,20,1,20,1,20,1]
end Blc.SelfintSingleObject.Compact45
