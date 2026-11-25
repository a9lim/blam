import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
import Blc.SelfintCompact45.Frames.Data12
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12688 on (row false false k102 6 5 2 3 [1,1,3]) using bank tags []
certRow g12690 on (row false false k102 6 5 2 3 [1,2,2]) using bank tags []
certRow g12692 on (row false false k102 6 5 2 3 [1,3,1]) using bank tags []
certRow g12694 on (row false false k102 6 5 2 3 [1,4,0]) using bank tags []
certRow g12696 on (row false false k102 6 5 2 3 [2,0,3]) using bank tags []
certRow g12698 on (row false false k102 6 5 2 3 [2,1,2]) using bank tags []
certRow g12700 on (row false false k102 6 5 2 3 [2,2,1]) using bank tags []
certRow g12702 on (row false false k102 6 5 2 3 [2,3,0]) using bank tags []
certRow g12704 on (row false false k102 6 5 2 3 [3,0,2]) using bank tags []
certRow g12706 on (row false false k102 6 5 2 3 [3,1,1]) using bank tags []
certRow g12708 on (row false false k102 6 5 2 3 [3,2,0]) using bank tags []
certRow g12710 on (row false false k102 6 5 2 3 [4,0,1]) using bank tags []
certRow g12712 on (row false false k102 6 5 2 3 [4,1,0]) using bank tags []
theorem g12714 : BadRow (row false false k102 6 5 2 3 [5,0,0]) := sparse_row false false k102 6 5 2 3 [5,0,0] (by decide)
theorem g12716 : BadRow (row false false k103 6 5 2 4 [0,0,0,5]) := sparse_row false false k103 6 5 2 4 [0,0,0,5] (by decide)
theorem g12717 : BadRow (row false true k148 6 5 2 4 [0,0,0,5]) := sparse_row false true k148 6 5 2 4 [0,0,0,5] (by decide)
certRow g12718 on (row false false k103 6 5 2 4 [0,0,1,4]) using bank tags []
certRow g12719 on (row false true k148 6 5 2 4 [0,0,1,4]) using bank tags []
certRow g12720 on (row false false k103 6 5 2 4 [0,0,2,3]) using bank tags []
certRow g12721 on (row false true k148 6 5 2 4 [0,0,2,3]) using bank tags []
certRow g12722 on (row false false k103 6 5 2 4 [0,0,3,2]) using bank tags []
certRow g12723 on (row false true k148 6 5 2 4 [0,0,3,2]) using bank tags []
certRow g12724 on (row false false k103 6 5 2 4 [0,0,4,1]) using bank tags []
certRow g12725 on (row false true k148 6 5 2 4 [0,0,4,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
