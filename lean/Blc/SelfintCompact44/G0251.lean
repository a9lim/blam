import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g6024 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,2,1,1,1]) using bank tags []
certRow g6025 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,2,1,1,1]) using bank tags []
certRow g6026 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,2,1,2,0]) using bank tags []
certRow g6027 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,2,1,2,0]) using bank tags [14,1,57,1,57,57,1,57,57]
certRow g6028 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,2,2,0,1]) using bank tags []
certRow g6029 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,2,2,0,1]) using bank tags [14,14,1,15,1,57,57,1,1,14,1,57,1,1]
certRow g6030 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,2,2,1,0]) using bank tags []
certRow g6031 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,2,2,1,0]) using bank tags [14,14,1,15,1,57,57,1,1]
certRow g6032 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,2,3,0,0]) using bank tags []
certRow g6033 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,2,3,0,0]) using bank tags []
certRow g6034 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,3,0,0,2]) using bank tags []
certRow g6035 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,3,0,0,2]) using bank tags []
certRow g6036 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,3,0,1,1]) using bank tags []
certRow g6037 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,3,0,1,1]) using bank tags []
certRow g6038 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,3,0,2,0]) using bank tags []
certRow g6039 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,3,0,2,0]) using bank tags []
certRow g6040 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,3,1,0,1]) using bank tags []
certRow g6041 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,3,1,0,1]) using bank tags []
certRow g6042 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,3,1,1,0]) using bank tags []
certRow g6043 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,3,1,1,0]) using bank tags []
certRow g6044 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,3,2,0,0]) using bank tags []
certRow g6045 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,3,2,0,0]) using bank tags []
certRow g6046 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,4,0,0,1]) using bank tags []
certRow g6047 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,4,0,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
