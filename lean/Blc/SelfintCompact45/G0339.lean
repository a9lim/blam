import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data14
import Blc.SelfintCompact45.Frames.Data17
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g18769 on (row false true k211 7 3 2 4 [0,1,0,2]) byParts (fun j => piece 12 j false true k211 7 3 2 4 [0,1,0,2]) byCover (pieces_cover 12 (by decide) false true k211 7 3 2 4 [0,1,0,2]) withHints bank eachTags[[],[2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1],[2,14,2,2,1,1,1,1,61,1],[2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1],[],[2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,44,22,3,5,44,22,44,3,23,61,2,1,1,1,1,1,2,61,1,1,6,6,44,22,3,5,44,22,44,3,27,61,2,1,1,1,1,1,2,61,1,1,6,6],[],[],[],[],[],[]] except []
certRow g18770 on (row false false k175 7 3 2 4 [0,1,1,1]) using bank tags []
certRow g18771 on (row false true k211 7 3 2 4 [0,1,1,1]) using bank tags []
tagSlices g18772 on (row false false k175 7 3 2 4 [0,1,2,0]) byParts (fun j => piece 12 j false false k175 7 3 2 4 [0,1,2,0]) byCover (pieces_cover 12 (by decide) false false k175 7 3 2 4 [0,1,2,0]) withHints bank eachTags[[],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[],[2,3,2,2,2,2,33,61,2,2,33,2,2,10,10,2,2,44,3,44,44,23,44,3,23,61,2,44,44,44,44,44,44,44,44,9,44,23,44,44,2,44,61,44,44,44,44,44,44,44,44,44,3,44,3,44,2,44,44,44,44,44,3,44,3,44,2,44,44,44,44,44,44,44,2,44,44,44,44,44,44,9,44,23,44,44,44],[],[],[],[],[],[]] except []
certRow g18773 on (row false true k211 7 3 2 4 [0,1,2,0]) using bank tags [2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,44,22,3,5,44,22,44,3,23,61,2,1,1,1,1,1,2,61,1,1,6,6]
end Blc.SelfintSingleObject.Compact45
