import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f0 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,0,1,2,2,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,0,1,2,2,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,0,1,2,2,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1],[],[20,20,21,21,1,1,1,1,1,1,1,1,1],[20,20,21,20,126],[1,1,1,1,1,20,20,1,21,1,1,21,1,28],[],[1,1,1,1,1,1,1,1,1]] except []
tagSlices f1 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,0,2,1,2,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,0,2,1,2,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,0,2,1,2,2]) withHints bank eachTags[[],[20,20,20,20,20,20,20,20,20],[],[20,20,20,20,1,1,1,1,1,1,1,1,1],[20,20,21,28,20],[20,20,20,20,20,20,20,21,20,20,20,21,21,20],[],[1,1,1,1,1,1,1,1,1]] except []
tagSlices f2 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,0,2,2,1,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,0,2,2,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,0,2,2,1,2]) withHints bank eachTags[[],[21,21,21,28,21,0,21,21,28],[],[20,20,21,21,1,1,1,1,1,1,1,1,1],[21,28,20,21,21],[21,21,21,21,20,20,20,21,21,21,28,20,21,20],[],[1,1,1,1,1,1,1,1,1]] except [Floor45.e9689659275118]
tagSlices f3 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,0,2,2,2,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,0,2,2,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,0,2,2,2,1]) withHints bank eachTags[[],[21,0,21,28,28,21,20,21,20],[],[20,20,21,21,1,1,1,1,1,1,1,1,1],[21,28,21,21,21],[28,21,28,21,28,20,20,21,21,21,28,20,28,28],[],[1,1,1,1,1,1,1,1,1]] except [Floor45.e9689659551606]
end Blc.SelfintSingleObject.Compact45
