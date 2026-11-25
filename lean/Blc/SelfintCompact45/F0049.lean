import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f161 on (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,2,0,0]) byParts (fun j => Split43.four 24 j ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,2,0,0]) byCover (Split43.four_cover 24 (by decide) ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,0,2,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20],[],[],[0,0,0,0,0],[],[],[],[],[],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],[],[],[],[],[],[]] except [Floor45.e9692402785178,Floor45.e9692402772890,Floor45.e9692402064282,Floor45.e9692402051994,Floor45.e9692401871770,Floor45.e9692402784746,Floor45.e9692402783978,Floor45.e9692402772458,Floor45.e9692402771690,Floor45.e9692402768618,Floor45.e9692402063850,Floor45.e9692402063082,Floor45.e9692402051562,Floor45.e9692401871338,Floor45.e9692402050794,Floor45.e9692402047722,Floor45.e9692401870570,Floor45.e9692401867498,Floor45.e9692401822442,Floor45.e9692332844778,Floor45.e9692332841706,Floor45.e9692332664554,Floor45.e9692332661482,Floor45.e9692332616426]
theorem f162 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,1,0,0,1]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,1,0,0,1] (by decide)
theorem f163 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,1,0,1,0]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,1,0,1,0] (by decide)
theorem f164 : BadRow (Grammar43.fourRow ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,1,1,0,0]) := sparse_four ⟨0,2,0,2,7,3⟩ [0,0] [0,1,0,1,1,0,0] (by decide)
end Blc.SelfintSingleObject.Compact45
