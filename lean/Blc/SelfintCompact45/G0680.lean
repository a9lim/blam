import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g23113 on (row false true k310 5 4 2 5 [0,1,0,2,1]) byParts (fun j => piece 24 j false true k310 5 4 2 5 [0,1,0,2,1]) byCover (pieces_cover 24 (by decide) false true k310 5 4 2 5 [0,1,0,2,1]) withHints bank eachTags[[],[2,2,2,11,14,1,2,2,2,11,14,1,2,2,2,20,14,1,2,2,2,20,14,1,2,2,2,40,14,1],[2,2,2,20,14,1,2,2,2,20,14,1],[2,2,2,21,14,1,2,2,2,21,14,1],[2,2,2,20,14,1,2,2,2,20,14,1,2,2,2,20,14,1,2,2,2,21,14,1,2,2,2,21,14,1,6,9,6,9,6,1,6,2,6,12,6,1],[],[2,2,2,19,14,1,2,2,2,37,14,1,2,2,2,21,14,1,2,2,2,0,14,1,2,2,2,19,14,1,17,20,17,1,1,1,1,20,17,1,1,1],[],[],[],[20,20,20,1,20,1,20,20,1,1,1,1],[],[],[],[],[],[],[],[],[20,21,21,1,20,20,20,1,20,1,20,1,20,0,22,1,20,20,20,1,20,1,20,1,32,9,32,20,1,1,29,2,1,1,1,1,32,9,32,20,1,1,1,2,29,1,1,1],[],[],[54,1,20,20,20,1,29,1,1,1,1,1,31,1,20,20,20,1,29,1,1,1,1,1,20,1,20,20,1,1,19,1,1,1,1,1,31,1,53,20,1,1,29,1,31,1,1,1,31,1,20,20,1,1,1,1,1,1,1,1,20,11,8,8,1,1,1,2,1,1,1,1,1,9,1,1,1,1,1,2,1,1,1,1],[]] except [Floor45.e2394987524982,Floor45.e2419682991478]
certRow g23114 on (row false false k286 5 4 2 5 [0,1,0,3,0]) using bank tags []
certRow g23115 on (row false true k310 5 4 2 5 [0,1,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
