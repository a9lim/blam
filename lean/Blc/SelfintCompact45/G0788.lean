import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24315 on (row false true k318 5 5 2 5 [2,0,2,1,0]) byParts (fun j => piece 12 j false true k318 5 5 2 5 [2,0,2,1,0]) byCover (pieces_cover 12 (by decide) false true k318 5 5 2 5 [2,0,2,1,0]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[36,11,1,1,1,1,36,11,1,1,1,1],[1,1,1,1,1,1,36,11,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,36,11,1,1,1,1,28,1,1,1,1,1,36,11,1,1,1,1],[],[2,14,1,1,12,11,1,2,14,1,1,12,1,1,2,14,1,1,12,1,1,2,14,1,1,12,19,1],[2,14,1,1,12,1,1],[],[],[2,14,1,1,12,1,1],[]] except []
certRow g24316 on (row false false k294 5 5 2 5 [2,0,3,0,0]) using bank tags []
certRow g24317 on (row false true k318 5 5 2 5 [2,0,3,0,0]) using bank tags []
tagSlices g24318 on (row false false k294 5 5 2 5 [2,1,0,0,2]) byParts (fun j => piece 12 j false false k294 5 5 2 5 [2,1,0,0,2]) byCover (pieces_cover 12 (by decide) false false k294 5 5 2 5 [2,1,0,0,2]) withHints bank eachTags[[],[1,44,44,10,44,1,44,9,1,44,44,10,44,1,44,9,1,44,44,10,44,1,44,9,1,44,44,10,44,1,44,9,1,44,44,10,44,1,44,9],[36,44,44,54,44,36,44,9,36,44,44,54,44,36,44,9],[36,44,44,54,44,36,44,9,20,44,44,36,44,20,44,9],[36,44,44,30,44,36,44,9,36,44,44,54,44,36,44,9,20,44,44,36,44,20,44,9,20,44,44,36,44,20,44,9,18,44,44,36,44,18,44,9],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
