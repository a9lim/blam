import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f524 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [0,1,1,1,0,2]) byParts (fun j => Split43.four 24 j ⟨0,2,0,3,6,5⟩ [0,0] [0,1,1,1,0,2]) byCover (Split43.four_cover 24 (by decide) ⟨0,2,0,3,6,5⟩ [0,0] [0,1,1,1,0,2]) withHints bank eachTags[[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[6,6,6,6,6,1,1,20,20,57,30,20,20,8,20,20,20,20,20,8,20,0,0,0,0],[6,6,6,6],[6,6,6,6,6,2,2,2,2,2,1,1],[6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,1,1,1,2,1,1,1],[6,6,6,6,6,6,6,2,2],[2,2,2,2,2,20,21,0,149,102,0,0],[],[2,2,2,2,2,2,2,2],[6,6,6,6],[2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,8,8],[],[],[]] except [Floor45.e9692726543982,Floor45.e9692726522286,Floor45.e9692715880046,Floor45.e9692715879342,Floor45.e9692424271470,Floor45.e9692424638062,Floor45.e9692424637358]
certRow f525 on (Grammar43.fourRow ⟨0,2,0,3,6,5⟩ [0,0] [0,1,1,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
