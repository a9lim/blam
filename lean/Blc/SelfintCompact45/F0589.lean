import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f2115 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,2,1,0]) byParts (fun j => Split43.four 12 j ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,2,1,0]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,2,1,0]) withHints bank eachTags[[2,2,2,1],[2,2,2,2,2,2,2,2,2,2],[2,2,2],[2,2,2,2,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[4,4,4],[2,2,2,2,2,2,2,2,2,2,2,2,2,5,1],[1],[0,0,0,0],[],[2,2,2,5]] except [Floor45.e9646874152762,Floor45.e9646874151898,Floor45.e9646874130234,Floor45.e9646874496826]
certRow f2116 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,2,0,0,2]) using bank tags []
tagSlices f2117 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,2,0,1,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,2,6,4⟩ [0,1] [0,0,2,0,1,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,0,2,0,1,1]) withHints bank eachTags[[1,1,1,1,1,1,1,1,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1],[],[47,47,0,108,0],[],[2,2,2,2,2]] except [Floor45.e9646874131062,Floor45.e9646874123958]
certRow f2118 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,2,0,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
