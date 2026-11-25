import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f5123 on (Grammar43.fourRow ⟨3,2,2,2,4,6⟩ [2,0] [2,2,1,1]) using bank tags []
certRow f5124 on (Grammar43.fourRow ⟨3,2,2,2,4,6⟩ [2,0] [2,2,2,0]) using bank tags []
certRow f5125 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [0,1,2,2]) using bank tags [56,1,1]
certRow f5126 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [0,2,1,2]) using bank tags [6,6,6]
certRow f5127 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [0,2,2,1]) using bank tags [6,56,6]
certRow f5128 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [1,0,2,2]) using bank tags [56,1,56,1,1]
certRow f5129 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [1,1,1,2]) using bank tags []
certRow f5130 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [1,1,2,1]) using bank tags []
certRow f5131 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [1,2,0,2]) using bank tags [56,21,6,1,1]
certRow f5132 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [1,2,1,1]) using bank tags []
certRow f5133 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [1,2,2,0]) using bank tags [56,56,1]
certRow f5134 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [2,0,1,2]) using bank tags [48,48,20,20,23]
certRow f5135 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [2,0,2,1]) using bank tags [48,48,20,48,20]
certRow f5136 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [2,1,0,2]) using bank tags [48,48,20,20,23]
certRow f5137 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [2,1,1,1]) using bank tags []
certRow f5138 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [2,1,2,0]) using bank tags [48,48,20]
certRow f5139 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [2,2,0,1]) using bank tags [48,48,48,48,48]
certRow f5140 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [0,3] [2,2,1,0]) using bank tags [48,48,48]
certRow f5141 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [1,2] [0,1,2,2]) using bank tags []
certRow f5142 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [1,2] [0,2,1,2]) using bank tags []
certRow f5143 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [1,2] [0,2,2,1]) using bank tags []
certRow f5144 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [1,2] [1,0,2,2]) using bank tags []
certRow f5145 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [1,2] [1,1,1,2]) using bank tags []
certRow f5146 on (Grammar43.fourRow ⟨3,2,3,2,4,5⟩ [1,2] [1,1,2,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
