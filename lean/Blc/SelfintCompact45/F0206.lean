import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f620 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [1,2,0,0,0,2]) byParts (fun j => Split43.four 12 j ⟨0,2,0,3,6,5⟩ [0,0] [1,2,0,0,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [1,2,0,0,0,2]) withHints bank eachTags[[2,2,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2],[6,6,6,6,6,2,2],[6,6,6,6,2,2,2,2,2,1,1,54],[6,6,6,6,6,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[],[0,8,8,8,8,8,8,8,8,8,8,8,8,8],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,56,1,1,1,1,1],[],[2,2,2,2,2]] except [Floor45.e9690393713038]
end Blc.SelfintSingleObject.Compact45
