import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data14
import Blc.SelfintCompact45.Frames.Data17
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g18794 on (row false false k175 7 3 2 4 [2,0,1,0]) byParts (fun j => piece 12 j false false k175 7 3 2 4 [2,0,1,0]) byCover (pieces_cover 12 (by decide) false false k175 7 3 2 4 [2,0,1,0]) withHints bank eachTags[[],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2],[],[],[],[],[],[],[],[]] except []
certRow g18795 on (row false true k211 7 3 2 4 [2,0,1,0]) using bank tags [2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1]
certRow g18796 on (row false false k175 7 3 2 4 [2,1,0,0]) using bank tags [2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2,2,3,2,2,2,2,3,61,2,2,3,2,2,9,3,2,2]
certRow g18797 on (row false true k211 7 3 2 4 [2,1,0,0]) using bank tags [2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1,2,14,2,2,1,1,1,1,61,1]
theorem g18798 : BadRow (row false false k175 7 3 2 4 [3,0,0,0]) := sparse_row false false k175 7 3 2 4 [3,0,0,0] (by decide)
theorem g18799 : BadRow (row false true k211 7 3 2 4 [3,0,0,0]) := sparse_row false true k211 7 3 2 4 [3,0,0,0] (by decide)
theorem g18801 : BadRow (row false true k212 7 3 2 5 [0,0,0,0,3]) := sparse_row false true k212 7 3 2 5 [0,0,0,0,3] (by decide)
certRow g18803 on (row false true k212 7 3 2 5 [0,0,0,1,2]) using bank tags []
certRow g18805 on (row false true k212 7 3 2 5 [0,0,0,2,1]) using bank tags []
theorem g18807 : BadRow (row false true k212 7 3 2 5 [0,0,0,3,0]) := sparse_row false true k212 7 3 2 5 [0,0,0,3,0] (by decide)
certRow g18809 on (row false true k212 7 3 2 5 [0,0,1,0,2]) using bank tags []
theorem g18811 : BadRow (row false true k212 7 3 2 5 [0,0,1,1,1]) := sparse_row false true k212 7 3 2 5 [0,0,1,1,1] (by decide)
certRow g18813 on (row false true k212 7 3 2 5 [0,0,1,2,0]) using bank tags []
certRow g18815 on (row false true k212 7 3 2 5 [0,0,2,0,1]) using bank tags []
certRow g18817 on (row false true k212 7 3 2 5 [0,0,2,1,0]) using bank tags []
theorem g18819 : BadRow (row false true k212 7 3 2 5 [0,0,3,0,0]) := sparse_row false true k212 7 3 2 5 [0,0,3,0,0] (by decide)
certRow g18821 on (row false true k212 7 3 2 5 [0,1,0,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
