import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data14
import Blc.SelfintCompact45.Frames.Data17
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g18926 on (row false false k178 7 3 3 4 [2,1,0,0]) using bank tags [3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6]
certRow g18927 on (row false true k214 7 3 3 4 [2,1,0,0]) using bank tags [3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1]
theorem g18928 : BadRow (row false false k178 7 3 3 4 [3,0,0,0]) := sparse_row false false k178 7 3 3 4 [3,0,0,0] (by decide)
theorem g18929 : BadRow (row false true k214 7 3 3 4 [3,0,0,0]) := sparse_row false true k214 7 3 3 4 [3,0,0,0] (by decide)
theorem g18930 : BadRow (row false false k179 7 3 3 5 [0,0,0,0,3]) := sparse_row false false k179 7 3 3 5 [0,0,0,0,3] (by decide)
theorem g18931 : BadRow (row false true k215 7 3 3 5 [0,0,0,0,3]) := sparse_row false true k215 7 3 3 5 [0,0,0,0,3] (by decide)
certRow g18932 on (row false false k179 7 3 3 5 [0,0,0,1,2]) using bank tags [2,20,2,2,2,20,2,2,2,2,1,2,3,3,3,3,44,3,44,3,9,3,6,33,9,6,1,44,33,44]
certRow g18933 on (row false true k215 7 3 3 5 [0,0,0,1,2]) using bank tags []
certRow g18934 on (row false false k179 7 3 3 5 [0,0,0,2,1]) using bank tags [2,20,2,2,20,2,20,2,2,2,2,24,2,3,3,3,3,44,3,44,3,9,3,6,33,9,6,1,44,33,44]
certRow g18935 on (row false true k215 7 3 3 5 [0,0,0,2,1]) using bank tags []
theorem g18936 : BadRow (row false false k179 7 3 3 5 [0,0,0,3,0]) := sparse_row false false k179 7 3 3 5 [0,0,0,3,0] (by decide)
theorem g18937 : BadRow (row false true k215 7 3 3 5 [0,0,0,3,0]) := sparse_row false true k215 7 3 3 5 [0,0,0,3,0] (by decide)
certRow g18938 on (row false false k179 7 3 3 5 [0,0,1,0,2]) using bank tags [2,2,1,1,2,2,2,2,2,2,2,2,2,2,2,2,43,2,1,2,3,3,3,3,3,3,3,44,3,44,44,3,44,3,3,9,3,6,9,3,6,33,9,6,33,9,6,20,44,33,44,20,44,33,44]
certRow g18939 on (row false true k215 7 3 3 5 [0,0,1,0,2]) using bank tags []
theorem g18940 : BadRow (row false false k179 7 3 3 5 [0,0,1,1,1]) := sparse_row false false k179 7 3 3 5 [0,0,1,1,1] (by decide)
theorem g18941 : BadRow (row false true k215 7 3 3 5 [0,0,1,1,1]) := sparse_row false true k215 7 3 3 5 [0,0,1,1,1] (by decide)
certRow g18942 on (row false false k179 7 3 3 5 [0,0,1,2,0]) using bank tags [2,2,1,2,2,2,2,2,2,2,2,2,2,26,2,2,3,3,3,3,44,3,44,44,3,44,3,9,3,6,33,9,6,47,44,33,44,44,3,44,2,33,6]
certRow g18943 on (row false true k215 7 3 3 5 [0,0,1,2,0]) using bank tags []
certRow g18944 on (row false false k179 7 3 3 5 [0,0,2,0,1]) using bank tags [2,2,25,20,2,2,2,2,2,2,25,2,2,2,2,2,2,25,2,25,2,3,3,3,3,3,3,3,44,3,44,44,3,44,3,3,9,3,6,9,3,6,33,9,6,33,9,6,25,44,33,44,24,44,33,44]
certRow g18945 on (row false true k215 7 3 3 5 [0,0,2,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
