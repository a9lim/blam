import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data03
import Blc.SelfintCompact45.Frames.Data06
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g7694 on (row false false k36 5 9 2 3 [6,0,3]) using bank tags []
certRow g7696 on (row false false k36 5 9 2 3 [6,1,2]) using bank tags []
certRow g7698 on (row false false k36 5 9 2 3 [6,2,1]) using bank tags []
certRow g7700 on (row false false k36 5 9 2 3 [6,3,0]) using bank tags []
certRow g7702 on (row false false k36 5 9 2 3 [7,0,2]) using bank tags []
certRow g7704 on (row false false k36 5 9 2 3 [7,1,1]) using bank tags []
certRow g7706 on (row false false k36 5 9 2 3 [7,2,0]) using bank tags []
certRow g7708 on (row false false k36 5 9 2 3 [8,0,1]) using bank tags []
certRow g7710 on (row false false k36 5 9 2 3 [8,1,0]) using bank tags []
theorem g7712 : BadRow (row false false k36 5 9 2 3 [9,0,0]) := sparse_row false false k36 5 9 2 3 [9,0,0] (by decide)
theorem g7714 : BadRow (row false false k37 5 9 2 4 [0,0,0,9]) := sparse_row false false k37 5 9 2 4 [0,0,0,9] (by decide)
theorem g7715 : BadRow (row false true k79 5 9 2 4 [0,0,0,9]) := sparse_row false true k79 5 9 2 4 [0,0,0,9] (by decide)
certRow g7716 on (row false false k37 5 9 2 4 [0,0,1,8]) using bank tags []
certRow g7717 on (row false true k79 5 9 2 4 [0,0,1,8]) using bank tags []
certRow g7718 on (row false false k37 5 9 2 4 [0,0,2,7]) using bank tags []
certRow g7719 on (row false true k79 5 9 2 4 [0,0,2,7]) using bank tags []
certRow g7720 on (row false false k37 5 9 2 4 [0,0,3,6]) using bank tags []
certRow g7721 on (row false true k79 5 9 2 4 [0,0,3,6]) using bank tags []
certRow g7722 on (row false false k37 5 9 2 4 [0,0,4,5]) using bank tags []
certRow g7723 on (row false true k79 5 9 2 4 [0,0,4,5]) using bank tags []
certRow g7724 on (row false false k37 5 9 2 4 [0,0,5,4]) using bank tags []
certRow g7725 on (row false true k79 5 9 2 4 [0,0,5,4]) using bank tags []
certRow g7726 on (row false false k37 5 9 2 4 [0,0,6,3]) using bank tags []
certRow g7727 on (row false true k79 5 9 2 4 [0,0,6,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
