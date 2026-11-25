import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f2111 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,1,0,2]) byParts (fun j => Split43.four 12 j ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,1,0,2]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,1,0,2]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,1,1,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,5,1,1],[],[95,28,97,0,97,0,0],[],[2,2,2,2,2,5,5]] except [Floor45.e9646874129326,Floor45.e9646874496622,Floor45.e9646874495918]
theorem f2112 : BadRow (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,1,1,1]) := sparse_four ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,1,1,1] (by decide)
tagSlices f2113 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,1,2,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,1,2,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,1,2,0]) withHints bank eachTags[[2,2,2],[2,2,2,2,2,2,2,2,2,2,0,0,97,0],[2,2,2],[2,2,2,2,2,2,2,5,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2],[4,4,4],[2,2,2,2,2,2,2,2,2,2,2,2,2,5,1,1,1]] except [Floor45.e9646874152570,Floor45.e9646874151866,Floor45.e9646874496634]
tagSlices f2114 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,2,0,1]) byParts (fun j => Split43.four 12 j ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,2,0,1]) byCover (Split43.four_cover 12 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,0,1,2,0,1]) withHints bank eachTags[[1,1,1,1,1,1],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2,1,1,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,5,5,1,1,1],[1],[0,0,0,0,0,0,0],[],[2,2,2,2,2,5,5]] except [Floor45.e9646874152758,Floor45.e9646874151894,Floor45.e9646874130230,Floor45.e9646874129366,Floor45.e9646874123734,Floor45.e9646874496822,Floor45.e9646874495958]
end Blc.SelfintSingleObject.Compact45
