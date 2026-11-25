import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g7200 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [2,0,1,1,4]) using bank tags []
certRow g7201 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [2,0,1,1,4]) using bank tags []
certRow g7202 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [2,0,1,2,3]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1]
certRow g7203 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [2,0,1,2,3]) using bank tags []
certRow g7204 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [2,0,1,3,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,26,1,32,1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,26,1,32,1,1]
certRow g7205 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [2,0,1,3,2]) using bank tags []
certRow g7206 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [2,0,1,4,1]) using bank tags []
certRow g7207 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [2,0,1,4,1]) using bank tags []
certRow g7208 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [2,0,1,5,0]) using bank tags []
certRow g7209 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [2,0,1,5,0]) using bank tags []
certRow g7210 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [2,0,2,0,4]) using bank tags []
certRow g7211 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [2,0,2,0,4]) using bank tags []
certRow g7212 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [2,0,2,1,3]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1]
certRow g7213 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [2,0,2,1,3]) using bank tags []
certRow g7214 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [2,0,2,2,2]) using bank tags []
certRow g7215 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [2,0,2,2,2]) using bank tags []
certRow g7216 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [2,0,2,3,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,26,1,32,1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,26,1,32,1,1]
certRow g7217 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [2,0,2,3,1]) using bank tags []
certRow g7218 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [2,0,2,4,0]) using bank tags []
certRow g7219 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [2,0,2,4,0]) using bank tags []
certRow g7220 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [2,0,3,0,3]) using bank tags []
certRow g7221 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [2,0,3,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
