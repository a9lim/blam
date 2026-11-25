import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g12002 on (Grammar43.fiveRow 7 7 4 false 3 3 3 [1,0,2]) using bank tags [60,28,60,28,20,60,28,60,28,20]
certRow g12003 on (Grammar43.fiveRow 7 7 4 true 3 3 3 [1,0,2]) using bank tags []
certRow g12004 on (Grammar43.fiveRow 7 7 4 false 3 3 3 [1,1,1]) using bank tags []
certRow g12005 on (Grammar43.fiveRow 7 7 4 true 3 3 3 [1,1,1]) using bank tags []
certRow g12006 on (Grammar43.fiveRow 7 7 4 false 3 3 3 [1,2,0]) using bank tags [60,28,60,28,20]
certRow g12007 on (Grammar43.fiveRow 7 7 4 true 3 3 3 [1,2,0]) using bank tags []
certRow g12008 on (Grammar43.fiveRow 7 7 4 false 3 3 3 [2,0,1]) using bank tags [60,28,60,28,20,60,28,60,28,20]
certRow g12009 on (Grammar43.fiveRow 7 7 4 true 3 3 3 [2,0,1]) using bank tags []
certRow g12010 on (Grammar43.fiveRow 7 7 4 false 3 3 3 [2,1,0]) using bank tags [60,28,60,28,20]
certRow g12011 on (Grammar43.fiveRow 7 7 4 true 3 3 3 [2,1,0]) using bank tags []
certRow g12012 on (Grammar43.fiveRow 7 7 4 false 3 3 3 [3,0,0]) using bank tags []
certRow g12013 on (Grammar43.fiveRow 7 7 4 true 3 3 3 [3,0,0]) using bank tags []
certRow g12014 on (Grammar43.fiveRow 7 7 4 false 3 3 4 [0,0,0,3]) using bank tags []
certRow g12015 on (Grammar43.fiveRow 7 7 4 true 3 3 4 [0,0,0,3]) using bank tags []
certRow g12016 on (Grammar43.fiveRow 7 7 4 false 3 3 4 [0,0,1,2]) using bank tags [3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,20,3,3,20]
certRow g12017 on (Grammar43.fiveRow 7 7 4 true 3 3 4 [0,0,1,2]) using bank tags [3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1]
certRow g12018 on (Grammar43.fiveRow 7 7 4 false 3 3 4 [0,0,2,1]) using bank tags [3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,27,3,3,48,3,3,3,3,20,3,3,20]
certRow g12019 on (Grammar43.fiveRow 7 7 4 true 3 3 4 [0,0,2,1]) using bank tags [3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1,3,4,3,1,1,1]
certRow g12020 on (Grammar43.fiveRow 7 7 4 false 3 3 4 [0,0,3,0]) using bank tags []
certRow g12021 on (Grammar43.fiveRow 7 7 4 true 3 3 4 [0,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
