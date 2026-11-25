import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1545 on (Grammar43.fourRow ⟨0,2,0,5,5,5⟩ [0,0] [1,0,1,1,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,5,5⟩ [0,0] [1,0,1,1,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,5⟩ [0,0] [1,0,1,1,2]) withHints bank eachTags[[6,6,6,6,6],[6,6,6,6,6,6,6,6],[6,6,6],[6,6,6,6,6,6,6,6],[6,6,6,6,6],[6],[6,6,6,6],[],[6,6],[],[6,6,6,6,6,6,6,6,6,6],[]] except []
tagSlices f1546 on (Grammar43.fourRow ⟨0,2,0,5,5,5⟩ [0,0] [1,0,1,2,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,5,5,5⟩ [0,0] [1,0,1,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,5,5,5⟩ [0,0] [1,0,1,2,1]) withHints bank eachTags[[6,6,6,6,6,6,6,6],[6,6,6,6,6],[6,6,6,6],[6,6,6,6,6,6,6,6,6],[6,6,6,6,6],[6,6],[6,6,6,6],[6,6,6,6],[6,6],[6,6,6,6,6,6,6],[6,6,6],[]] except []
end Blc.SelfintSingleObject.Compact45
