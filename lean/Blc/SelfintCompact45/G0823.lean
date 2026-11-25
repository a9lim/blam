import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g25148 on (row false false k298 5 5 3 5 [1,0,1,0,3]) using bank tags [12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,36,12,36,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,37,12,1,12,36,12,36,12,21,12,20,12,0,44,20,44,20,44,20,44,20,44,20,44,20,44,20,44,21,44,20,44,148] except [Floor45.e9573493551326]
certRow g25150 on (row false false k298 5 5 3 5 [1,0,1,1,2]) using bank tags [12,21,12,36,12,36,12,0,20,21,20,21,20,21] except [Floor45.e9573493513070]
certRow g25152 on (row false false k298 5 5 3 5 [1,0,1,2,1]) using bank tags [12,21,12,20,20,21,20,20,20,21,2,21,2,46]
certRow g25154 on (row false false k298 5 5 3 5 [1,0,1,3,0]) using bank tags [12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,36,12,36,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,10,12,37,12,1,12,36,12,36,12,21,12,20,12,0,12,10,12,10,44,20,44,20,44,20,44,20,44,20,44,21,44,0,44,0] except [Floor45.e9573493551354,Floor45.e9676609575802,Floor45.e9573530360698]
tagSlices g25156 on (row false false k298 5 5 3 5 [1,0,2,0,2]) byParts (fun j => piece 12 j false false k298 5 5 3 5 [1,0,2,0,2]) byCover (pieces_cover 12 (by decide) false false k298 5 5 3 5 [1,0,2,0,2]) withHints bank eachTags[[8,8,8,8,44,20,44,20],[],[],[12,37,44,1,44,1,12,1,12,1,44,1,44,1,44,1,44,1],[],[12,20,44,1,44,18],[44,1,44,21,44,1,44,18],[12,20,12,20],[12,20,44,1,44,23],[],[12,20,44,1,44,20,44,1,44,20,12,0,44,1,44,23,44,1,44,23,44,1,44,20,44,1,44,23,12,20,44,1,44,23],[]] except [Floor45.e9573493540782]
certRow g25158 on (row false false k298 5 5 3 5 [1,0,2,1,1]) using bank tags [20,20,20,20,20,20,2,21,2,141]
end Blc.SelfintSingleObject.Compact45
