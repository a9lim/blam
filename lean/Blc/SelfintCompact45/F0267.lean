import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f941 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,2,1,3,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,2,1,3,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,2,1,3,1]) withHints bank eachTags[[6,6,6,6,6,6,6,6,19,2,2,20,20,20],[2,2,2,11,2,2,2,2,2,2,2,11,21,2,1],[2,20,2,11],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,1,2,37],[],[6,6,2,20,2],[2,2,177,2,2,2,2,2,2],[6,6],[2,2,1,1],[6,6,2,2],[6,6,6,6,6,6,6,2,6,6,2,2,20,20],[20,18,28,20,20]] except []
tagSlices f942 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,2,1,4,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,2,1,4,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,2,1,4,0]) withHints bank eachTags[[],[2,2],[2,2,2,2,20],[2],[2,2,2,23,48,21,71,244],[20,2,2,20,20,20],[],[2,1,23,58,0]] except [Floor45.e9692683362554]
tagSlices f943 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,2,2,0,3]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,2,2,0,3]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,2,2,0,3]) withHints bank eachTags[[2,21,21],[6,6,6,6,6,2,20,20,20,1,1],[6,6,2,37,39,20,11,19,43,43],[6,6,37,28,21,21,0],[6,6,6,6,6,6,6,6,6,6,6,6,20,1,2,20,20,1],[28,21],[20,11],[6,6,6,6,6,6,6,40,37,1,37,26,1,11,28,28,8,49,20,8,28]] except [Floor45.e9689626014750]
end Blc.SelfintSingleObject.Compact45
