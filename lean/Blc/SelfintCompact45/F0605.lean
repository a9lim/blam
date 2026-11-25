import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f2190 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [2,1,0,1,0,0]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [2,1,0,1,0,0]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [2,1,0,1,0,0]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[2,2,2,2,2],[2,2,2,2],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[]] except []
certRow f2191 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [2,1,1,0,0,0]) using bank tags [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]
certRow f2192 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [2,2,0,0,0,0]) using bank tags []
certRow f2333 on (Grammar43.fourRow ⟨1,3,1,2,4,8⟩ [0,0,1] [2,2,2,2]) using bank tags []
certRow f2334 on (Grammar43.fourRow ⟨1,3,1,2,4,8⟩ [0,1,0] [2,2,2,2]) using bank tags []
certRow f2336 on (Grammar43.fourRow ⟨1,3,2,2,4,7⟩ [0,1,1] [1,2,2,2]) using bank tags []
certRow f2337 on (Grammar43.fourRow ⟨1,3,2,2,4,7⟩ [0,1,1] [2,1,2,2]) using bank tags []
certRow f2338 on (Grammar43.fourRow ⟨1,3,2,2,4,7⟩ [0,1,1] [2,2,1,2]) using bank tags []
certRow f2339 on (Grammar43.fourRow ⟨1,3,2,2,4,7⟩ [0,1,1] [2,2,2,1]) using bank tags []
certRow f2409 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,0,0,2,2]) using bank tags []
certRow f2410 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,0,1,1,2]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,20,20,20,1,1,1,1,1,1,1,1,1,1,33,33,33,0,20,0] except [Floor45.e9570823007470,Floor45.e9570823002990]
certRow f2411 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,0,1,2,1]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,1,20,20,20,1,1,1,1,1,1,1,1,1,1,33,33,33,1,0,20,0] except [Floor45.e9570823007478,Floor45.e9570823002998]
certRow f2412 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,0,2,0,2]) using bank tags []
certRow f2413 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,0,2,1,1]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,1,20,20,20,1,1,1,1,1,1,1,1,1,1,33,33,33,1,0,20,0] except [Floor45.e9570823007862,Floor45.e9570823003062]
certRow f2414 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,0,2,2,0]) using bank tags []
certRow f2415 on (Grammar43.fourRow ⟨1,3,1,2,5,4⟩ [0,0,1] [0,1,0,1,2]) using bank tags [12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,1,1,20,20,20,20,20,0,35,35,19,37,1,1,1,1,1,1,1,1,1,1,33,33,33,33,33,33,1,20,21,21,0,0,8] except [Floor45.e9673902590830,Floor45.e9570823009134,Floor45.e9570823003502]
end Blc.SelfintSingleObject.Compact45
