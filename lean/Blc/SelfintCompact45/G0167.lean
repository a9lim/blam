import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data09
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14596 on (row false false k115 6 6 3 4 [0,0,2,4]) using bank tags []
certRow g14597 on (row false true k160 6 6 3 4 [0,0,2,4]) using bank tags []
certRow g14598 on (row false false k115 6 6 3 4 [0,0,3,3]) using bank tags []
certRow g14599 on (row false true k160 6 6 3 4 [0,0,3,3]) using bank tags []
certRow g14600 on (row false false k115 6 6 3 4 [0,0,4,2]) using bank tags []
certRow g14601 on (row false true k160 6 6 3 4 [0,0,4,2]) using bank tags []
certRow g14602 on (row false false k115 6 6 3 4 [0,0,5,1]) using bank tags []
certRow g14603 on (row false true k160 6 6 3 4 [0,0,5,1]) using bank tags []
theorem g14604 : BadRow (row false false k115 6 6 3 4 [0,0,6,0]) := sparse_row false false k115 6 6 3 4 [0,0,6,0] (by decide)
theorem g14605 : BadRow (row false true k160 6 6 3 4 [0,0,6,0]) := sparse_row false true k160 6 6 3 4 [0,0,6,0] (by decide)
certRow g14606 on (row false false k115 6 6 3 4 [0,1,0,5]) using bank tags []
certRow g14607 on (row false true k160 6 6 3 4 [0,1,0,5]) using bank tags []
certRow g14608 on (row false false k115 6 6 3 4 [0,1,1,4]) using bank tags []
certRow g14609 on (row false true k160 6 6 3 4 [0,1,1,4]) using bank tags []
certRow g14610 on (row false false k115 6 6 3 4 [0,1,2,3]) using bank tags [2,2,2,2,44,44,44,11,44,44,44,37,44,44,44,44,44,1,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44,2,2,44,44,44,1,44,44,44,20,44,44]
certRow g14611 on (row false true k160 6 6 3 4 [0,1,2,3]) using bank tags [2,2,2,9,14,1,2,2,2,20,14,1,5,12,5,37,5,1,1,2,5,11,1,1,1,12,1,1,1,1,1,2,1,1,1,1,1,12,1,1,1,1,1,2,1,1,1,1,2,2,2,10,14,1,17,9,1,20,1,1,32,2,1,1,1,1]
certRow g14612 on (row false false k115 6 6 3 4 [0,1,3,2]) using bank tags [2,2,2,2,44,44,44,1,44,44,44,1,44,44,44,44,44,1,44,44,44,1,44,44,2,2,44,44,44,1,44,44,44,20,44,44]
certRow g14613 on (row false true k160 6 6 3 4 [0,1,3,2]) using bank tags [2,2,2,9,14,1,2,2,2,20,14,1,1,12,1,1,1,1,1,2,1,1,1,1,1,12,1,1,1,1,1,2,1,1,1,1,2,2,2,10,14,1,17,9,1,20,1,1,32,2,1,1,1,1]
certRow g14614 on (row false false k115 6 6 3 4 [0,1,4,1]) using bank tags []
certRow g14615 on (row false true k160 6 6 3 4 [0,1,4,1]) using bank tags []
certRow g14616 on (row false false k115 6 6 3 4 [0,1,5,0]) using bank tags []
certRow g14617 on (row false true k160 6 6 3 4 [0,1,5,0]) using bank tags []
certRow g14618 on (row false false k115 6 6 3 4 [0,2,0,4]) using bank tags []
certRow g14619 on (row false true k160 6 6 3 4 [0,2,0,4]) using bank tags []
end Blc.SelfintSingleObject.Compact45
