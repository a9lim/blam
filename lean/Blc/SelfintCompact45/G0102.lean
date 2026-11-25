import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data03
import Blc.SelfintCompact45.Frames.Data07
import Blc.SelfintCompact45.Frames.Data10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g11548 on (row false false k41 5 9 3 5 [7,1,0,1,0]) using bank tags []
certRow g11550 on (row false false k41 5 9 3 5 [7,1,1,0,0]) using bank tags []
certRow g11552 on (row false false k41 5 9 3 5 [7,2,0,0,0]) using bank tags []
certRow g11554 on (row false false k41 5 9 3 5 [8,0,0,0,1]) using bank tags []
certRow g11556 on (row false false k41 5 9 3 5 [8,0,0,1,0]) using bank tags []
certRow g11558 on (row false false k41 5 9 3 5 [8,0,1,0,0]) using bank tags []
certRow g11560 on (row false false k41 5 9 3 5 [8,1,0,0,0]) using bank tags []
theorem g11562 : BadRow (row false false k41 5 9 3 5 [9,0,0,0,0]) := sparse_row false false k41 5 9 3 5 [9,0,0,0,0] (by decide)
theorem g11564 : BadRow (row false false k84 6 3 2 3 [0,0,3]) := sparse_row false false k84 6 3 2 3 [0,0,3] (by decide)
certRow g11566 on (row false false k84 6 3 2 3 [0,1,2]) using bank tags []
certRow g11568 on (row false false k84 6 3 2 3 [0,2,1]) using bank tags []
theorem g11570 : BadRow (row false false k84 6 3 2 3 [0,3,0]) := sparse_row false false k84 6 3 2 3 [0,3,0] (by decide)
certRow g11572 on (row false false k84 6 3 2 3 [1,0,2]) using bank tags []
theorem g11574 : BadRow (row false false k84 6 3 2 3 [1,1,1]) := sparse_row false false k84 6 3 2 3 [1,1,1] (by decide)
certRow g11576 on (row false false k84 6 3 2 3 [1,2,0]) using bank tags []
certRow g11578 on (row false false k84 6 3 2 3 [2,0,1]) using bank tags []
certRow g11580 on (row false false k84 6 3 2 3 [2,1,0]) using bank tags []
theorem g11582 : BadRow (row false false k84 6 3 2 3 [3,0,0]) := sparse_row false false k84 6 3 2 3 [3,0,0] (by decide)
theorem g11584 : BadRow (row false false k85 6 3 2 4 [0,0,0,3]) := sparse_row false false k85 6 3 2 4 [0,0,0,3] (by decide)
theorem g11585 : BadRow (row false true k130 6 3 2 4 [0,0,0,3]) := sparse_row false true k130 6 3 2 4 [0,0,0,3] (by decide)
certRow g11586 on (row false false k85 6 3 2 4 [0,0,1,2]) using bank tags [14,20,14,2,2,2,3,2,2,14,20,14,2,2,2,3,2,2,14,20,14,2,2,2,3,2,2,14,21,14,2,2,2,10,2,2,44,20,44,20,44,1,44,44,44,3,44,44,44,3,44,20,44,2,44,44,44,9,44,20]
certRow g11587 on (row false true k130 6 3 2 4 [0,0,1,2]) using bank tags [2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,10,14,1,17,9,1,20,1,1,32,2,1,1,1,1]
certRow g11588 on (row false false k85 6 3 2 4 [0,0,2,1]) using bank tags [14,20,14,2,2,2,3,2,2,14,20,14,2,2,2,3,2,2,14,21,14,2,2,2,3,2,2,14,20,14,2,2,2,10,2,2,44,21,44,20,44,1,44,44,44,3,44,44,44,3,44,20,44,2,44,44,44,9,44,20]
certRow g11589 on (row false true k130 6 3 2 4 [0,0,2,1]) using bank tags [2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,3,14,1,2,2,2,10,14,1,17,9,1,20,1,1,32,2,1,1,1,1]
end Blc.SelfintSingleObject.Compact45
