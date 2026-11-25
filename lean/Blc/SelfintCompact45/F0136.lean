import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f512 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [0,1,0,1,1,2]) byParts (fun j => Split43.four 24 j ⟨0,2,0,3,6,5⟩ [0,0] [0,1,0,1,1,2]) byCover (Split43.four_cover 24 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [0,1,0,1,1,2]) withHints bank eachTags[[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,1,1,1,1,1,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,0,0,8,0,0,8],[6,6,6,6],[6,6,6,6,6,2,2,2],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[1,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[6,6,6,2,2,2,2,2,2],[2,2,2,242,105,0],[2,2],[],[],[2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1],[],[],[]] except [Floor45.e9692726582382,Floor45.e9692726533230,Floor45.e9692726518638,Floor45.e9692727762030,Floor45.e9692424264558]
end Blc.SelfintSingleObject.Compact45
