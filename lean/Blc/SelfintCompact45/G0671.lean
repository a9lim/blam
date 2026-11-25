import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data23
import Blc.SelfintCompact45.Frames.Data25
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g23054 on (row false false k285 5 4 2 4 [1,2,1,0]) using bank tags [2,2,12,20,2,2,12,19,39,2,2,19,2,2,12,20,2,2,12,19,19,2,2,19,2,2,12,20,2,2,12,20,20,2,2,20,44,44,44,44,44,44,1,44,1,44,20,44,20,44,44,44,44,44,44,1,44,1,44,20,44,20,44,21,44,44,44,44,44,44,20,44,20,44,21,44,44,44,44,44]
tagSlices g23055 on (row false true k309 5 4 2 4 [1,2,1,0]) byParts (fun j => piece 24 j false true k309 5 4 2 4 [1,2,1,0]) byCover (pieces_cover 24 (by decide) false true k309 5 4 2 4 [1,2,1,0]) withHints bank eachTags[[],[2,14,2,14,2,14,36,11,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,1,11,19,1,1,12,19,1,1,37,1,1,12,1,1,1,19,1,1,12,37,1,1,1,2,14,2,14,2,14,36,11,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,1,11,19,1,1,12,19,20,30,40,1,1,12,1,1,1,1,1,1,12,37,1,1,1],[2,14,2,14,2,14,27,40,14,14,1,1,1,1,1,1,1,1,1,1,1,1,1,1,12,12,20,11,20,1,1,12,30,1,1,1,1,1,12,1,20,1,20,1,1,12,1,1,1,1],[],[],[6,19,10,12,6,1,20,1,6,1,1,1,6,11,2,14,6,1,1,1,6,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,20,28,20,28,20,28,20,28,20,1,1,1,1,28,1,28,1,28,20,28,40,28,20,1,1,1,1,28,1,28,1,20,1,20,1,20,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]] except []
certRow g23056 on (row false false k285 5 4 2 4 [1,3,0,0]) using bank tags []
certRow g23057 on (row false true k309 5 4 2 4 [1,3,0,0]) using bank tags []
certRow g23058 on (row false false k285 5 4 2 4 [2,0,0,2]) using bank tags []
certRow g23059 on (row false true k309 5 4 2 4 [2,0,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
