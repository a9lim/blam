import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g23201 on (row false true k310 5 4 2 5 [2,1,0,0,1]) byParts (fun j => piece 12 j false true k310 5 4 2 5 [2,1,0,0,1]) byCover (pieces_cover 12 (by decide) false true k310 5 4 2 5 [2,1,0,0,1]) withHints bank eachTags[[],[2,2,2,11,14,1,2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[2,2,2,20,14,1,2,2,2,20,14,1],[2,2,2,20,14,1,2,2,2,1,14,1],[2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[],[],[],[],[],[],[]] except []
certRow g23202 on (row false false k286 5 4 2 5 [2,1,0,1,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
tagSlices g23203 on (row false true k310 5 4 2 5 [2,1,0,1,0]) byParts (fun j => piece 12 j false true k310 5 4 2 5 [2,1,0,1,0]) byCover (pieces_cover 12 (by decide) false true k310 5 4 2 5 [2,1,0,1,0]) withHints bank eachTags[[],[2,2,2,11,14,1,2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,11,14,1,2,2,2,1,14,1],[2,2,2,20,14,1,2,2,2,20,14,1],[2,2,2,1,14,1,2,2,2,1,14,1],[2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[],[],[],[],[],[],[]] except []
certRow g23204 on (row false false k286 5 4 2 5 [2,1,1,0,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow g23205 on (row false true k310 5 4 2 5 [2,1,1,0,0]) using bank tags [2,2,2,11,14,1,2,2,2,11,14,1,2,2,2,11,14,1,2,2,2,11,14,1,2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,20,14,1,2,2,2,11,14,1,2,2,2,11,14,1,2,2,2,1,14,1]
certRow g23206 on (row false false k286 5 4 2 5 [2,2,0,0,0]) using bank tags []
certRow g23207 on (row false true k310 5 4 2 5 [2,2,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
