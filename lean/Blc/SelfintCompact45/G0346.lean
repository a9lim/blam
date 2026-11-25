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
theorem g18870 : BadRow (row false false k177 7 3 3 3 [0,0,3]) := sparse_row false false k177 7 3 3 3 [0,0,3] (by decide)
certRow g18872 on (row false false k177 7 3 3 3 [0,1,2]) using bank tags [61,2,61,2,8]
certRow g18874 on (row false false k177 7 3 3 3 [0,2,1]) using bank tags [61,2,61,2,8]
theorem g18876 : BadRow (row false false k177 7 3 3 3 [0,3,0]) := sparse_row false false k177 7 3 3 3 [0,3,0] (by decide)
certRow g18878 on (row false false k177 7 3 3 3 [1,0,2]) using bank tags [61,2,61,2,8,61,2,61,2,8]
theorem g18880 : BadRow (row false false k177 7 3 3 3 [1,1,1]) := sparse_row false false k177 7 3 3 3 [1,1,1] (by decide)
certRow g18882 on (row false false k177 7 3 3 3 [1,2,0]) using bank tags [61,2,61,2,8]
certRow g18884 on (row false false k177 7 3 3 3 [2,0,1]) using bank tags [61,2,61,2,8,61,2,61,2,8]
certRow g18886 on (row false false k177 7 3 3 3 [2,1,0]) using bank tags [61,2,61,2,8]
theorem g18888 : BadRow (row false false k177 7 3 3 3 [3,0,0]) := sparse_row false false k177 7 3 3 3 [3,0,0] (by decide)
theorem g18890 : BadRow (row false false k178 7 3 3 4 [0,0,0,3]) := sparse_row false false k178 7 3 3 4 [0,0,0,3] (by decide)
theorem g18891 : BadRow (row false true k214 7 3 3 4 [0,0,0,3]) := sparse_row false true k214 7 3 3 4 [0,0,0,3] (by decide)
certRow g18892 on (row false false k178 7 3 3 4 [0,0,1,2]) using bank tags [3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,33,6,6]
certRow g18893 on (row false true k214 7 3 3 4 [0,0,1,2]) using bank tags [3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,33,6,1,33,13,1,1]
certRow g18894 on (row false false k178 7 3 3 4 [0,0,2,1]) using bank tags [3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,3,6,6,3,6,6,6,6,33,6,6]
certRow g18895 on (row false true k214 7 3 3 4 [0,0,2,1]) using bank tags [3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,9,6,1,3,13,1,1,3,13,1,1,6,6,6,33,6,1,33,13,1,1]
theorem g18896 : BadRow (row false false k178 7 3 3 4 [0,0,3,0]) := sparse_row false false k178 7 3 3 4 [0,0,3,0] (by decide)
theorem g18897 : BadRow (row false true k214 7 3 3 4 [0,0,3,0]) := sparse_row false true k214 7 3 3 4 [0,0,3,0] (by decide)
end Blc.SelfintSingleObject.Compact45
