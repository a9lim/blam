import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g18366 on (row false false k128 6 7 4 5 [1,0,4,1,1]) byParts (fun j => piece 8 j false false k128 6 7 4 5 [1,0,4,1,1]) byCover (pieces_cover 8 (by decide) false false k128 6 7 4 5 [1,0,4,1,1]) withHints bank eachTags[[],[2,2],[2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2],[2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2],[8]] except []
tagSlices g18368 on (row false false k128 6 7 4 5 [1,0,4,2,0]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [1,0,4,2,0]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [1,0,4,2,0]) withHints bank eachTags[[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,1,1,20],[2,2,2,2,2],[2,2,2,2],[2,2,2,2,2,2],[2],[2,2,20],[2,2,2,2],[2,2,2,2,2,2,12,12],[2,2,2,2,2,2,2,9]] except []
certRow g18370 on (row false false k128 6 7 4 5 [1,0,5,0,1]) using bank tags []
certRow g18372 on (row false false k128 6 7 4 5 [1,0,5,1,0]) using bank tags []
certRow g18374 on (row false false k128 6 7 4 5 [1,0,6,0,0]) using bank tags []
certRow g18376 on (row false false k128 6 7 4 5 [1,1,0,0,5]) using bank tags []
tagSlices g18378 on (row false false k128 6 7 4 5 [1,1,0,1,4]) byParts (fun j => piece 8 j false false k128 6 7 4 5 [1,1,0,1,4]) byCover (pieces_cover 8 (by decide) false false k128 6 7 4 5 [1,1,0,1,4]) withHints bank eachTags[[2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2],[1,1,1,1,10,19,1,19,1,1,1]] except []
end Blc.SelfintSingleObject.Compact45
