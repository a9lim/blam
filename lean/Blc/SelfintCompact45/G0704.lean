import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g23169 on (row false true k310 5 4 2 5 [1,1,0,0,2]) byParts (fun j => piece 24 j false true k310 5 4 2 5 [1,1,0,0,2]) byCover (pieces_cover 24 (by decide) false true k310 5 4 2 5 [1,1,0,0,2]) withHints bank eachTags[[],[2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1],[2,2,2,10,14,1,2,2,2,10,14,1],[2,2,2,10,14,1,2,2,2,10,14,1],[2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1,2,2,2,10,14,1],[],[29,10,22,20,1,1,1,9,1,1,1,1,29,10,22,20,1,1,1,9,1,1,1,1,29,10,21,20,1,1,1,9,1,1,1,1,29,10,22,20,1,1,1,9,1,1,1,1,29,10,21,20,1,1,1,9,1,1,1,1],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1,2,2,2,1,14,1],[]] except []
certRow g23170 on (row false false k286 5 4 2 5 [1,1,0,1,1]) using bank tags []
certRow g23171 on (row false true k310 5 4 2 5 [1,1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
