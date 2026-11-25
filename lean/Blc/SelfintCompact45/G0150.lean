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
certRow g13951 on (row false true k157 6 6 2 4 [0,0,1,5]) using bank tags []
certRow g13952 on (row false false k112 6 6 2 4 [0,0,2,4]) using bank tags []
certRow g13953 on (row false true k157 6 6 2 4 [0,0,2,4]) using bank tags []
certRow g13954 on (row false false k112 6 6 2 4 [0,0,3,3]) using bank tags []
certRow g13955 on (row false true k157 6 6 2 4 [0,0,3,3]) using bank tags []
certRow g13956 on (row false false k112 6 6 2 4 [0,0,4,2]) using bank tags []
certRow g13957 on (row false true k157 6 6 2 4 [0,0,4,2]) using bank tags []
certRow g13958 on (row false false k112 6 6 2 4 [0,0,5,1]) using bank tags []
certRow g13959 on (row false true k157 6 6 2 4 [0,0,5,1]) using bank tags []
theorem g13960 : BadRow (row false false k112 6 6 2 4 [0,0,6,0]) := sparse_row false false k112 6 6 2 4 [0,0,6,0] (by decide)
theorem g13961 : BadRow (row false true k157 6 6 2 4 [0,0,6,0]) := sparse_row false true k157 6 6 2 4 [0,0,6,0] (by decide)
certRow g13962 on (row false false k112 6 6 2 4 [0,1,0,5]) using bank tags []
certRow g13963 on (row false true k157 6 6 2 4 [0,1,0,5]) using bank tags []
certRow g13964 on (row false false k112 6 6 2 4 [0,1,1,4]) using bank tags []
certRow g13965 on (row false true k157 6 6 2 4 [0,1,1,4]) using bank tags []
certRow g13966 on (row false false k112 6 6 2 4 [0,1,2,3]) using bank tags []
certRow g13967 on (row false true k157 6 6 2 4 [0,1,2,3]) using bank tags []
certRow g13968 on (row false false k112 6 6 2 4 [0,1,3,2]) using bank tags []
certRow g13969 on (row false true k157 6 6 2 4 [0,1,3,2]) using bank tags []
certRow g13970 on (row false false k112 6 6 2 4 [0,1,4,1]) using bank tags []
certRow g13971 on (row false true k157 6 6 2 4 [0,1,4,1]) using bank tags []
certRow g13972 on (row false false k112 6 6 2 4 [0,1,5,0]) using bank tags []
certRow g13973 on (row false true k157 6 6 2 4 [0,1,5,0]) using bank tags []
certRow g13974 on (row false false k112 6 6 2 4 [0,2,0,4]) using bank tags []
end Blc.SelfintSingleObject.Compact45
