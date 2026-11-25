import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g16787 on (row false true k167 6 7 2 5 [6,0,0,0,1]) using bank tags []
certRow g16789 on (row false true k167 6 7 2 5 [6,0,0,1,0]) using bank tags []
certRow g16791 on (row false true k167 6 7 2 5 [6,0,1,0,0]) using bank tags []
certRow g16793 on (row false true k167 6 7 2 5 [6,1,0,0,0]) using bank tags []
theorem g16795 : BadRow (row false true k167 6 7 2 5 [7,0,0,0,0]) := sparse_row false true k167 6 7 2 5 [7,0,0,0,0] (by decide)
theorem g16796 : BadRow (row false false k123 6 7 3 3 [0,0,7]) := sparse_row false false k123 6 7 3 3 [0,0,7] (by decide)
certRow g16798 on (row false false k123 6 7 3 3 [0,1,6]) using bank tags []
certRow g16800 on (row false false k123 6 7 3 3 [0,2,5]) using bank tags []
certRow g16802 on (row false false k123 6 7 3 3 [0,3,4]) using bank tags []
certRow g16804 on (row false false k123 6 7 3 3 [0,4,3]) using bank tags []
certRow g16806 on (row false false k123 6 7 3 3 [0,5,2]) using bank tags []
certRow g16808 on (row false false k123 6 7 3 3 [0,6,1]) using bank tags []
theorem g16810 : BadRow (row false false k123 6 7 3 3 [0,7,0]) := sparse_row false false k123 6 7 3 3 [0,7,0] (by decide)
certRow g16812 on (row false false k123 6 7 3 3 [1,0,6]) using bank tags []
certRow g16814 on (row false false k123 6 7 3 3 [1,1,5]) using bank tags []
certRow g16816 on (row false false k123 6 7 3 3 [1,2,4]) using bank tags []
certRow g16818 on (row false false k123 6 7 3 3 [1,3,3]) using bank tags []
certRow g16820 on (row false false k123 6 7 3 3 [1,4,2]) using bank tags []
certRow g16822 on (row false false k123 6 7 3 3 [1,5,1]) using bank tags []
certRow g16824 on (row false false k123 6 7 3 3 [1,6,0]) using bank tags []
certRow g16826 on (row false false k123 6 7 3 3 [2,0,5]) using bank tags []
certRow g16828 on (row false false k123 6 7 3 3 [2,1,4]) using bank tags []
certRow g16830 on (row false false k123 6 7 3 3 [2,2,3]) using bank tags []
certRow g16832 on (row false false k123 6 7 3 3 [2,3,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
