import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f5344 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,1,2,2,0]) using bank tags [5,12,1,5,12,1,1,12,1,1,5,12,1,3,3,3]
certRow f5345 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,2,0,1,2]) using bank tags [5,5,35,35,28,20,20,20,20,20,20,20,20,20,5,5,35,35,1,3,3,3,3,3]
certRow f5346 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,2,0,2,1]) using bank tags [5,5,35,5,35,20,20,20,20,5,35,20,20,20,5,5,35,5,35,3,3,3,3,3]
certRow f5347 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,2,1,0,2]) using bank tags [5,5,35,35,28,20,20,20,20,20,20,20,20,20,5,5,35,35,1,3,3,3,3,3]
certRow f5348 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,2,1,1,1]) using bank tags [2,2,2,2,2,2,2,2,2]
certRow f5349 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,2,1,2,0]) using bank tags [5,5,35,20,20,20,20,20,28,20,5,5,35,3,3,3]
certRow f5350 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,2,2,0,1]) using bank tags [5,5,12,5,12,20,20,12,20,5,12,20,12,20,5,5,12,5,12,3,3,3,3,3]
certRow f5351 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [0,2,2,1,0]) using bank tags [5,5,12,20,20,12,20,20,12,171,5,5,12,3,3,3]
certRow f5352 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,0,0,2,2]) using bank tags [12,1,12,1,1,12,1,12,12,1,1,1,1,1]
certRow f5353 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,0,1,1,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3]
certRow f5354 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,0,1,2,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,33]
certRow f5355 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,0,2,0,2]) using bank tags [5,35,1,1,1,5,35,20,1,1,1,1,1,1]
certRow f5356 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,0,2,1,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,33]
certRow f5357 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,0,2,2,0]) using bank tags [5,12,1,12,1,5,12,1,1,12,1,12,1,1]
certRow f5358 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,1,0,1,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,33]
certRow f5359 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,1,0,2,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,33,33,33]
certRow f5360 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,1,1,0,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,33,33]
theorem f5361 : BadRow (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,1,1,1,1]) := sparse_four ⟨2,2,2,2,5,5⟩ [0,2] [1,1,1,1,1] (by decide)
certRow f5362 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,1,1,2,0]) using bank tags [2,2,2,2,2,2,2,2,2,3,3,3,3,33]
certRow f5363 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,1,2,0,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,33,33,33]
certRow f5364 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,1,2,1,0]) using bank tags [2,2,2,2,2,2,2,2,2,3,3,3,3,33]
certRow f5365 on (Grammar43.fourRow ⟨2,2,2,2,5,5⟩ [0,2] [1,2,0,0,2]) using bank tags [5,5,35,35,1,20,20,20,1,1,1,1,1,1]
end Blc.SelfintSingleObject.Compact45
