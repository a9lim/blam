import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1588 on (Grammar43.fourRow ⟨0,2,0,5,5,5⟩ [0,0] [2,1,1,1,0]) byParts (fun j => Split43.four 48 j ⟨0,2,0,5,5,5⟩ [0,0] [2,1,1,1,0]) byCover (Split43.four_cover 48 (by decide) ⟨0,2,0,5,5,5⟩ [0,0] [2,1,1,1,0]) withHints bank eachTags[[],[6,6,6,6,6],[6,6],[6,6],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[6],[6,6,6,6,6,6],[],[6],[6,6,6],[],[6,6,6,6],[],[6,6,6,6,6,6,6,6,6,6,6],[],[],[6,6,6,6,6],[],[],[],[],[],[],[],[],[],[]] except []
tagSlices f1589 on (Grammar43.fourRow ⟨0,2,0,5,5,5⟩ [0,0] [2,1,2,0,0]) byParts (fun j => Split43.four 48 j ⟨0,2,0,5,5,5⟩ [0,0] [2,1,2,0,0]) byCover (Split43.four_cover 48 (by decide) ⟨0,2,0,5,5,5⟩ [0,0] [2,1,2,0,0]) withHints bank eachTags[[],[6,6,6,6,6],[6,6],[],[6,6,6],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[6,6],[6,6],[],[],[],[],[6],[],[6,6,6,6],[],[],[6,6,6],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
