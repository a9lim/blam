import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data15
import Blc.SelfintCompact45.Frames.Data18
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g19535 on (row false true k226 7 4 3 4 [0,0,2,2]) using bank tags [2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,44,22,3,5,18,1,1,1,1,6,44,22,3,5,24,1,1,1,1,6]
tagSlices g19536 on (row false false k190 7 4 3 4 [0,0,3,1]) byParts (fun j => piece 12 j false false k190 7 4 3 4 [0,0,3,1]) byCover (pieces_cover 12 (by decide) false false k190 7 4 3 4 [0,0,3,1]) withHints bank eachTags[[],[2,2,2,2,3,2,2,3],[2,2,2,2,9,2,2,9,2,2,2,2,9,2,2,9],[2,2,2,2,3,2,2,3,2,2,2,2,3,2,2,3],[2,2,2,2,33,2,2,10],[2,2,2,2,3,2,2,3],[],[],[],[2,2,2,2,9,2,2,9],[44,3,10,44,44,44,44,44,9,44,10,44,2,44,44,44,44,3,44,3,44,2,44,44,44,44,3,47,44,44,44,44,44,9,44,47,44,2,44,44,44,44,3,44,3,44,2,44,44,44],[]] except []
certRow g19537 on (row false true k226 7 4 3 4 [0,0,3,1]) using bank tags [2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,2,14,2,1,1,1,44,22,3,5,10,1,1,1,1,6,44,22,3,5,18,1,1,1,1,6]
certRow g19538 on (row false false k190 7 4 3 4 [0,0,4,0]) using bank tags []
certRow g19539 on (row false true k226 7 4 3 4 [0,0,4,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
