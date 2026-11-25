import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g5688 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [1,2,2,2,1]) using bank tags []
certRow g5689 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [1,2,2,2,1]) using bank tags []
certRow g5690 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [1,2,2,3,0]) using bank tags []
certRow g5691 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [1,2,2,3,0]) using bank tags [14,14,1,15,1,57,57,1,1]
certRow g5692 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [1,2,3,0,2]) using bank tags []
certRow g5693 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [1,2,3,0,2]) using bank tags [1,1,57,57,57,1,1,57,1,57,57,1,57,1]
certRow g5694 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [1,2,3,1,1]) using bank tags []
certRow g5695 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [1,2,3,1,1]) using bank tags []
certRow g5696 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [1,2,3,2,0]) using bank tags []
certRow g5697 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [1,2,3,2,0]) using bank tags [14,1,57,1,57,57,1,57,57]
certRow g5698 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [1,2,4,0,1]) using bank tags []
certRow g5699 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [1,2,4,0,1]) using bank tags []
certRow g5700 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [1,2,4,1,0]) using bank tags []
certRow g5701 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [1,2,4,1,0]) using bank tags []
certRow g5702 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [1,2,5,0,0]) using bank tags []
certRow g5703 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [1,2,5,0,0]) using bank tags []
certRow g5704 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [1,3,0,0,4]) using bank tags []
certRow g5705 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [1,3,0,0,4]) using bank tags []
certRow g5706 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [1,3,0,1,3]) using bank tags []
certRow g5707 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [1,3,0,1,3]) using bank tags []
certRow g5708 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [1,3,0,2,2]) using bank tags []
certRow g5709 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [1,3,0,2,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g5710 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [1,3,0,3,1]) using bank tags []
certRow g5711 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [1,3,0,3,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
