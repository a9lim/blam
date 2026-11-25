import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14802 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [3,0,0,0,1,0]) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g14803 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [3,0,0,0,1,0]) using bank tags []
certRow g14804 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [3,0,0,1,0,0]) using bank tags [28,28,28,28]
certRow g14805 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [3,0,0,1,0,0]) using bank tags []
certRow g14806 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [3,0,1,0,0,0]) using bank tags []
certRow g14807 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [3,0,1,0,0,0]) using bank tags []
certRow g14808 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [3,1,0,0,0,0]) using bank tags []
certRow g14809 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [3,1,0,0,0,0]) using bank tags []
certRow g14810 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [4,0,0,0,0,0]) using bank tags []
certRow g14811 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [4,0,0,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
