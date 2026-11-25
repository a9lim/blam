import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
import Blc.SelfintCompact45.Frames.Data13
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g15957 on (row false true k166 6 7 2 4 [0,5,0,2]) using bank tags []
certRow g15958 on (row false false k121 6 7 2 4 [0,5,1,1]) using bank tags []
certRow g15959 on (row false true k166 6 7 2 4 [0,5,1,1]) using bank tags []
certRow g15960 on (row false false k121 6 7 2 4 [0,5,2,0]) using bank tags []
certRow g15961 on (row false true k166 6 7 2 4 [0,5,2,0]) using bank tags []
certRow g15962 on (row false false k121 6 7 2 4 [0,6,0,1]) using bank tags []
certRow g15963 on (row false true k166 6 7 2 4 [0,6,0,1]) using bank tags []
certRow g15964 on (row false false k121 6 7 2 4 [0,6,1,0]) using bank tags []
certRow g15965 on (row false true k166 6 7 2 4 [0,6,1,0]) using bank tags []
theorem g15966 : BadRow (row false false k121 6 7 2 4 [0,7,0,0]) := sparse_row false false k121 6 7 2 4 [0,7,0,0] (by decide)
theorem g15967 : BadRow (row false true k166 6 7 2 4 [0,7,0,0]) := sparse_row false true k166 6 7 2 4 [0,7,0,0] (by decide)
certRow g15968 on (row false false k121 6 7 2 4 [1,0,0,6]) using bank tags []
certRow g15969 on (row false true k166 6 7 2 4 [1,0,0,6]) using bank tags []
certRow g15970 on (row false false k121 6 7 2 4 [1,0,1,5]) using bank tags []
certRow g15971 on (row false true k166 6 7 2 4 [1,0,1,5]) using bank tags []
certRow g15972 on (row false false k121 6 7 2 4 [1,0,2,4]) using bank tags []
certRow g15973 on (row false true k166 6 7 2 4 [1,0,2,4]) using bank tags []
certRow g15974 on (row false false k121 6 7 2 4 [1,0,3,3]) using bank tags []
certRow g15975 on (row false true k166 6 7 2 4 [1,0,3,3]) using bank tags []
certRow g15976 on (row false false k121 6 7 2 4 [1,0,4,2]) using bank tags []
certRow g15977 on (row false true k166 6 7 2 4 [1,0,4,2]) using bank tags []
certRow g15978 on (row false false k121 6 7 2 4 [1,0,5,1]) using bank tags []
certRow g15979 on (row false true k166 6 7 2 4 [1,0,5,1]) using bank tags []
certRow g15980 on (row false false k121 6 7 2 4 [1,0,6,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
