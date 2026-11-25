import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
import Blc.SelfintCompact45.Frames.Data19
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g20910 on (row false false k203 7 5 3 5 [1,0,2,0,2]) using bank tags [44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44]
certRow g20911 on (row false true k239 7 5 3 5 [1,0,2,0,2]) using bank tags []
certRow g20912 on (row false false k203 7 5 3 5 [1,0,2,1,1]) using bank tags [6]
certRow g20913 on (row false true k239 7 5 3 5 [1,0,2,1,1]) using bank tags []
certRow g20914 on (row false false k203 7 5 3 5 [1,0,2,2,0]) using bank tags [44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44,44]
certRow g20915 on (row false true k239 7 5 3 5 [1,0,2,2,0]) using bank tags []
certRow g20916 on (row false false k203 7 5 3 5 [1,0,3,0,1]) using bank tags [44,44,44,44,44]
certRow g20917 on (row false true k239 7 5 3 5 [1,0,3,0,1]) using bank tags []
certRow g20918 on (row false false k203 7 5 3 5 [1,0,3,1,0]) using bank tags [44,44,44]
certRow g20919 on (row false true k239 7 5 3 5 [1,0,3,1,0]) using bank tags []
certRow g20920 on (row false false k203 7 5 3 5 [1,0,4,0,0]) using bank tags []
certRow g20921 on (row false true k239 7 5 3 5 [1,0,4,0,0]) using bank tags []
certRow g20922 on (row false false k203 7 5 3 5 [1,1,0,0,3]) using bank tags [44,44]
certRow g20923 on (row false true k239 7 5 3 5 [1,1,0,0,3]) using bank tags []
certRow g20924 on (row false false k203 7 5 3 5 [1,1,0,1,2]) using bank tags [44,6,6]
certRow g20925 on (row false true k239 7 5 3 5 [1,1,0,1,2]) using bank tags []
certRow g20926 on (row false false k203 7 5 3 5 [1,1,0,2,1]) using bank tags [6,6,6,6]
certRow g20927 on (row false true k239 7 5 3 5 [1,1,0,2,1]) using bank tags []
certRow g20928 on (row false false k203 7 5 3 5 [1,1,0,3,0]) using bank tags [44,44,44,44]
certRow g20929 on (row false true k239 7 5 3 5 [1,1,0,3,0]) using bank tags []
certRow g20930 on (row false false k203 7 5 3 5 [1,1,1,0,2]) using bank tags [44,6,6,6,6]
certRow g20931 on (row false true k239 7 5 3 5 [1,1,1,0,2]) using bank tags []
theorem g20932 : BadRow (row false false k203 7 5 3 5 [1,1,1,1,1]) := sparse_row false false k203 7 5 3 5 [1,1,1,1,1] (by decide)
theorem g20933 : BadRow (row false true k239 7 5 3 5 [1,1,1,1,1]) := sparse_row false true k239 7 5 3 5 [1,1,1,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
