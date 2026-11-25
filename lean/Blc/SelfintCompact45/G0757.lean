import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24193 on (row false true k318 5 5 2 5 [0,2,0,2,1]) byParts (fun j => piece 24 j false true k318 5 5 2 5 [0,2,0,2,1]) byCover (pieces_cover 24 (by decide) false true k318 5 5 2 5 [0,2,0,2,1]) withHints bank eachTags[[],[21,1,1,1,1,1,20,1,1,1,1,1,37,11,1,1,1,1,21,1,1,1,1,1,37,11,1,1,1,1],[21,1,1,1,1,1,20,1,1,1,1,1],[21,1,1,1,1,1,21,1,1,1,1,1],[28,1,1,1,1,1,37,11,1,1,1,1,21,1,1,1,1,1,21,1,1,1,1,1,21,1,1,1,1,1],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,14,1,1,12,20,1],[],[],[],[2,14,1,1,12,20,1],[],[],[],[],[],[],[],[],[],[],[],[44,22,20,1,1,1,1,1,44,22,20,1,1,1,1,1,44,22,20,1,1,1,1,1,44,22,20,1,1,1,1,1,44,22,20,1,1,1,1,1,1,1,1,1,44,1,44,1,1,1],[]] except []
certRow g24194 on (row false false k294 5 5 2 5 [0,2,0,3,0]) using bank tags []
certRow g24195 on (row false true k318 5 5 2 5 [0,2,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
