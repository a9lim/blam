import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g3000 on (Grammar43.fiveRow 7 5 8 false 7 2 4 [1,1,1,4]) using bank tags []
certRow g3001 on (Grammar43.fiveRow 7 5 8 true 7 2 4 [1,1,1,4]) using bank tags []
certRow g3002 on (Grammar43.fiveRow 7 5 8 false 7 2 4 [1,1,2,3]) using bank tags []
certRow g3003 on (Grammar43.fiveRow 7 5 8 true 7 2 4 [1,1,2,3]) using bank tags []
certRow g3004 on (Grammar43.fiveRow 7 5 8 false 7 2 4 [1,1,3,2]) using bank tags []
certRow g3005 on (Grammar43.fiveRow 7 5 8 true 7 2 4 [1,1,3,2]) using bank tags []
certRow g3006 on (Grammar43.fiveRow 7 5 8 false 7 2 4 [1,1,4,1]) using bank tags []
certRow g3007 on (Grammar43.fiveRow 7 5 8 true 7 2 4 [1,1,4,1]) using bank tags []
certRow g3008 on (Grammar43.fiveRow 7 5 8 false 7 2 4 [1,1,5,0]) using bank tags []
certRow g3009 on (Grammar43.fiveRow 7 5 8 true 7 2 4 [1,1,5,0]) using bank tags []
certRow g3010 on (Grammar43.fiveRow 7 5 8 false 7 2 4 [1,2,0,4]) using bank tags []
certRow g3011 on (Grammar43.fiveRow 7 5 8 true 7 2 4 [1,2,0,4]) using bank tags []
certRow g3012 on (Grammar43.fiveRow 7 5 8 false 7 2 4 [1,2,1,3]) using bank tags []
certRow g3013 on (Grammar43.fiveRow 7 5 8 true 7 2 4 [1,2,1,3]) using bank tags []
certRow g3014 on (Grammar43.fiveRow 7 5 8 false 7 2 4 [1,2,2,2]) using bank tags []
certRow g3015 on (Grammar43.fiveRow 7 5 8 true 7 2 4 [1,2,2,2]) using bank tags []
certRow g3016 on (Grammar43.fiveRow 7 5 8 false 7 2 4 [1,2,3,1]) using bank tags []
certRow g3017 on (Grammar43.fiveRow 7 5 8 true 7 2 4 [1,2,3,1]) using bank tags []
certRow g3018 on (Grammar43.fiveRow 7 5 8 false 7 2 4 [1,2,4,0]) using bank tags []
certRow g3019 on (Grammar43.fiveRow 7 5 8 true 7 2 4 [1,2,4,0]) using bank tags []
certRow g3020 on (Grammar43.fiveRow 7 5 8 false 7 2 4 [1,3,0,3]) using bank tags []
certRow g3021 on (Grammar43.fiveRow 7 5 8 true 7 2 4 [1,3,0,3]) using bank tags []
certRow g3022 on (Grammar43.fiveRow 7 5 8 false 7 2 4 [1,3,1,2]) using bank tags []
certRow g3023 on (Grammar43.fiveRow 7 5 8 true 7 2 4 [1,3,1,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
