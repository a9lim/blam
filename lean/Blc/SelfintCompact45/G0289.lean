import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data10
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
sliceRow g18350 on (row false false k128 6 7 4 5 [1,0,2,2,2]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [1,0,2,2,2]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [1,0,2,2,2]) slices 12 withHints bank tags [2,1] except []
tagSlices g18352 on (row false false k128 6 7 4 5 [1,0,2,3,1]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [1,0,2,3,1]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [1,0,2,3,1]) withHints bank eachTags[[6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,2,2,2],[6,6,6,6,6,6,6,2,2,9],[6,6,6,6,6,6,6,2,2,2,2,2,19,2,1],[6,6,6,6,6,6,6,2,2,2,2,2,10,37,2,2,20,30,30,8,2],[6,6,6,6,6],[2,2,2,2,2,19],[6,6,6,6,6,2,2,2,2,2,2,2,2,2,11],[2,2,2],[2,2,2,1,2,1,9],[2,2,2,2,2,2,2,2,12],[2,2],[6,6,6,6,6,2,2]] except []
tagSlices g18354 on (row false false k128 6 7 4 5 [1,0,2,4,0]) byParts (fun j => piece 12 j false false k128 6 7 4 5 [1,0,2,4,0]) byCover (pieces_cover 12 (by decide) false false k128 6 7 4 5 [1,0,2,4,0]) withHints bank eachTags[[2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,11,1],[2,2,2,2,2,2,2,19,19,10,20],[2,2,2,2,2],[2,2,2,2,2,2,2,11],[2,2,2,2,2,2,2,2],[2],[2,1,1,21],[2,2,2,2],[2,2,2,2,2,2,2,2],[2,2,2,2,2,9]] except []
end Blc.SelfintSingleObject.Compact45
