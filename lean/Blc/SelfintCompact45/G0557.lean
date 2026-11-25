import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data20
import Blc.SelfintCompact45.Frames.Data21
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g21896 on (row false false k247 8 3 2 4 [2,0,0,1]) using bank tags [2,2,2,9,61,2,2,2,9,61,2,2,2,9,61,2,2,2,9,61,2,2,2,9,61]
certRow g21897 on (row false true k262 8 3 2 4 [2,0,0,1]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g21898 on (row false false k247 8 3 2 4 [2,0,1,0]) using bank tags [2,2,2,9,61,2,2,2,9,61,2,2,2,9,61,2,2,2,9,61,2,2,2,9,61]
certRow g21899 on (row false true k262 8 3 2 4 [2,0,1,0]) using bank tags [1,1,1,1,1,1,1,1,1,1]
certRow g21900 on (row false false k247 8 3 2 4 [2,1,0,0]) using bank tags [2,2,2,9,61,2,2,2,9,61,2,2,2,9,61]
certRow g21901 on (row false true k262 8 3 2 4 [2,1,0,0]) using bank tags [1,1,1,1,1,1]
theorem g21902 : BadRow (row false false k247 8 3 2 4 [3,0,0,0]) := sparse_row false false k247 8 3 2 4 [3,0,0,0] (by decide)
theorem g21903 : BadRow (row false true k262 8 3 2 4 [3,0,0,0]) := sparse_row false true k262 8 3 2 4 [3,0,0,0] (by decide)
theorem g21905 : BadRow (row false true k263 8 3 2 5 [0,0,0,0,3]) := sparse_row false true k263 8 3 2 5 [0,0,0,0,3] (by decide)
certRow g21907 on (row false true k263 8 3 2 5 [0,0,0,1,2]) using bank tags []
certRow g21909 on (row false true k263 8 3 2 5 [0,0,0,2,1]) using bank tags []
theorem g21911 : BadRow (row false true k263 8 3 2 5 [0,0,0,3,0]) := sparse_row false true k263 8 3 2 5 [0,0,0,3,0] (by decide)
certRow g21913 on (row false true k263 8 3 2 5 [0,0,1,0,2]) using bank tags []
theorem g21915 : BadRow (row false true k263 8 3 2 5 [0,0,1,1,1]) := sparse_row false true k263 8 3 2 5 [0,0,1,1,1] (by decide)
certRow g21917 on (row false true k263 8 3 2 5 [0,0,1,2,0]) using bank tags []
certRow g21919 on (row false true k263 8 3 2 5 [0,0,2,0,1]) using bank tags []
certRow g21921 on (row false true k263 8 3 2 5 [0,0,2,1,0]) using bank tags []
theorem g21923 : BadRow (row false true k263 8 3 2 5 [0,0,3,0,0]) := sparse_row false true k263 8 3 2 5 [0,0,3,0,0] (by decide)
certRow g21925 on (row false true k263 8 3 2 5 [0,1,0,0,2]) using bank tags []
theorem g21927 : BadRow (row false true k263 8 3 2 5 [0,1,0,1,1]) := sparse_row false true k263 8 3 2 5 [0,1,0,1,1] (by decide)
certRow g21929 on (row false true k263 8 3 2 5 [0,1,0,2,0]) using bank tags []
theorem g21931 : BadRow (row false true k263 8 3 2 5 [0,1,1,0,1]) := sparse_row false true k263 8 3 2 5 [0,1,1,0,1] (by decide)
theorem g21933 : BadRow (row false true k263 8 3 2 5 [0,1,1,1,0]) := sparse_row false true k263 8 3 2 5 [0,1,1,1,0] (by decide)
certRow g21935 on (row false true k263 8 3 2 5 [0,1,2,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
