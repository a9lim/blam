import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f541 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [0,2,0,0,2,1]) byParts (fun j => Split43.four 12 j ⟨0,2,0,3,6,5⟩ [0,0] [0,2,0,0,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [0,2,0,0,2,1]) withHints bank eachTags[[2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2],[6,6,6,6,6,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1],[6,6,6,6,2,2,2,2,2],[6,6,6,6,6,2,2,1,1,1,1],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[1],[2,2,2,2,2,1,1,1,1,1]] except []
tagSlices f542 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [0,2,0,0,3,0]) byParts (fun j => Split43.four 8 j ⟨0,2,0,3,6,5⟩ [0,0] [0,2,0,0,3,0]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [0,2,0,0,3,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,1,1,1,1,1,18,18,18,107,20,20,18,18,107],[2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,124,124,20,0,0]] except [Floor45.e9692399783290,Floor45.e9692399727994]
end Blc.SelfintSingleObject.Compact45
