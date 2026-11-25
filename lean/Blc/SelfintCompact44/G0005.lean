import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g120 on (Grammar43.fiveRow 7 5 8 false 3 2 5 [2,0,0,0,1]) using bank tags []
certRow g121 on (Grammar43.fiveRow 7 5 8 true 3 2 5 [2,0,0,0,1]) using bank tags []
certRow g122 on (Grammar43.fiveRow 7 5 8 false 3 2 5 [2,0,0,1,0]) using bank tags []
certRow g123 on (Grammar43.fiveRow 7 5 8 true 3 2 5 [2,0,0,1,0]) using bank tags []
certRow g124 on (Grammar43.fiveRow 7 5 8 false 3 2 5 [2,0,1,0,0]) using bank tags []
certRow g125 on (Grammar43.fiveRow 7 5 8 true 3 2 5 [2,0,1,0,0]) using bank tags []
certRow g126 on (Grammar43.fiveRow 7 5 8 false 3 2 5 [2,1,0,0,0]) using bank tags []
certRow g127 on (Grammar43.fiveRow 7 5 8 true 3 2 5 [2,1,0,0,0]) using bank tags []
certRow g128 on (Grammar43.fiveRow 7 5 8 false 3 2 5 [3,0,0,0,0]) using bank tags []
certRow g129 on (Grammar43.fiveRow 7 5 8 true 3 2 5 [3,0,0,0,0]) using bank tags []
certRow g130 on (Grammar43.fiveRow 7 5 8 false 3 3 3 [0,0,3]) using bank tags []
certRow g131 on (Grammar43.fiveRow 7 5 8 true 3 3 3 [0,0,3]) using bank tags []
certRow g132 on (Grammar43.fiveRow 7 5 8 false 3 3 3 [0,1,2]) using bank tags []
certRow g133 on (Grammar43.fiveRow 7 5 8 true 3 3 3 [0,1,2]) using bank tags []
certRow g134 on (Grammar43.fiveRow 7 5 8 false 3 3 3 [0,2,1]) using bank tags []
certRow g135 on (Grammar43.fiveRow 7 5 8 true 3 3 3 [0,2,1]) using bank tags []
certRow g136 on (Grammar43.fiveRow 7 5 8 false 3 3 3 [0,3,0]) using bank tags []
certRow g137 on (Grammar43.fiveRow 7 5 8 true 3 3 3 [0,3,0]) using bank tags []
certRow g138 on (Grammar43.fiveRow 7 5 8 false 3 3 3 [1,0,2]) using bank tags []
certRow g139 on (Grammar43.fiveRow 7 5 8 true 3 3 3 [1,0,2]) using bank tags []
certRow g140 on (Grammar43.fiveRow 7 5 8 false 3 3 3 [1,1,1]) using bank tags []
certRow g141 on (Grammar43.fiveRow 7 5 8 true 3 3 3 [1,1,1]) using bank tags []
certRow g142 on (Grammar43.fiveRow 7 5 8 false 3 3 3 [1,2,0]) using bank tags []
certRow g143 on (Grammar43.fiveRow 7 5 8 true 3 3 3 [1,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
