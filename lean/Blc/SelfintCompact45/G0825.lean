import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g25176 on (row false false k298 5 5 3 5 [1,1,1,0,2]) using bank tags [12,40,12,36,12,36,12,20,12,20,20,20,20,20,8,8,20,21,8,8,9,18,9,18,44,20,44,20,48,20,20,20,58,20,20,21,8,8,8,8,8,8,8,8]
theorem g25178 : BadRow (row false false k298 5 5 3 5 [1,1,1,1,1]) := sparse_row false false k298 5 5 3 5 [1,1,1,1,1] (by decide)
certRow g25180 on (row false false k298 5 5 3 5 [1,1,1,2,0]) using bank tags [20,20,20,20,8,8,9,18,39,20,30,20,8,8,8,8]
certRow g25182 on (row false false k298 5 5 3 5 [1,1,2,0,1]) using bank tags [12,37,12,37,12,0,20,20,20,20,20,20,20,21,20,20,9,18,9,18,44,20,44,21,19,20,40,20,19,20,19,28,8,8,8,8,8,8,8,8,2,21,2,21] except [Floor45.e9573494373430]
certRow g25184 on (row false false k298 5 5 3 5 [1,1,2,1,0]) using bank tags [12,37,12,37,12,0,20,20,20,20,20,20,9,18,44,20,44,20,39,20,30,20,8,8,8,8] except [Floor45.e9573494373434]
certRow g25186 on (row false false k298 5 5 3 5 [1,1,3,0,0]) using bank tags [12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,37,12,10,12,10,44,28,44,21]
tagSlices g25188 on (row false false k298 5 5 3 5 [1,2,0,0,2]) byParts (fun j => piece 12 j false false k298 5 5 3 5 [1,2,0,0,2]) byCover (pieces_cover 12 (by decide) false false k298 5 5 3 5 [1,2,0,0,2]) withHints bank eachTags[[44,20,44,21,8,8,8,8],[],[],[12,37,44,1,44,1,12,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1],[],[12,20,44,20,44,20],[],[12,20,12,20],[12,20,44,20,44,20,44,1,44,20],[],[44,1,44,59,44,1,44,20,44,1,44,20,44,1,44,20,44,1,44,59,44,1,44,20,12,20,44,1,44,20,44,1,44,20],[]] except []
certRow g25190 on (row false false k298 5 5 3 5 [1,2,0,1,1]) using bank tags [12,10,12,10,12,30,12,20,12,20,20,20,20,20,20,21,20,20,20,20,8,8,8,8,2,20,2,21,2,20,2,0] except [Floor45.e9573530361526]
end Blc.SelfintSingleObject.Compact45
