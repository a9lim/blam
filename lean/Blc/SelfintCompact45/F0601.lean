import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f2166 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,1,0,0,2,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [1,1,0,0,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [1,1,0,0,2,0]) withHints bank eachTags[[3,3,3,3,3],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[3,3,3,3,3,3,3,3,3,3,3,3,3,3]] except []
certRow f2167 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,1,0,1,0,1]) using bank tags []
certRow f2168 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,1,0,1,1,0]) using bank tags []
tagSlices f2169 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,1,0,2,0,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [1,1,0,2,0,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [1,1,0,2,0,0]) withHints bank eachTags[[3,3,3,3,3,3,3],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2],[2,2,2,2,2,3,3],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[3,3,3,3,3,3,3,3,3,3,3,3,3,3]] except []
certRow f2170 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,1,1,0,0,1]) using bank tags []
certRow f2171 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,1,1,0,1,0]) using bank tags []
certRow f2172 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,1,1,1,0,0]) using bank tags []
tagSlices f2173 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [1,1,2,0,0,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [1,1,2,0,0,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [1,1,2,0,0,0]) withHints bank eachTags[[3,3,3,3],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[],[2,2,2,3],[2,2,2,2,2,2,2,2,2,2],[],[3,3,3,3,3,3,3,3,3]] except []
end Blc.SelfintSingleObject.Compact45
