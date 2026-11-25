import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1825 on (Grammar43.fourRow ⟨0,3,0,6,4,3⟩ [0,0,0] [0,3,0,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,6,4,3⟩ [0,0,0] [0,3,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,6,4,3⟩ [0,0,0] [0,3,0,0]) withHints bank eachTags[[],[],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices f1826 on (Grammar43.fourRow ⟨0,3,0,6,4,3⟩ [0,0,0] [1,0,0,2]) byParts (fun j => Split43.four 12 j ⟨0,3,0,6,4,3⟩ [0,0,0] [1,0,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,6,4,3⟩ [0,0,0] [1,0,0,2]) withHints bank eachTags[[],[6,6,3,3],[6,3],[6,6,3,3],[],[],[],[],[],[],[],[]] except []
certRow f1827 on (Grammar43.fourRow ⟨0,3,0,6,4,3⟩ [0,0,0] [1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
