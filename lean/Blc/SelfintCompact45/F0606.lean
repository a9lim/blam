import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f2416 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,1,0,2,1]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,20,20,20,20,20,0,35,35,19,37,1,1,1,1,1,1,1,1,1,1,33,33,33,33,33,33,1,1,1,20,28,21,0,0,8] except [Floor45.e9673902590838,Floor45.e9570823009142,Floor45.e9570823003510]
certRow f2417 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,1,1,0,2]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,20,20,76,20,76,0,0,35,35,37,37,40,1,1,1,1,1,1,1,1,1,33,33,33,33,33,33,33,1,1,28,21,8,0,8,8,8] except [Floor45.e9673902591598,Floor45.e9673902590894,Floor45.e9570823009198]
theorem f2418 : BadRow (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,1,1,1,1]) := sparse_four ⟨1,3,1,2,5,4⟩ [0,0,1] [0,1,1,1,1] (by decide)
certRow f2419 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,1,1,2,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,21,0,76,0,35,35,37,1,1,1,1,1,1,1,33,33,33,33,1,28,8,8,8] except [Floor45.e9673902246842,Floor45.e9673902591610]
certRow f2420 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,1,2,0,1]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,1,1,1,20,20,0,20,0,0,0,35,35,37,37,1,1,1,1,1,1,1,1,1,1,33,33,33,33,33,33,33,1,1,1,28,28,8,0,8,8,8] except [Floor45.e9673902225206,Floor45.e9673902218710,Floor45.e9673902591798,Floor45.e9673902590934,Floor45.e9570823009238]
certRow f2421 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,1,2,1,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,21,0,0,0,35,35,37,1,1,1,1,1,1,1,33,33,33,33,1,21,8,8,8] except [Floor45.e9673902246874,Floor45.e9673902225210,Floor45.e9673902591802]
certRow f2422 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,2,0,0,2]) using bank tags []
certRow f2423 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,2,0,1,1]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,20,20,20,20,20,37,1,30,1,56,1,1,1,1,1,1,1,1,1,33,33,33,33,33,1,1,28,28,0,0,0] except [Floor45.e9570823010934,Floor45.e9570823010742,Floor45.e9570823003830]
certRow f2424 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,2,0,2,0]) using bank tags []
certRow f2425 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,2,1,0,1]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,28,28,0,21,0,37,19,40,1,56,1,1,1,1,1,1,1,1,1,33,33,33,33,33,1,0,0,8,0,8] except [Floor45.e9673902226230,Floor45.e9673902218966,Floor45.e9570823038774,Floor45.e9570823038422,Floor45.e9570823010774]
certRow f2426 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,2,1,1,0]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,28,0,0,37,37,40,1,1,1,1,1,1,1,33,33,33,28,8,8] except [Floor45.e9673902253530,Floor45.e9673902226234]
certRow f2427 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,2,2,0,0]) using bank tags []
certRow f2428 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [1,0,0,1,2]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,25,25,25,25,20,33,33,33,33,33,19,1,19,21,36,36,21,107,106,28,0,8,20,20] except [Floor45.e9570805134190]
end Blc.SelfintSingleObject.Compact45
