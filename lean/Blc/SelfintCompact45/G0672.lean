import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g23060 on (row false false k285 5 4 2 4 [2,0,1,1]) using bank tags [2,2,9,40,2,2,9,19,1,2,2,19,2,2,9,1,2,2,9,1,1,2,2,1,2,2,9,20,2,2,9,20,1,2,2,20,2,2,9,20,2,2,9,20,1,2,2,20,2,2,9,20,2,2,9,20,1,2,2,20]
tagSlices g23061 on (row false true k309 5 4 2 4 [2,0,1,1]) byParts (fun j => piece 24 j false true k309 5 4 2 4 [2,0,1,1]) byCover (pieces_cover 24 (by decide) false true k309 5 4 2 4 [2,0,1,1]) withHints bank eachTags[[],[2,14,2,14,2,14,37,11,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,9,1,10,19,1,1,9,19,1,1,36,1,1,12,1,1,20,19,1,1,12,37,1,1,1,2,14,2,14,2,14,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,9,1,10,1,1,1,9,1,1,1,36,1,1,12,1,1,20,1,1,1,12,1,1,1,1],[2,14,2,14,2,14,37,11,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,9,1,10,20,1,1,9,19,1,40,36,1,1,12,1,20,1,1,1,1,12,1,1,1,1],[2,14,2,14,2,14,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,9,1,10,20,1,1,9,1,1,20,36,1,1,12,1,1,1,1,1,1,12,1,1,1,1,2,14,2,14,2,14,1,1,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,9,20,10,20,1,1,9,1,20,20,36,1,1,12,1,1,1,1,1,1,12,1,1,1,1],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]] except []
certRow g23062 on (row false false k285 5 4 2 4 [2,0,2,0]) using bank tags []
certRow g23063 on (row false true k309 5 4 2 4 [2,0,2,0]) using bank tags []
certRow g23064 on (row false false k285 5 4 2 4 [2,1,0,1]) using bank tags [2,2,9,1,2,2,9,18,20,2,2,18,2,2,9,1,2,2,9,1,20,2,2,1,2,2,9,20,2,2,9,20,20,2,2,20,2,2,9,20,2,2,9,20,20,2,2,20,2,2,9,20,2,2,9,20,20,2,2,20]
end Blc.SelfintSingleObject.Compact45
