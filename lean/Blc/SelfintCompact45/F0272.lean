import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f959 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,1,2,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,1,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,1,2,1]) withHints bank eachTags[[6,6,6,6,6,2,2,2,2,2,2,2,20,21],[2,2,2,2,2,2,2,28,2],[],[6,6,6,6,6,2,2,2,2,2,6,6,6,6,6],[],[2,2,2,2],[6,6,2,2,2,11,20,2,2,2],[2,2,2,2],[6,6,1],[6,6,2,2,11],[6,6,2,2,2,2,2,6,2,2,6,6,21,2,212,21],[10,10,10,10,10]] except []
tagSlices f960 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,1,3,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,1,3,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,1,3,0]) withHints bank eachTags[[2],[6,6,6],[6,6,2,2,2],[6,6,2],[6,6,6,20,2,2,2,209,220,246],[2,2,21,0],[6,6,6,20],[6,6,6,2,18]] except [Floor45.e9689625652346]
tagSlices f961 on (Grammar43.fourRow ⟨0,2,0,4,5,7⟩ [0,0] [0,3,2,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,4,5,7⟩ [0,0] [0,3,2,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,7⟩ [0,0] [0,3,2,0,2]) withHints bank eachTags[[6],[6,6,6,6,6,2,20],[6,6,6,2,21,20,1],[6,6],[6,6,6,6,6,6,6,6,6,6,20,2,50],[20,2,50,20],[20,20],[20,11,6,6,6,6,6]] except []
end Blc.SelfintSingleObject.Compact45
