import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14103 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,0,1,0,2,1]) using bank tags [29,1,29,1,29,6,29,6,19,19,29,26,19,19,1,1,1,1,1,19,19,29,6,29,6,19,19,19,19]
certRow g14104 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,0,1,0,3,0]) using bank tags []
certRow g14105 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,0,1,0,3,0]) using bank tags []
certRow g14106 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,0,1,1,0,2]) using bank tags []
certRow g14107 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,0,1,1,0,2]) using bank tags [29,1,29,1,29,1,29,1,19,19,19,19,29,26,19,19,29,26,19,19]
certRow g14108 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,0,1,1,1,1]) using bank tags []
certRow g14109 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,0,1,1,1,1]) using bank tags []
certRow g14110 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,0,1,1,2,0]) using bank tags []
certRow g14111 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,0,1,1,2,0]) using bank tags [29,1,29,1,19,19,29,26,19,19]
certRow g14112 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,0,1,2,0,1]) using bank tags []
certRow g14113 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,0,1,2,0,1]) using bank tags [29,1,29,1,29,1,29,1,29,6,19,19,19,19,29,26,19,19,29,26,19,19,29,6,1,1,1,19,29,6,19,19,29,0] except [Floor44.e1211541581270]
certRow g14114 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,0,1,2,1,0]) using bank tags []
certRow g14115 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,0,1,2,1,0]) using bank tags [29,1,29,1,19,19,29,26,19,19,29,1,29,1]
certRow g14116 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,0,1,3,0,0]) using bank tags []
certRow g14117 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,0,1,3,0,0]) using bank tags []
certRow g14118 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,0,2,0,0,2]) using bank tags []
certRow g14119 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,0,2,0,0,2]) using bank tags []
certRow g14120 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,0,2,0,1,1]) using bank tags []
certRow g14121 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,0,2,0,1,1]) using bank tags [29,6,29,6,1,1,1,1,1,19,19,29,6,29,6,19,19,19,19]
certRow g14122 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,0,2,0,2,0]) using bank tags []
certRow g14123 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,0,2,0,2,0]) using bank tags []
certRow g14124 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,0,2,1,0,1]) using bank tags []
certRow g14125 on (Grammar43.fiveRow 8 5 4 true 4 2 6 [0,0,2,1,0,1]) using bank tags [29,35,29,0,1,1,1,19,29,35,19,19,29,0] except [Floor44.e1211550251830,Floor44.e1211541581526]
certRow g14126 on (Grammar43.fiveRow 8 5 4 false 4 2 6 [0,0,2,1,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
