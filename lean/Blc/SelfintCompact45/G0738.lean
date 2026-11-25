import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24081 on (row false true k317 5 5 2 4 [2,0,2,1]) byParts (fun j => piece 24 j false true k317 5 5 2 4 [2,0,2,1]) byCover (pieces_cover 24 (by decide) false true k317 5 5 2 4 [2,0,2,1]) withHints bank eachTags[[],[19,37,11,11,1,1,1,1,44,22,1,1,44,22,1,1,6,1,1,1,37,11,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,44,22,1,1,44,22,1,1,6,1,1,1,1,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[36,11,12,12,1,1,1,1,44,22,20,1,44,22,30,40,6,1,1,1,10,12,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[20,1,1,1,1,1,1,1,44,22,20,1,44,22,20,1,6,1,1,1,1,1,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,36,11,12,12,1,1,1,1,44,22,0,1,44,22,20,1,6,1,1,1,10,12,1,1,1,1,61,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]] except [Floor45.e2803809056218]
certRow g24082 on (row false false k293 5 5 2 4 [2,0,3,0]) using bank tags []
certRow g24083 on (row false true k317 5 5 2 4 [2,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
