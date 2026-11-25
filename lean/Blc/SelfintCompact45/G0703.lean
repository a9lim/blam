import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g23165 on (row false true k310 5 4 2 5 [1,0,2,1,0]) byParts (fun j => piece 24 j false true k310 5 4 2 5 [1,0,2,1,0]) byCover (pieces_cover 24 (by decide) false true k310 5 4 2 5 [1,0,2,1,0]) withHints bank eachTags[[],[2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1],[2,2,2,1,14,1,2,2,2,1,14,1],[2,2,2,1,14,1,2,2,2,20,14,1],[2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,20,14,1,2,2,2,0,14,1,2,2,2,20,14,1,1,12,1,1,1,1,1,2,1,1,1,1],[],[30,10,22,20,20,1,11,9,1,1,1,1,29,10,8,8,1,1,1,9,1,1,1,1,29,10,8,8,1,1,1,9,1,1,1,1,21,1,21,20,20,1,20,1,1,1,20,1],[],[],[],[6,10,6,1,6,1,6,1,6,1,6,1],[],[],[],[],[],[],[],[],[16,1,8,8,1,1,1,1,17,1,1,1,1,12,1,1,1,1,1,2,1,1,1,1],[],[],[2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,40,12,1,1,1,1,1,2,1,1,1,1],[]] except [Floor45.e2394982567386]
certRow g23166 on (row false false k286 5 4 2 5 [1,0,3,0,0]) using bank tags []
certRow g23167 on (row false true k310 5 4 2 5 [1,0,3,0,0]) using bank tags []
certRow g23168 on (row false false k286 5 4 2 5 [1,1,0,0,2]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,44,44,44,1,44,44,44,20,44,44,44,44,44,1,44,44,44,20,44,44,44,44,44,1,44,44,44,20,44,44,44,44,44,1,44,44,44,20,44,44,44,44,44,1,44,44,44,20,44,44]
end Blc.SelfintSingleObject.Compact45
