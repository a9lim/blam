import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data08
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g13170 on (row false false k106 6 5 3 4 [1,0,3,1]) byParts (fun j => piece 12 j false false k106 6 5 3 4 [1,0,3,1]) byCover (pieces_cover 12 (by decide) false false k106 6 5 3 4 [1,0,3,1]) withHints bank eachTags[[],[14,1,2,3,2,2,14,1,2,3,2,2],[14,1,2,3,2,2,14,1,2,1,2,2,14,1,2,36,2,2],[14,1,2,3,2,2,14,1,2,3,2,2],[44,1,44,1,44,1,44,2,44,9,44,1,44,19,44,1,44,1,44,2,44,9,44,47],[],[],[],[],[14,1,2,9,2,2,14,1,2,10,2,2],[],[14,1,2,9,2,2]] except []
certRow g13172 on (row false false k106 6 5 3 4 [1,0,4,0]) using bank tags []
tagSlices g13174 on (row false false k106 6 5 3 4 [1,1,0,3]) byParts (fun j => piece 12 j false false k106 6 5 3 4 [1,1,0,3]) byCover (pieces_cover 12 (by decide) false false k106 6 5 3 4 [1,1,0,3]) withHints bank eachTags[[],[14,1,2,3,2,2,14,1,2,3,2,2,14,1,2,10,2,2,14,1,2,10,2,2],[14,1,2,3,2,2],[14,1,2,3,2,2,14,1,2,3,2,2],[44,1,44,1,44,1,44,2,44,9,44,1,44,1,44,1,44,1,44,2,44,9,44,1,44,19,44,1,44,1,44,2,44,9,44,56,44,1,44,1,44,1,44,2,44,9,44,20],[],[],[],[],[14,1,2,10,2,2,14,1,2,10,2,2],[],[14,1,2,10,2,2]] except []
certRow g13176 on (row false false k106 6 5 3 4 [1,1,1,2]) using bank tags [14,1,2,10,2,2,14,1,2,23,2,2,14,1,2,9,2,2,14,1,2,10,2,2,14,1,2,10,2,2,14,1,2,0,2,2,44,1,44,1,44,1,44,2,44,9,44,20] except [Floor45.e8996615021422]
certRow g13178 on (row false false k106 6 5 3 4 [1,1,2,1]) using bank tags [14,1,2,10,2,2,14,1,2,10,2,2,14,1,2,10,2,2,14,1,2,19,2,2,14,1,2,36,2,2,44,19,44,1,44,1,44,2,44,9,44,40]
certRow g13180 on (row false false k106 6 5 3 4 [1,1,3,0]) using bank tags [14,1,2,3,2,2,14,1,2,3,2,2,14,1,2,3,2,2,14,1,2,10,2,2,14,1,2,9,2,2,44,19,44,1,44,1,44,2,44,9,44,23]
end Blc.SelfintSingleObject.Compact45
