import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f158 on (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,0,2,0]) byParts (fun j => Split43.four 24 j ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,0,2,0]) byCover (Split43.four_cover 24 (by decide) ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,0,2,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20],[],[],[],[],[],[],[],[],[0,0,0,0,0,0,0,0,0,0,0,0,0,0],[],[],[],[],[],[]] except [Floor45.e9692402784698,Floor45.e9692402783930,Floor45.e9692402772410,Floor45.e9692402771642,Floor45.e9692402768570,Floor45.e9692402063802,Floor45.e9692402063034,Floor45.e9692402051514,Floor45.e9692401871290,Floor45.e9692402050746,Floor45.e9692402047674,Floor45.e9692401870522,Floor45.e9692401867450,Floor45.e9692401822394]
theorem f159 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,1,0,1]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,1,0,1] (by decide)
theorem f160 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,1,1,0]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,1,1,0] (by decide)
end Blc.SelfintSingleObject.Compact45
