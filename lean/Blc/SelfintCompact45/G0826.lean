import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g25192 on (row false false k298 5 5 3 5 [1,2,0,2,0]) byParts (fun j => piece 12 j false false k298 5 5 3 5 [1,2,0,2,0]) byCover (pieces_cover 12 (by decide) false false k298 5 5 3 5 [1,2,0,2,0]) withHints bank eachTags[[44,20,44,21,8,8,8,8],[],[],[12,37,44,1,44,1,44,1,44,1,12,39,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,12,37,44,1,44,1],[],[12,20,44,20,44,30,44,20,44,20],[],[12,20,44,1,44,48,12,20,44,1,44,39],[12,0,44,1,44,48,44,1,44,89],[44,1,44,21,44,1,44,21,44,1,44,20,44,1,44,83,44,1,44,20],[],[]] except [Floor45.e9573494192762]
certRow g25194 on (row false false k298 5 5 3 5 [1,2,1,0,1]) using bank tags [12,10,12,10,12,37,12,37,12,30,12,20,12,20,12,20,20,20,20,20,20,20,20,27,20,20,44,20,44,28,8,8,8,8,2,20,2,21]
certRow g25196 on (row false false k298 5 5 3 5 [1,2,1,1,0]) using bank tags [12,10,12,10,12,37,12,37,12,20,20,20,20,20,20,20,44,20,44,28]
certRow g25198 on (row false false k298 5 5 3 5 [1,2,2,0,0]) using bank tags [44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,12,37,44,1,44,1,44,1,44,1,44,1,44,48,44,20,44,20,44,20,44,20,44,1,44,28,44,1,44,20,44,1,44,58]
certRow g25200 on (row false false k298 5 5 3 5 [1,3,0,0,1]) using bank tags [12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,20,12,20]
certRow g25202 on (row false false k298 5 5 3 5 [1,3,0,1,0]) using bank tags [12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,20,12,10,12,10,44,0,44,21,44,0,44,0] except [Floor45.e9676609584346,Floor45.e9676609576794,Floor45.e9573530361690]
certRow g25204 on (row false false k298 5 5 3 5 [1,3,1,0,0]) using bank tags [12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,44,28,44,28]
certRow g25206 on (row false false k298 5 5 3 5 [1,4,0,0,0]) using bank tags []
certRow g25208 on (row false false k298 5 5 3 5 [2,0,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact45
