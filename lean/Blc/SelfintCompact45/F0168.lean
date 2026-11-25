import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f551 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [0,2,1,0,2,0]) byParts (fun j => Split43.four 12 j ⟨0,2,0,3,6,5⟩ [0,0] [0,2,1,0,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [0,2,1,0,2,0]) withHints bank eachTags[[6,6,6,6,6,2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,2],[6,6,6,6,6,2,2,2,2,28,28,28,8,28,28,8,20,8],[6,6,6,6,0,0,8,0,8],[6,6,6,6,6,2,2,2,1,1,1,1,1],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2],[],[2,2,2,6,6,6,6,6,2,2,2,2,2,1,1,1]] except [Floor45.e9692403000890,Floor45.e9692402989626,Floor45.e9692402104890]
end Blc.SelfintSingleObject.Compact45
