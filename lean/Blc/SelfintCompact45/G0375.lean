import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
import Blc.SelfintCompact45.Frames.Data18
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g19551 on (row false true k226 7 4 3 4 [0,2,1,1]) byParts (fun j => piece 12 j false true k226 7 4 3 4 [0,2,1,1]) byCover (pieces_cover 12 (by decide) false true k226 7 4 3 4 [0,2,1,1]) withHints bank eachTags[[],[2,14,2,1,1,1],[6,13,6,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1],[6,13,6,1,1,1,6,13,6,1,1,1],[2,14,2,1,1,1,2,14,2,1,1,1],[],[],[],[],[2,14,2,1,1,1,2,14,2,1,1,1],[44,22,3,5,59,1,1,1,1,6,44,22,3,5,18,1,1,1,1,6],[2,14,2,1,1,1]] except []
certRow g19552 on (row false false k190 7 4 3 4 [0,2,2,0]) using bank tags [2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9]
certRow g19553 on (row false true k226 7 4 3 4 [0,2,2,0]) using bank tags [2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1]
tagSlices g19554 on (row false false k190 7 4 3 4 [0,3,0,1]) byParts (fun j => piece 12 j false false k190 7 4 3 4 [0,3,0,1]) byCover (pieces_cover 12 (by decide) false false k190 7 4 3 4 [0,3,0,1]) withHints bank eachTags[[2,2,2,2,9,2,2,9],[2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3],[2,2,2,2,3,2,2,3,2,2,2,2,9,2,2,9],[2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3],[],[2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3],[],[],[],[],[44,3,10,44,44,44,44,44,9,44,10,44,2,44,44,44,44,3,44,3,44,2,44,44,44,44,3,10,44,44,44,44,44,9,44,10,44,2,44,44,44,44,3,44,3,44,2,44,44,44],[]] except []
certRow g19555 on (row false true k226 7 4 3 4 [0,3,0,1]) using bank tags [2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,44,22,3,5,10,1,1,1,1,6,44,22,3,5,10,1,1,1,1,6]
end Blc.SelfintSingleObject.Compact45
