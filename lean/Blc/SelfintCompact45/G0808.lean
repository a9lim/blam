import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
import Blc.SelfintCompact45.Frames.Data26
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g24665 on (row false true k319 5 5 2 6 [1,0,1,2,0,1]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,0,1,2,0,1]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,0,1,2,0,1]) withHints bank eachTags[[30,30,30,30,30,12],[1,1,1,1,1,44,1,44,1,1,1],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,44,1,44,1,1,1,12,12,40],[],[],[2,2,2,2,19,1,1],[12,1,12,1]] except []
certRow g24666 on (row false false k295 5 5 2 6 [1,0,1,2,1,0]) using bank tags []
tagSlices g24667 on (row false true k319 5 5 2 6 [1,0,1,2,1,0]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,0,1,2,1,0]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,0,1,2,1,0]) withHints bank eachTags[[1,1,1,1,1,1],[1,1,1,44,1,1],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,44,1,1,12],[],[],[1,1,1,1],[12,1]] except []
certRow g24668 on (row false false k295 5 5 2 6 [1,0,1,3,0,0]) using bank tags []
certRow g24669 on (row false true k319 5 5 2 6 [1,0,1,3,0,0]) using bank tags []
certRow g24670 on (row false false k295 5 5 2 6 [1,0,2,0,0,2]) using bank tags []
certRow g24671 on (row false true k319 5 5 2 6 [1,0,2,0,0,2]) using bank tags []
certRow g24672 on (row false false k295 5 5 2 6 [1,0,2,0,1,1]) using bank tags []
tagSlices g24673 on (row false true k319 5 5 2 6 [1,0,2,0,1,1]) byParts (fun j => piece 8 j false true k319 5 5 2 6 [1,0,2,0,1,1]) byCover (pieces_cover 8 (by decide) false true k319 5 5 2 6 [1,0,2,0,1,1]) withHints bank eachTags[[],[1,1,1,1,1],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,19],[],[],[2,2,2,2,2,2,2,1,37,1,1],[]] except []
certRow g24674 on (row false false k295 5 5 2 6 [1,0,2,0,2,0]) using bank tags []
certRow g24675 on (row false true k319 5 5 2 6 [1,0,2,0,2,0]) using bank tags []
certRow g24676 on (row false false k295 5 5 2 6 [1,0,2,1,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
