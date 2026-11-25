import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g6000 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,1,1,3,0]) using bank tags []
certRow g6001 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,1,1,3,0]) using bank tags []
certRow g6002 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,1,2,0,2]) using bank tags []
certRow g6003 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,1,2,0,2]) using bank tags [1,57,1,57,1,1,57,1,1,57,1,57,1,1]
certRow g6004 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,1,2,1,1]) using bank tags []
certRow g6005 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,1,2,1,1]) using bank tags []
certRow g6006 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,1,2,2,0]) using bank tags []
certRow g6007 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,1,2,2,0]) using bank tags [14,1,57,1,1,14,1,57,57]
certRow g6008 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,1,3,0,1]) using bank tags []
certRow g6009 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,1,3,0,1]) using bank tags []
certRow g6010 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,1,3,1,0]) using bank tags []
certRow g6011 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,1,3,1,0]) using bank tags []
certRow g6012 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,1,4,0,0]) using bank tags []
certRow g6013 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,1,4,0,0]) using bank tags []
certRow g6014 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,2,0,0,3]) using bank tags []
certRow g6015 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,2,0,0,3]) using bank tags []
certRow g6016 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,2,0,1,2]) using bank tags []
certRow g6017 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,2,0,1,2]) using bank tags [1,1,57,57,57,1,1,57,1,57,57,1,57,1]
certRow g6018 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,2,0,2,1]) using bank tags []
certRow g6019 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,2,0,2,1]) using bank tags [14,1,57,1,57,57,1,57,57,1,57,1,57,1]
certRow g6020 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,2,0,3,0]) using bank tags []
certRow g6021 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,2,0,3,0]) using bank tags []
certRow g6022 on (Grammar43.fiveRow 7 5 8 false 8 2 5 [3,2,1,0,2]) using bank tags []
certRow g6023 on (Grammar43.fiveRow 7 5 8 true 8 2 5 [3,2,1,0,2]) using bank tags [1,1,57,57,57,1,1,57,1,57,57,1,57,1]
end Blc.SelfintSingleObject.Compact44
