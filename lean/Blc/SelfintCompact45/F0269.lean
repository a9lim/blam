import Blc.SelfintCompact44.SliceNotation
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f947 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,2,3,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,2,3,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,2,3,0,2]) withHints bank eachTags[[6],[6,6,6,6,6,2,11,21,1,1],[6,6,6,20,21,37,11,43,30,2,2,20,20,20,1],[6,6],[6,6,6,6,6,6,6,6,6,6,6,6,39,21,37,2,11,21],[19,2,2,20,20,1],[],[6,6,6,6,6,6,6,37,37,37,11,28,8,28,95,20,87]] except []
tagSlices f948 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,2,3,1,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,2,3,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,2,3,1,1]) withHints bank eachTags[[6,6,6,2],[6,2,11,20],[6,6,6,6,6,2,6,6,6,2,20,21,37,19,2,2,2,2,49],[6,6,6,2,6],[6,6,6,6,177,40,2,2,11,21,1],[2,37,2,2,2,11,222,2,2,2],[2,2,2,2],[2,6,6,6,2,6,37,26,23,20,49,0,20]] except [Floor45.e9692679797190]
tagSlices f949 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,2,3,2,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,2,3,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,2,3,2,0]) withHints bank eachTags[[6],[6,6,6,1],[6,6,6,6,11,2,2,2,37,20,20],[6,6],[6,6,6,6,6,6,6,2,2,49,21],[2,2,2,2,2,11,0,2,2,20,20,1],[],[6,6,6,6,30,2,95,18]] except [Floor45.e9689625992762]
sliceRow f950 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,2,4,0,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,2,4,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,2,4,0,1]) slices 12 withHints bank tags [2,37,11,19,20,21,107,39,47,124] except []
tagSlices f951 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,2,4,1,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,2,4,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,2,4,1,0]) withHints bank eachTags[[2],[2],[2,2,2,2,37,2,2,11,20],[2],[2,23,21],[2,2,11,20],[],[2,37,23,20,47]] except []
end Blc.SelfintSingleObject.Compact45
