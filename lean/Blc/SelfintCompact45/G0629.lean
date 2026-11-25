import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g22523 on (row false true k301 5 3 2 4 [0,1,0,2]) byParts (fun j => piece 24 j false true k301 5 3 2 4 [0,1,0,2]) byCover (pieces_cover 24 (by decide) false true k301 5 3 2 4 [0,1,0,2]) withHints bank eachTags[[],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,36,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1,2,2,2,2,2,2,2,9,2,3,2,2,9,9,36,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,18,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[2,2,2,2,2,2,2,9,2,3,2,2,9,9,36,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1,2,2,2,2,2,2,2,9,2,3,2,2,9,9,24,14,14,1,14,1,14,5,1,1,1,14,1,14,1,1],[],[2,2,2,2,2,2,2,49,2,10,2,2,1,10,9,14,14,1,14,1,14,11,1,1,1,14,1,14,1,1,2,2,2,2,2,2,2,0,2,10,2,2,1,10,9,14,14,1,14,1,14,11,1,1,1,14,1,14,1,1],[],[],[],[],[],[],[],[],[],[],[],[16,9,16,9,32,20,32,9,32,20,17,12,1,1,29,2,1,1,29,2,1,1,1,1,1,2,29,2,1,2,17,12,29,1,1,14,1,1,1,1,1,1,29,14,1,1,1,14,1,1,1,1,1,1,1,1,1,1,1,1,16,9,16,9,32,20,32,9,32,20,17,12,1,1,29,2,1,1,1,2,1,1,1,1,1,2,1,2,1,2,17,12,29,1,1,14,29,1,1,1,1,1,1,14,1,1,1,14,1,1,29,1,1,1,29,1,1,1,1,1],[],[],[],[],[],[]] except [Floor45.e2394897451950]
certRow g22524 on (row false false k277 5 3 2 4 [0,1,1,1]) using bank tags []
certRow g22525 on (row false true k301 5 3 2 4 [0,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
