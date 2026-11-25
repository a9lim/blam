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
certRow g21937 on (row false true k263 8 3 2 5 [0,2,0,0,1]) using bank tags []
certRow g21939 on (row false true k263 8 3 2 5 [0,2,0,1,0]) using bank tags []
certRow g21941 on (row false true k263 8 3 2 5 [0,2,1,0,0]) using bank tags []
theorem g21943 : BadRow (row false true k263 8 3 2 5 [0,3,0,0,0]) := sparse_row false true k263 8 3 2 5 [0,3,0,0,0] (by decide)
certRow g21945 on (row false true k263 8 3 2 5 [1,0,0,0,2]) using bank tags []
theorem g21947 : BadRow (row false true k263 8 3 2 5 [1,0,0,1,1]) := sparse_row false true k263 8 3 2 5 [1,0,0,1,1] (by decide)
certRow g21949 on (row false true k263 8 3 2 5 [1,0,0,2,0]) using bank tags []
theorem g21951 : BadRow (row false true k263 8 3 2 5 [1,0,1,0,1]) := sparse_row false true k263 8 3 2 5 [1,0,1,0,1] (by decide)
theorem g21953 : BadRow (row false true k263 8 3 2 5 [1,0,1,1,0]) := sparse_row false true k263 8 3 2 5 [1,0,1,1,0] (by decide)
certRow g21955 on (row false true k263 8 3 2 5 [1,0,2,0,0]) using bank tags []
theorem g21957 : BadRow (row false true k263 8 3 2 5 [1,1,0,0,1]) := sparse_row false true k263 8 3 2 5 [1,1,0,0,1] (by decide)
theorem g21959 : BadRow (row false true k263 8 3 2 5 [1,1,0,1,0]) := sparse_row false true k263 8 3 2 5 [1,1,0,1,0] (by decide)
theorem g21961 : BadRow (row false true k263 8 3 2 5 [1,1,1,0,0]) := sparse_row false true k263 8 3 2 5 [1,1,1,0,0] (by decide)
certRow g21963 on (row false true k263 8 3 2 5 [1,2,0,0,0]) using bank tags []
certRow g21965 on (row false true k263 8 3 2 5 [2,0,0,0,1]) using bank tags []
certRow g21967 on (row false true k263 8 3 2 5 [2,0,0,1,0]) using bank tags []
certRow g21969 on (row false true k263 8 3 2 5 [2,0,1,0,0]) using bank tags []
certRow g21971 on (row false true k263 8 3 2 5 [2,1,0,0,0]) using bank tags []
theorem g21973 : BadRow (row false true k263 8 3 2 5 [3,0,0,0,0]) := sparse_row false true k263 8 3 2 5 [3,0,0,0,0] (by decide)
theorem g21974 : BadRow (row false false k249 8 3 3 3 [0,0,3]) := sparse_row false false k249 8 3 3 3 [0,0,3] (by decide)
certRow g21976 on (row false false k249 8 3 3 3 [0,1,2]) using bank tags [61,6]
certRow g21978 on (row false false k249 8 3 3 3 [0,2,1]) using bank tags [61,6]
theorem g21980 : BadRow (row false false k249 8 3 3 3 [0,3,0]) := sparse_row false false k249 8 3 3 3 [0,3,0] (by decide)
certRow g21982 on (row false false k249 8 3 3 3 [1,0,2]) using bank tags [61,6,61,6]
end Blc.SelfintSingleObject.Compact45
