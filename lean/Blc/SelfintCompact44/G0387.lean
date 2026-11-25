import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g8998 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [1,0,2,0,2]) using bank tags []
certRow g8999 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [1,0,2,0,2]) using bank tags []
certRow g9000 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [1,0,2,1,1]) using bank tags []
certRow g9001 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [1,0,2,1,1]) using bank tags [28,28,28]
certRow g9002 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [1,0,2,2,0]) using bank tags []
certRow g9003 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [1,0,2,2,0]) using bank tags []
certRow g9004 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [1,0,3,0,1]) using bank tags []
certRow g9005 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [1,0,3,0,1]) using bank tags []
certRow g9006 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [1,0,3,1,0]) using bank tags []
certRow g9007 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [1,0,3,1,0]) using bank tags []
certRow g9008 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [1,0,4,0,0]) using bank tags []
certRow g9009 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [1,0,4,0,0]) using bank tags []
certRow g9010 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [1,1,0,0,3]) using bank tags []
certRow g9011 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [1,1,0,0,3]) using bank tags []
certRow g9012 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [1,1,0,1,2]) using bank tags []
certRow g9013 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [1,1,0,1,2]) using bank tags [28,28,28,28,28,56]
certRow g9014 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [1,1,0,2,1]) using bank tags []
certRow g9015 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [1,1,0,2,1]) using bank tags [28,28,28,28,28,56]
certRow g9016 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [1,1,0,3,0]) using bank tags []
certRow g9017 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [1,1,0,3,0]) using bank tags []
certRow g9018 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [1,1,1,0,2]) using bank tags []
certRow g9019 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [1,1,1,0,2]) using bank tags [28,28,28,28,28,56,56]
certRow g9020 on (Grammar43.fiveRow 7 6 6 false 5 2 5 [1,1,1,1,1]) using bank tags []
certRow g9021 on (Grammar43.fiveRow 7 6 6 true 5 2 5 [1,1,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
