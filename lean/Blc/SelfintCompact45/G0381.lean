import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
import Blc.SelfintCompact45.Frames.Data18
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g19613 on (row false true k227 7 4 3 5 [0,0,1,1,2]) using bank tags []
certRow g19614 on (row false false k191 7 4 3 5 [0,0,1,2,1]) using bank tags []
certRow g19615 on (row false true k227 7 4 3 5 [0,0,1,2,1]) using bank tags []
certRow g19616 on (row false false k191 7 4 3 5 [0,0,1,3,0]) using bank tags [44,44]
certRow g19617 on (row false true k227 7 4 3 5 [0,0,1,3,0]) using bank tags []
certRow g19618 on (row false false k191 7 4 3 5 [0,0,2,0,2]) using bank tags [44,44]
certRow g19619 on (row false true k227 7 4 3 5 [0,0,2,0,2]) using bank tags []
certRow g19620 on (row false false k191 7 4 3 5 [0,0,2,1,1]) using bank tags []
certRow g19621 on (row false true k227 7 4 3 5 [0,0,2,1,1]) using bank tags []
certRow g19622 on (row false false k191 7 4 3 5 [0,0,2,2,0]) using bank tags [44]
certRow g19623 on (row false true k227 7 4 3 5 [0,0,2,2,0]) using bank tags []
certRow g19624 on (row false false k191 7 4 3 5 [0,0,3,0,1]) using bank tags [44,44,44]
certRow g19625 on (row false true k227 7 4 3 5 [0,0,3,0,1]) using bank tags []
certRow g19626 on (row false false k191 7 4 3 5 [0,0,3,1,0]) using bank tags [44]
certRow g19627 on (row false true k227 7 4 3 5 [0,0,3,1,0]) using bank tags []
theorem g19628 : BadRow (row false false k191 7 4 3 5 [0,0,4,0,0]) := sparse_row false false k191 7 4 3 5 [0,0,4,0,0] (by decide)
theorem g19629 : BadRow (row false true k227 7 4 3 5 [0,0,4,0,0]) := sparse_row false true k227 7 4 3 5 [0,0,4,0,0] (by decide)
certRow g19630 on (row false false k191 7 4 3 5 [0,1,0,0,3]) using bank tags [44,44]
certRow g19631 on (row false true k227 7 4 3 5 [0,1,0,0,3]) using bank tags []
certRow g19632 on (row false false k191 7 4 3 5 [0,1,0,1,2]) using bank tags [44,6]
certRow g19633 on (row false true k227 7 4 3 5 [0,1,0,1,2]) using bank tags []
certRow g19634 on (row false false k191 7 4 3 5 [0,1,0,2,1]) using bank tags [6]
certRow g19635 on (row false true k227 7 4 3 5 [0,1,0,2,1]) using bank tags []
certRow g19636 on (row false false k191 7 4 3 5 [0,1,0,3,0]) using bank tags [44,44]
end Blc.SelfintSingleObject.Compact45
