import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f142 on (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [0,0,1,0,0,0,2]) byParts (fun j => Split43.four 24 j ⟨0,2,0,2,7,3⟩ [0,0] [0,0,1,0,0,0,2]) byCover (Split43.four_cover 24 (by decide) ⟨0,2,0,2,7,3⟩ [0,0] [0,0,1,0,0,0,2]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,8,8,8,8,8,8,8,8,8,8,8,8,8,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[],[],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[8,8,8,8,8,8,8,8,8,8,8,8,8,8],[],[],[],[],[],[],[],[],[]] except [Floor45.e9692869715566,Floor45.e9692869715374,Floor45.e9692869712494,Floor45.e9692869712302,Floor45.e9692869711534,Floor45.e9692869535342,Floor45.e9692869535150,Floor45.e9692869532270,Floor45.e9692869487214,Floor45.e9692869532078,Floor45.e9692869531310,Floor45.e9692869487022,Floor45.e9692869486254,Floor45.e9692869474990]
theorem f143 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [0,0,1,0,0,1,1]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [0,0,1,0,0,1,1] (by decide)
end Blc.SelfintSingleObject.Compact45
