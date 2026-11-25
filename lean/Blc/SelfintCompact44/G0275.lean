import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g6600 on (Grammar43.fiveRow 7 5 8 false 8 3 4 [6,1,0,1]) using bank tags []
certRow g6601 on (Grammar43.fiveRow 7 5 8 true 8 3 4 [6,1,0,1]) using bank tags []
certRow g6602 on (Grammar43.fiveRow 7 5 8 false 8 3 4 [6,1,1,0]) using bank tags []
certRow g6603 on (Grammar43.fiveRow 7 5 8 true 8 3 4 [6,1,1,0]) using bank tags []
certRow g6604 on (Grammar43.fiveRow 7 5 8 false 8 3 4 [6,2,0,0]) using bank tags []
certRow g6605 on (Grammar43.fiveRow 7 5 8 true 8 3 4 [6,2,0,0]) using bank tags []
certRow g6606 on (Grammar43.fiveRow 7 5 8 false 8 3 4 [7,0,0,1]) using bank tags []
certRow g6607 on (Grammar43.fiveRow 7 5 8 true 8 3 4 [7,0,0,1]) using bank tags []
certRow g6608 on (Grammar43.fiveRow 7 5 8 false 8 3 4 [7,0,1,0]) using bank tags []
certRow g6609 on (Grammar43.fiveRow 7 5 8 true 8 3 4 [7,0,1,0]) using bank tags []
certRow g6610 on (Grammar43.fiveRow 7 5 8 false 8 3 4 [7,1,0,0]) using bank tags []
certRow g6611 on (Grammar43.fiveRow 7 5 8 true 8 3 4 [7,1,0,0]) using bank tags []
certRow g6612 on (Grammar43.fiveRow 7 5 8 false 8 3 4 [8,0,0,0]) using bank tags []
certRow g6613 on (Grammar43.fiveRow 7 5 8 true 8 3 4 [8,0,0,0]) using bank tags []
certRow g6614 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [0,0,0,0,8]) using bank tags []
certRow g6615 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [0,0,0,0,8]) using bank tags []
certRow g6616 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [0,0,0,1,7]) using bank tags []
certRow g6617 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [0,0,0,1,7]) using bank tags []
certRow g6618 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [0,0,0,2,6]) using bank tags []
certRow g6619 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [0,0,0,2,6]) using bank tags []
certRow g6620 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [0,0,0,3,5]) using bank tags []
certRow g6621 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [0,0,0,3,5]) using bank tags []
certRow g6622 on (Grammar43.fiveRow 7 5 8 false 8 3 5 [0,0,0,4,4]) using bank tags []
certRow g6623 on (Grammar43.fiveRow 7 5 8 true 8 3 5 [0,0,0,4,4]) using bank tags []
end Blc.SelfintSingleObject.Compact44
