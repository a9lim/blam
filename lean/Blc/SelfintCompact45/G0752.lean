import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24177 on (row false true k318 5 5 2 5 [0,1,2,0,2]) byParts (fun j => piece 12 j false true k318 5 5 2 5 [0,1,2,0,2]) byCover (pieces_cover 12 (by decide) false true k318 5 5 2 5 [0,1,2,0,2]) withHints bank eachTags[[],[1,1,1,1,1,1,37,11,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[20,1,1,1,1,1,37,11,1,1,1,1],[20,1,1,1,1,1,20,1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[2,14,1,1,12,40,1],[],[],[44,22,20,1,1,1,1,1,44,22,20,1,1,1,1,1,8,22,8,1,1,1,1,1,44,22,20,1,1,1,1,1,8,22,8,1,1,1,1,1],[]] except []
certRow g24178 on (row false false k294 5 5 2 5 [0,1,2,1,1]) using bank tags [2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1,2,2,2,1]
certRow g24179 on (row false true k318 5 5 2 5 [0,1,2,1,1]) using bank tags [2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1,2,14,1,1,1]
tagSlices g24180 on (row false false k294 5 5 2 5 [0,1,2,2,0]) byParts (fun j => piece 12 j false false k294 5 5 2 5 [0,1,2,2,0]) byCover (pieces_cover 12 (by decide) false false k294 5 5 2 5 [0,1,2,2,0]) withHints bank eachTags[[],[40,44,44,11,44,40,44,9,1,44,44,11,44,1,44,9,1,44,44,29,44,1,44,9],[19,44,44,11,44,19,44,9,1,44,44,11,44,1,44,9],[1,44,44,29,44,1,44,9,1,44,44,29,44,1,44,9],[1,44,44,11,44,1,44,9,1,44,44,17,44,1,44,9,1,44,44,17,44,1,44,9],[],[21,44,44,19,44,21,44,1,20,44,44,1,44,20,44,1,39,44,44,29,44,39,44,1],[],[],[],[44,21,44,44,39,44,21,44,2,8,8,8,44,39,8,8,44,2,8,8,8,44,48,8,8,44,2],[]] except []
end Blc.SelfintSingleObject.Compact45
