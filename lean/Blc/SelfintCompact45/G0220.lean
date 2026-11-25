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
certRow g16923 on (row false true k169 6 7 3 4 [0,4,1,2]) using bank tags []
certRow g16924 on (row false false k124 6 7 3 4 [0,4,2,1]) using bank tags []
certRow g16925 on (row false true k169 6 7 3 4 [0,4,2,1]) using bank tags []
certRow g16926 on (row false false k124 6 7 3 4 [0,4,3,0]) using bank tags []
certRow g16927 on (row false true k169 6 7 3 4 [0,4,3,0]) using bank tags []
certRow g16928 on (row false false k124 6 7 3 4 [0,5,0,2]) using bank tags []
certRow g16929 on (row false true k169 6 7 3 4 [0,5,0,2]) using bank tags []
certRow g16930 on (row false false k124 6 7 3 4 [0,5,1,1]) using bank tags []
certRow g16931 on (row false true k169 6 7 3 4 [0,5,1,1]) using bank tags []
certRow g16932 on (row false false k124 6 7 3 4 [0,5,2,0]) using bank tags []
certRow g16933 on (row false true k169 6 7 3 4 [0,5,2,0]) using bank tags []
certRow g16934 on (row false false k124 6 7 3 4 [0,6,0,1]) using bank tags []
certRow g16935 on (row false true k169 6 7 3 4 [0,6,0,1]) using bank tags []
certRow g16936 on (row false false k124 6 7 3 4 [0,6,1,0]) using bank tags []
certRow g16937 on (row false true k169 6 7 3 4 [0,6,1,0]) using bank tags []
theorem g16938 : BadRow (row false false k124 6 7 3 4 [0,7,0,0]) := sparse_row false false k124 6 7 3 4 [0,7,0,0] (by decide)
theorem g16939 : BadRow (row false true k169 6 7 3 4 [0,7,0,0]) := sparse_row false true k169 6 7 3 4 [0,7,0,0] (by decide)
certRow g16940 on (row false false k124 6 7 3 4 [1,0,0,6]) using bank tags []
certRow g16941 on (row false true k169 6 7 3 4 [1,0,0,6]) using bank tags []
certRow g16942 on (row false false k124 6 7 3 4 [1,0,1,5]) using bank tags []
certRow g16943 on (row false true k169 6 7 3 4 [1,0,1,5]) using bank tags []
certRow g16944 on (row false false k124 6 7 3 4 [1,0,2,4]) using bank tags []
certRow g16945 on (row false true k169 6 7 3 4 [1,0,2,4]) using bank tags []
certRow g16946 on (row false false k124 6 7 3 4 [1,0,3,3]) using bank tags [1,44,44,12,44,1,44,2,1,44,44,12,44,1,44,2,1,44,44,12,44,1,44,2,1,44,44,12,44,1,44,2,1,44,44,12,44,1,44,2,1,44,44,12,44,1,44,2,1,44,44,12,44,1,44,2]
end Blc.SelfintSingleObject.Compact45
