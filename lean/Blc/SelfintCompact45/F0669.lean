import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f5125 on (Grammar43.fourRow ⟨1,2,1,6,4,4⟩ [0,1] [2,0,0,2]) byParts (fun j => Split43.four 12 j ⟨1,2,1,6,4,4⟩ [0,1] [2,0,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,4⟩ [0,1] [2,0,0,2]) withHints bank eachTags[[],[6,6],[],[],[],[],[],[],[],[6,6],[],[6]] except []
tagSlices f5126 on (Grammar43.fourRow ⟨1,2,1,6,4,4⟩ [0,1] [2,0,1,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,6,4,4⟩ [0,1] [2,0,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,4⟩ [0,1] [2,0,1,1]) withHints bank eachTags[[],[6,6,6,6],[6,6,6],[6,6],[],[],[],[],[],[6,6,6],[],[6]] except []
end Blc.SelfintSingleObject.Compact45
