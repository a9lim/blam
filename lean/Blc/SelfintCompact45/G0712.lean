import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g23195 on (row false true k310 5 4 2 5 [2,0,1,0,1]) byParts (fun j => piece 12 j false true k310 5 4 2 5 [2,0,1,0,1]) byCover (pieces_cover 12 (by decide) false true k310 5 4 2 5 [2,0,1,0,1]) withHints bank eachTags[[],[2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[2,2,2,11,14,1,2,2,2,20,14,1],[2,2,2,20,14,1,2,2,2,1,14,1],[2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[],[],[],[],[],[],[]] except []
certRow g23196 on (row false false k286 5 4 2 5 [2,0,1,1,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
tagSlices g23197 on (row false true k310 5 4 2 5 [2,0,1,1,0]) byParts (fun j => piece 12 j false true k310 5 4 2 5 [2,0,1,1,0]) byCover (pieces_cover 12 (by decide) false true k310 5 4 2 5 [2,0,1,1,0]) withHints bank eachTags[[],[2,2,2,11,14,1,2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,11,14,1,2,2,2,1,14,1],[2,2,2,11,14,1,2,2,2,11,14,1],[2,2,2,1,14,1,2,2,2,1,14,1],[2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[],[],[],[],[],[],[]] except []
certRow g23198 on (row false false k286 5 4 2 5 [2,0,2,0,0]) using bank tags []
certRow g23199 on (row false true k310 5 4 2 5 [2,0,2,0,0]) using bank tags []
certRow g23200 on (row false false k286 5 4 2 5 [2,1,0,0,1]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
end Blc.SelfintSingleObject.Compact45
