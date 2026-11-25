import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f2119 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,2,1,0,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,2,6,4⟩ [0,1] [0,0,2,1,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,0,2,1,0,1]) withHints bank eachTags[[1,1,1,1,1,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1],[1],[47,47,0,108,0],[],[2,2,2,2,2]] except [Floor45.e9646874131254,Floor45.e9646874123990]
tagSlices f2120 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,2,1,1,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [0,0,2,1,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,0,2,1,1,0]) withHints bank eachTags[[2,2,2,1],[2,2,2,2,2,2,2,2,2,2,47,47,0],[2,2,2],[2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2,1],[2,2,2,2,2,2,2,2,2,2],[4,4,4],[2,2,2,2,2,2,2,2,2,2,2,2,2]] except [Floor45.e9646874131258]
certRow f2121 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,2,2,0,0]) using bank tags []
tagSlices f2122 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,1,0,0,1,2]) byParts (fun j => Split43.four 12 j ⟨1,2,1,2,6,4⟩ [0,1] [0,1,0,0,1,2]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,1,0,0,1,2]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,5,5,5,1],[],[],[],[1,1,1,1]] except []
end Blc.SelfintSingleObject.Compact45
