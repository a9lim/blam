import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f2485 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [1,1,2,0,0]) using bank tags [37,37,37,37,37,20,0,19,19,0,33,33,33,20] except [Floor45.e9558988121578,Floor45.e9558988020202]
certRow f2486 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [1,2,0,0,1]) using bank tags [37,37,19,19,39,20,20,20,20,20,20,20,20,20,33,33,33,33,33]
certRow f2487 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [1,2,0,1,0]) using bank tags [37,37,19,37,19,20,20,20,20,19,40,20,0,20,33,33,33,33,33,21,76] except [Floor45.e9558988017498]
certRow f2488 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [1,2,1,0,0]) using bank tags [37,37,37,37,37,20,20,19,19,21,33,33,33,20]
certRow f2489 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [2,0,0,0,2]) using bank tags []
certRow f2490 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [2,0,0,1,1]) using bank tags [33,33,33,33,33,19,1,18,20,36,36,20,21,20]
certRow f2491 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [2,0,0,2,0]) using bank tags []
certRow f2492 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [2,0,1,0,1]) using bank tags [33,33,33,33,33,18,1,36,20,36,36,20,20,0] except [Floor45.e9558987995862]
certRow f2493 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [2,0,1,1,0]) using bank tags [33,33,33,33,33,18,18,36,21,33,33,23,36,20]
certRow f2494 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [2,0,2,0,0]) using bank tags []
certRow f2495 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [2,1,0,0,1]) using bank tags [33,33,33,33,33,36,36,36,20,36,36,20,20,20]
certRow f2496 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [2,1,0,1,0]) using bank tags [33,33,33,33,33,36,36,36,20,33,33,36,36,20]
certRow f2497 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [2,1,1,0,0]) using bank tags [33,33,33,33,33,36,36,33,33,36]
certRow f2498 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,1,0] [2,2,0,0,0]) using bank tags []
certRow f2544 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,0,0,1,2]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,20,20,20,8,0,8] except [Floor45.e9636577807214]
certRow f2545 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,0,0,2,1]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,20,20,20,8,0,8] except [Floor45.e9636577807222]
certRow f2546 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,0,1,0,2]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,20,20,20,20,20,8,8,0,0,8,8] except [Floor45.e9636577807982,Floor45.e9636577807278]
theorem f2547 : BadRow (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,0,1,1,1]) := sparse_four ⟨1,3,2,2,5,3⟩ [0,1,1] [0,0,1,1,1] (by decide)
certRow f2548 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,0,1,2,0]) using bank tags [11,11,12,11,11,11,12,12,12,11,11,12,11,11,12,20,20,20,8,0,8,0] except [Floor45.e9636577807994,Floor45.e9636575980986]
certRow f2549 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,0,2,0,1]) using bank tags [11,11,12,11,12,11,11,12,12,11,12,11,12,12,11,11,12,11,12,11,11,11,11,20,20,20,20,20,8,8,0,0,8,8] except [Floor45.e9636577808182,Floor45.e9636577807318]
certRow f2550 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,0,2,1,0]) using bank tags [11,12,12,11,12,12,12,12,12,11,12,12,11,11,12,20,20,20,8,0,8,0] except [Floor45.e9636577808186,Floor45.e9636575981018]
certRow f2551 on (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,1,0,0,2]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,20,20,20,20,20]
theorem f2552 : BadRow (Grammar43.fourRow ⟨1,3,2,2,5,3⟩ [0,1,1] [0,1,0,1,1]) := sparse_four ⟨1,3,2,2,5,3⟩ [0,1,1] [0,1,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
