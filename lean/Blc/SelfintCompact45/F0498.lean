import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f1811 on (Grammar43.fourRow ⟨0,2,0,6,5,3⟩ [0,0] [2,0,0,0,1]) byParts (fun j => Split43.four 24 j ⟨0,2,0,6,5,3⟩ [0,0] [2,0,0,0,1]) byCover (Split43.four_cover 24 (by decide) ⟨0,2,0,6,5,3⟩ [0,0] [2,0,0,0,1]) withHints bank eachTags[[],[6,6,6,6,6],[6,6],[6,6],[6,6,6,6,6],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[],[]] except []
end Blc.SelfintSingleObject.Compact45
