import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
import Blc.SelfintCompact45.Frames.Data14
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g16834 on (row false false k123 6 7 3 3 [2,4,1]) using bank tags []
certRow g16836 on (row false false k123 6 7 3 3 [2,5,0]) using bank tags []
certRow g16838 on (row false false k123 6 7 3 3 [3,0,4]) using bank tags []
certRow g16840 on (row false false k123 6 7 3 3 [3,1,3]) using bank tags []
certRow g16842 on (row false false k123 6 7 3 3 [3,2,2]) using bank tags []
certRow g16844 on (row false false k123 6 7 3 3 [3,3,1]) using bank tags []
certRow g16846 on (row false false k123 6 7 3 3 [3,4,0]) using bank tags []
certRow g16848 on (row false false k123 6 7 3 3 [4,0,3]) using bank tags []
certRow g16850 on (row false false k123 6 7 3 3 [4,1,2]) using bank tags []
certRow g16852 on (row false false k123 6 7 3 3 [4,2,1]) using bank tags []
certRow g16854 on (row false false k123 6 7 3 3 [4,3,0]) using bank tags []
certRow g16856 on (row false false k123 6 7 3 3 [5,0,2]) using bank tags []
certRow g16858 on (row false false k123 6 7 3 3 [5,1,1]) using bank tags []
certRow g16860 on (row false false k123 6 7 3 3 [5,2,0]) using bank tags []
certRow g16862 on (row false false k123 6 7 3 3 [6,0,1]) using bank tags []
certRow g16864 on (row false false k123 6 7 3 3 [6,1,0]) using bank tags []
theorem g16866 : BadRow (row false false k123 6 7 3 3 [7,0,0]) := sparse_row false false k123 6 7 3 3 [7,0,0] (by decide)
theorem g16868 : BadRow (row false false k124 6 7 3 4 [0,0,0,7]) := sparse_row false false k124 6 7 3 4 [0,0,0,7] (by decide)
theorem g16869 : BadRow (row false true k169 6 7 3 4 [0,0,0,7]) := sparse_row false true k169 6 7 3 4 [0,0,0,7] (by decide)
certRow g16870 on (row false false k124 6 7 3 4 [0,0,1,6]) using bank tags []
certRow g16871 on (row false true k169 6 7 3 4 [0,0,1,6]) using bank tags []
certRow g16872 on (row false false k124 6 7 3 4 [0,0,2,5]) using bank tags []
certRow g16873 on (row false true k169 6 7 3 4 [0,0,2,5]) using bank tags []
certRow g16874 on (row false false k124 6 7 3 4 [0,0,3,4]) using bank tags []
end Blc.SelfintSingleObject.Compact45
