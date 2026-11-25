import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g23131 on (row false true k310 5 4 2 5 [0,2,0,1,1]) byParts (fun j => piece 24 j false true k310 5 4 2 5 [0,2,0,1,1]) byCover (pieces_cover 24 (by decide) false true k310 5 4 2 5 [0,2,0,1,1]) withHints bank eachTags[[],[2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,11,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[2,2,2,11,14,1,2,2,2,20,14,1],[2,2,2,11,14,1,2,2,2,11,14,1],[2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[],[2,2,2,19,14,1,2,2,2,20,14,1,2,2,2,19,14,1,2,2,2,20,14,1,2,2,2,20,14,1],[],[],[],[],[],[],[],[],[],[],[],[],[20,20,20,1,20,1,21,1,1,1,1,1,13,20,13,1,13,1,13,1,13,1,13,1,45,9,1,20,1,1,27,2,1,1,1,1,36,9,36,18,36,1,22,2,11,19,1,1],[],[],[20,1,1,20,20,1,27,1,1,1,1,1,20,1,1,20,20,1,27,1,1,1,1,1,20,1,1,20,20,1,22,1,1,1,1,1,54,1,1,20,20,1,27,1,1,1,1,1,53,1,1,20,20,1,22,1,1,1,1,1],[]] except []
certRow g23132 on (row false false k286 5 4 2 5 [0,2,0,2,0]) using bank tags []
certRow g23133 on (row false true k310 5 4 2 5 [0,2,0,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
