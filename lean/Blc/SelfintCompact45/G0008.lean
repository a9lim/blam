import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data02
import Blc.SelfintCompact45.Frames.Data06
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g4856 on (row false false k30 5 8 2 3 [5,1,2]) using bank tags []
certRow g4858 on (row false false k30 5 8 2 3 [5,2,1]) using bank tags []
certRow g4860 on (row false false k30 5 8 2 3 [5,3,0]) using bank tags []
certRow g4862 on (row false false k30 5 8 2 3 [6,0,2]) using bank tags []
certRow g4864 on (row false false k30 5 8 2 3 [6,1,1]) using bank tags []
certRow g4866 on (row false false k30 5 8 2 3 [6,2,0]) using bank tags []
certRow g4868 on (row false false k30 5 8 2 3 [7,0,1]) using bank tags []
certRow g4870 on (row false false k30 5 8 2 3 [7,1,0]) using bank tags []
theorem g4872 : BadRow (row false false k30 5 8 2 3 [8,0,0]) := sparse_row false false k30 5 8 2 3 [8,0,0] (by decide)
theorem g4874 : BadRow (row false false k31 5 8 2 4 [0,0,0,8]) := sparse_row false false k31 5 8 2 4 [0,0,0,8] (by decide)
theorem g4875 : BadRow (row false true k73 5 8 2 4 [0,0,0,8]) := sparse_row false true k73 5 8 2 4 [0,0,0,8] (by decide)
certRow g4876 on (row false false k31 5 8 2 4 [0,0,1,7]) using bank tags []
certRow g4877 on (row false true k73 5 8 2 4 [0,0,1,7]) using bank tags []
certRow g4878 on (row false false k31 5 8 2 4 [0,0,2,6]) using bank tags []
certRow g4879 on (row false true k73 5 8 2 4 [0,0,2,6]) using bank tags []
certRow g4880 on (row false false k31 5 8 2 4 [0,0,3,5]) using bank tags []
certRow g4881 on (row false true k73 5 8 2 4 [0,0,3,5]) using bank tags []
certRow g4882 on (row false false k31 5 8 2 4 [0,0,4,4]) using bank tags []
certRow g4883 on (row false true k73 5 8 2 4 [0,0,4,4]) using bank tags []
certRow g4884 on (row false false k31 5 8 2 4 [0,0,5,3]) using bank tags []
certRow g4885 on (row false true k73 5 8 2 4 [0,0,5,3]) using bank tags []
certRow g4886 on (row false false k31 5 8 2 4 [0,0,6,2]) using bank tags []
certRow g4887 on (row false true k73 5 8 2 4 [0,0,6,2]) using bank tags []
certRow g4888 on (row false false k31 5 8 2 4 [0,0,7,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
