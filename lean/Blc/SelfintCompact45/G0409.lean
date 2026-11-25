import Blc.SelfintPositiveWord45
import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data16
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices g19972 on (row false false k194 7 4 4 5 [3,0,0,1,0]) byParts (fun j => piece 8 j false false k194 7 4 4 5 [3,0,0,1,0]) byCover (pieces_cover 8 (by decide) false false k194 7 4 4 5 [3,0,0,1,0]) withHints bank eachTags[[9,2,2,2],[2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2],[],[2,2],[2,2],[2,2]] except []
tagSlices g19974 on (row false false k194 7 4 4 5 [3,0,1,0,0]) byParts (fun j => piece 8 j false false k194 7 4 4 5 [3,0,1,0,0]) byCover (pieces_cover 8 (by decide) false false k194 7 4 4 5 [3,0,1,0,0]) withHints bank eachTags[[],[2,2,2,2,2],[2,2,2,2,2,2],[3,2,2,2,3,2,2,2,2,2],[],[1,2,2,2],[2,2],[33,2,25,2]] except []
sliceRow g19976 on (row false false k194 7 4 4 5 [3,1,0,0,0]) byParts (fun j => piece 12 j false false k194 7 4 4 5 [3,1,0,0,0]) byCover (pieces_cover 12 (by decide) false false k194 7 4 4 5 [3,1,0,0,0]) slices 12 withHints bank tags [2,3,33] except []
theorem g19978 : BadRow (row false false k194 7 4 4 5 [4,0,0,0,0]) := sparse_row false false k194 7 4 4 5 [4,0,0,0,0] (by decide)
theorem g20220 : BadRow (row false false k198 7 5 2 3 [0,0,5]) := sparse_row false false k198 7 5 2 3 [0,0,5] (by decide)
certRow g20222 on (row false false k198 7 5 2 3 [0,1,4]) using bank tags []
certRow g20224 on (row false false k198 7 5 2 3 [0,2,3]) using bank tags []
certRow g20226 on (row false false k198 7 5 2 3 [0,3,2]) using bank tags []
certRow g20228 on (row false false k198 7 5 2 3 [0,4,1]) using bank tags []
theorem g20230 : BadRow (row false false k198 7 5 2 3 [0,5,0]) := sparse_row false false k198 7 5 2 3 [0,5,0] (by decide)
certRow g20232 on (row false false k198 7 5 2 3 [1,0,4]) using bank tags []
certRow g20234 on (row false false k198 7 5 2 3 [1,1,3]) using bank tags []
certRow g20236 on (row false false k198 7 5 2 3 [1,2,2]) using bank tags []
certRow g20238 on (row false false k198 7 5 2 3 [1,3,1]) using bank tags []
certRow g20240 on (row false false k198 7 5 2 3 [1,4,0]) using bank tags []
certRow g20242 on (row false false k198 7 5 2 3 [2,0,3]) using bank tags []
certRow g20244 on (row false false k198 7 5 2 3 [2,1,2]) using bank tags []
certRow g20246 on (row false false k198 7 5 2 3 [2,2,1]) using bank tags []
certRow g20248 on (row false false k198 7 5 2 3 [2,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
