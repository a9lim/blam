import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f2185 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [2,0,1,0,1,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [2,0,1,0,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [2,0,1,0,1,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[]] except []
tagSlices f2186 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [2,0,1,1,0,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [2,0,1,1,0,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [2,0,1,1,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[]] except []
certRow f2187 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [2,0,2,0,0,0]) using bank tags []
tagSlices f2188 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [2,1,0,0,0,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [2,1,0,0,0,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [2,1,0,0,0,1]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[]] except []
tagSlices f2189 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [2,1,0,0,1,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [2,1,0,0,1,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [2,1,0,0,1,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[]] except []
end Blc.SelfintSingleObject.Compact45
