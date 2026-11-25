import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f64 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,2,1,1,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,2,1,1,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,2,1,1,0,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,11,1,1,11,11,11],[1,1,1,1,1],[1,1,1,1],[20,11,1,1,1],[1,1,11,11,11,1,1,1,1,1,11,1,1,1],[],[28,28,28,28,28,28,28,28,20,28,28,28,28,20]] except []
certRow f65 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,2,1,1,1,1]) using bank tags []
certRow f66 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,2,1,1,2,0]) using bank tags [1,1,1,1,1,1,1,1,11,1,1,1,1,11,1,1,1,1,1,1,1,1,1,1,11,1,1,1,28,28,28,28,28,28,28,28,20]
tagSlices f67 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,2,1,2,0,1]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,2,1,2,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,2,1,2,0,1]) withHints bank eachTags[[28,28,20],[1,37,1,1,1,1,39,1,1,1,1,1,1,1],[1,11,1,1,1],[1,37,1,11],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[28,28,28,28,28,28,28,28,20,28,28,28,28,20]] except []
certRow f68 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,2,1,2,1,0]) using bank tags [1,37,1,1,1,1,39,1,1,1,1,1,1,1,1,11,1,1,1,1,37,1,11,1,1,1,1,1,28,28,28,28,28,28,28,20]
tagSlices f69 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,0,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,0,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [1,2,2,0,0,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,20],[20,20,1,1],[20,20,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[]] except []
end Blc.SelfintSingleObject.Compact45
