import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g7104 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [1,2,3,1,1]) using bank tags []
certRow g7105 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [1,2,3,1,1]) using bank tags []
certRow g7106 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [1,2,3,2,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g7107 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [1,2,3,2,0]) using bank tags []
certRow g7108 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [1,2,4,0,1]) using bank tags []
certRow g7109 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [1,2,4,0,1]) using bank tags []
certRow g7110 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [1,2,4,1,0]) using bank tags []
certRow g7111 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [1,2,4,1,0]) using bank tags []
certRow g7112 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [1,2,5,0,0]) using bank tags []
certRow g7113 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [1,2,5,0,0]) using bank tags []
certRow g7114 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [1,3,0,0,4]) using bank tags []
certRow g7115 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [1,3,0,0,4]) using bank tags []
certRow g7116 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [1,3,0,1,3]) using bank tags [1,1,57,57,57,1,1,57,57,57]
certRow g7117 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [1,3,0,1,3]) using bank tags []
certRow g7118 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [1,3,0,2,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g7119 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [1,3,0,2,2]) using bank tags []
certRow g7120 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [1,3,0,3,1]) using bank tags [14,1,57,1,57,14,1,57,1,57]
certRow g7121 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [1,3,0,3,1]) using bank tags []
certRow g7122 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [1,3,0,4,0]) using bank tags []
certRow g7123 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [1,3,0,4,0]) using bank tags []
certRow g7124 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [1,3,1,0,3]) using bank tags [1,1,57,57,57,1,1,57,57,57]
certRow g7125 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [1,3,1,0,3]) using bank tags []
certRow g7126 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [1,3,1,1,2]) using bank tags []
certRow g7127 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [1,3,1,1,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
