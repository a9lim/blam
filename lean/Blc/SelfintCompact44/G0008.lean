import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g192 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [0,0,0,1,2]) using bank tags []
certRow g193 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [0,0,0,1,2]) using bank tags []
certRow g194 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [0,0,0,2,1]) using bank tags []
certRow g195 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [0,0,0,2,1]) using bank tags []
certRow g196 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [0,0,0,3,0]) using bank tags []
certRow g197 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [0,0,0,3,0]) using bank tags []
certRow g198 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [0,0,1,0,2]) using bank tags []
certRow g199 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [0,0,1,0,2]) using bank tags []
certRow g200 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [0,0,1,1,1]) using bank tags []
certRow g201 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [0,0,1,1,1]) using bank tags []
certRow g202 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [0,0,1,2,0]) using bank tags []
certRow g203 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [0,0,1,2,0]) using bank tags []
certRow g204 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [0,0,2,0,1]) using bank tags []
certRow g205 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [0,0,2,0,1]) using bank tags []
certRow g206 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [0,0,2,1,0]) using bank tags []
certRow g207 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [0,0,2,1,0]) using bank tags []
certRow g208 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [0,0,3,0,0]) using bank tags []
certRow g209 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [0,0,3,0,0]) using bank tags []
certRow g210 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [0,1,0,0,2]) using bank tags []
certRow g211 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [0,1,0,0,2]) using bank tags []
certRow g212 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [0,1,0,1,1]) using bank tags []
certRow g213 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [0,1,0,1,1]) using bank tags []
certRow g214 on (Grammar43.fiveRow 7 5 8 false 3 3 5 [0,1,0,2,0]) using bank tags []
certRow g215 on (Grammar43.fiveRow 7 5 8 true 3 3 5 [0,1,0,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
