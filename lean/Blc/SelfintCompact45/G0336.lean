import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
import Blc.SelfintCompact45.Frames.Data14
import Blc.SelfintCompact45.Frames.Data17
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g18728 on (row false false k128 6 7 4 5 [5,2,0,0,0]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [5,2,0,0,0]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [5,2,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g18730 on (row false false k128 6 7 4 5 [6,0,0,0,1]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [6,0,0,0,1]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [6,0,0,0,1]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g18732 on (row false false k128 6 7 4 5 [6,0,0,1,0]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [6,0,0,1,0]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [6,0,0,1,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g18734 on (row false false k128 6 7 4 5 [6,0,1,0,0]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [6,0,1,0,0]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [6,0,1,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g18736 on (row false false k128 6 7 4 5 [6,1,0,0,0]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [6,1,0,0,0]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [6,1,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices g18738 on (row false false k128 6 7 4 5 [7,0,0,0,0]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [7,0,0,0,0]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [7,0,0,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
certRow g18740 on (row false false k174 7 3 2 3 [0,0,3]) using bank tags []
certRow g18742 on (row false false k174 7 3 2 3 [0,1,2]) using bank tags [61,2,61,61,2,61,2,61,33,6,3,6]
certRow g18744 on (row false false k174 7 3 2 3 [0,2,1]) using bank tags [61,2,61,61,2,61,2,61,33,6,3,6]
certRow g18746 on (row false false k174 7 3 2 3 [0,3,0]) using bank tags []
certRow g18748 on (row false false k174 7 3 2 3 [1,0,2]) using bank tags [61,2,61,61,2,61,2,61,33,6,3,6,61,2,61,61,2,61,2,61,33,6,3,6]
certRow g18750 on (row false false k174 7 3 2 3 [1,1,1]) using bank tags []
certRow g18752 on (row false false k174 7 3 2 3 [1,2,0]) using bank tags [61,2,61,61,2,61,2,61,33,6,3,6]
certRow g18754 on (row false false k174 7 3 2 3 [2,0,1]) using bank tags [61,2,61,61,2,61,2,61,33,6,3,6,61,2,61,61,2,61,2,61,33,6,3,6]
certRow g18756 on (row false false k174 7 3 2 3 [2,1,0]) using bank tags [61,2,61,61,2,61,2,61,33,6,3,6]
certRow g18758 on (row false false k174 7 3 2 3 [3,0,0]) using bank tags []
certRow g18760 on (row false false k175 7 3 2 4 [0,0,0,3]) using bank tags []
certRow g18761 on (row false true k211 7 3 2 4 [0,0,0,3]) using bank tags []
tagSlices g18762 on (row false false k175 7 3 2 4 [0,0,1,2]) byParts (fun j => piece 12 j false false k175 7 3 2 4 [0,0,1,2]) byCover (pieces_cover 12 (by decide) false false k175 7 3 2 4 [0,0,1,2]) withHints bank eachTags[[],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[],[2,3,2,2,2,2,33,61,2,2,33,2,2,10,10,2,2,44,3,44,44,1,44,3,23,61,2,44,44,44,44,44,44,44,44,9,44,23,44,44,2,44,61,44,44,44,44,44,44,44,44,44,3,44,3,44,2,44,44,44,44,44,3,44,3,44,2,44,44,44,44,44,44,44,2,44,44,44,44,44,44,9,44,24,44,44,44],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
