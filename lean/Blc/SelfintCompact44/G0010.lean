import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g240 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [1,0,2,0,0]) using bank tags []
certRow g241 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [1,0,2,0,0]) using bank tags []
certRow g242 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [1,1,0,0,1]) using bank tags []
certRow g243 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [1,1,0,0,1]) using bank tags []
certRow g244 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [1,1,0,1,0]) using bank tags []
certRow g245 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [1,1,0,1,0]) using bank tags []
certRow g246 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [1,1,1,0,0]) using bank tags []
certRow g247 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [1,1,1,0,0]) using bank tags []
certRow g248 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [1,2,0,0,0]) using bank tags []
certRow g249 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [1,2,0,0,0]) using bank tags []
certRow g250 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [2,0,0,0,1]) using bank tags []
certRow g251 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [2,0,0,0,1]) using bank tags []
certRow g252 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [2,0,0,1,0]) using bank tags []
certRow g253 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [2,0,0,1,0]) using bank tags []
certRow g254 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [2,0,1,0,0]) using bank tags []
certRow g255 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [2,0,1,0,0]) using bank tags []
certRow g256 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [2,1,0,0,0]) using bank tags []
certRow g257 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [2,1,0,0,0]) using bank tags []
certRow g258 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [3,0,0,0,0]) using bank tags []
certRow g259 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [3,0,0,0,0]) using bank tags []
certRow g260 on (Grammar43.fiveRow 7 5 8 false 4 2 3 [0,0,4]) using bank tags []
certRow g261 on (Grammar43.fiveRow 7 5 8 true 4 2 3 [0,0,4]) using bank tags []
certRow g262 on (Grammar43.fiveRow 7 5 8 false 4 2 3 [0,1,3]) using bank tags []
certRow g263 on (Grammar43.fiveRow 7 5 8 true 4 2 3 [0,1,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
