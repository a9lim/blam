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
certRow g13906 on (row false false k111 6 6 2 3 [1,0,5]) using bank tags []
certRow g13908 on (row false false k111 6 6 2 3 [1,1,4]) using bank tags []
certRow g13910 on (row false false k111 6 6 2 3 [1,2,3]) using bank tags []
certRow g13912 on (row false false k111 6 6 2 3 [1,3,2]) using bank tags []
certRow g13914 on (row false false k111 6 6 2 3 [1,4,1]) using bank tags []
certRow g13916 on (row false false k111 6 6 2 3 [1,5,0]) using bank tags []
certRow g13918 on (row false false k111 6 6 2 3 [2,0,4]) using bank tags []
certRow g13920 on (row false false k111 6 6 2 3 [2,1,3]) using bank tags []
certRow g13922 on (row false false k111 6 6 2 3 [2,2,2]) using bank tags []
certRow g13924 on (row false false k111 6 6 2 3 [2,3,1]) using bank tags []
certRow g13926 on (row false false k111 6 6 2 3 [2,4,0]) using bank tags []
certRow g13928 on (row false false k111 6 6 2 3 [3,0,3]) using bank tags []
certRow g13930 on (row false false k111 6 6 2 3 [3,1,2]) using bank tags []
certRow g13932 on (row false false k111 6 6 2 3 [3,2,1]) using bank tags []
certRow g13934 on (row false false k111 6 6 2 3 [3,3,0]) using bank tags []
certRow g13936 on (row false false k111 6 6 2 3 [4,0,2]) using bank tags []
certRow g13938 on (row false false k111 6 6 2 3 [4,1,1]) using bank tags []
certRow g13940 on (row false false k111 6 6 2 3 [4,2,0]) using bank tags []
certRow g13942 on (row false false k111 6 6 2 3 [5,0,1]) using bank tags []
certRow g13944 on (row false false k111 6 6 2 3 [5,1,0]) using bank tags []
theorem g13946 : BadRow (row false false k111 6 6 2 3 [6,0,0]) := sparse_row false false k111 6 6 2 3 [6,0,0] (by decide)
theorem g13948 : BadRow (row false false k112 6 6 2 4 [0,0,0,6]) := sparse_row false false k112 6 6 2 4 [0,0,0,6] (by decide)
theorem g13949 : BadRow (row false true k157 6 6 2 4 [0,0,0,6]) := sparse_row false true k157 6 6 2 4 [0,0,0,6] (by decide)
certRow g13950 on (row false false k112 6 6 2 4 [0,0,1,5]) using bank tags []
end Blc.SelfintSingleObject.Compact45
