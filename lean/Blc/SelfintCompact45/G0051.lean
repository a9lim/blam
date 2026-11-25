import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data06
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g8551 on (row false true k80 5 9 2 5 [0,5,3,1,0]) using bank tags []
certRow g8553 on (row false true k80 5 9 2 5 [0,5,4,0,0]) using bank tags []
certRow g8555 on (row false true k80 5 9 2 5 [0,6,0,0,3]) using bank tags []
certRow g8557 on (row false true k80 5 9 2 5 [0,6,0,1,2]) using bank tags []
certRow g8559 on (row false true k80 5 9 2 5 [0,6,0,2,1]) using bank tags []
certRow g8561 on (row false true k80 5 9 2 5 [0,6,0,3,0]) using bank tags []
certRow g8563 on (row false true k80 5 9 2 5 [0,6,1,0,2]) using bank tags []
certRow g8565 on (row false true k80 5 9 2 5 [0,6,1,1,1]) using bank tags []
certRow g8567 on (row false true k80 5 9 2 5 [0,6,1,2,0]) using bank tags []
certRow g8569 on (row false true k80 5 9 2 5 [0,6,2,0,1]) using bank tags []
certRow g8571 on (row false true k80 5 9 2 5 [0,6,2,1,0]) using bank tags []
certRow g8573 on (row false true k80 5 9 2 5 [0,6,3,0,0]) using bank tags []
certRow g8575 on (row false true k80 5 9 2 5 [0,7,0,0,2]) using bank tags []
certRow g8577 on (row false true k80 5 9 2 5 [0,7,0,1,1]) using bank tags []
certRow g8579 on (row false true k80 5 9 2 5 [0,7,0,2,0]) using bank tags []
certRow g8581 on (row false true k80 5 9 2 5 [0,7,1,0,1]) using bank tags []
certRow g8583 on (row false true k80 5 9 2 5 [0,7,1,1,0]) using bank tags []
certRow g8585 on (row false true k80 5 9 2 5 [0,7,2,0,0]) using bank tags []
certRow g8587 on (row false true k80 5 9 2 5 [0,8,0,0,1]) using bank tags []
certRow g8589 on (row false true k80 5 9 2 5 [0,8,0,1,0]) using bank tags []
certRow g8591 on (row false true k80 5 9 2 5 [0,8,1,0,0]) using bank tags []
theorem g8593 : BadRow (row false true k80 5 9 2 5 [0,9,0,0,0]) := sparse_row false true k80 5 9 2 5 [0,9,0,0,0] (by decide)
certRow g8595 on (row false true k80 5 9 2 5 [1,0,0,0,8]) using bank tags []
certRow g8597 on (row false true k80 5 9 2 5 [1,0,0,1,7]) using bank tags []
end Blc.SelfintSingleObject.Compact45
