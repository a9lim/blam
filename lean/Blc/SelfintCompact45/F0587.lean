import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f2107 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,0,2,1,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [0,0,0,2,1,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,0,0,2,1,1]) withHints bank eachTags[[1,1,1,1,1],[2,2,2,2,2,2,2,2,2,2,0,0,0],[2,2,2],[2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,1]] except [Floor45.e9646874127990,Floor45.e9646874126262,Floor45.e9646874123190]
certRow f2108 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,0,2,2,0]) using bank tags []
tagSlices f2109 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,0,1,2]) byParts (fun j => Split43.four 12 j ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,0,1,2]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,0,1,2]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,1],[],[95,0,0,0,0,0],[],[2,2,2,2,2,5]] except [Floor45.e9646874151790,Floor45.e9646874129646,Floor45.e9646874129262,Floor45.e9646874123630,Floor45.e9646874495854]
tagSlices f2110 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,0,2,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,0,2,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,0,2,1]) withHints bank eachTags[[1,1,1,1,1,1,1,1,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,1,1,1],[],[28,20,0,0,0,0],[],[2,2,2,2,2,5]] except [Floor45.e9646874129654,Floor45.e9646874129270,Floor45.e9646874123638,Floor45.e9646874495862]
end Blc.SelfintSingleObject.Compact45
