import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f265 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,0,2,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,0,2,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,0,2,0]) withHints bank eachTags[[],[12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,10,10,10,10,10,10,10,10,10],[12,12,12,12,12,36,36,36,36,36],[12,12,12,12,36,36,20,20],[12,12,12,12,12,36,36,20,20,18],[12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,36,36,36,20,36,36,20,20,18],[],[],[],[],[],[]] except []
certRow f266 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,1,0,1]) using bank tags []
certRow f267 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,1,1,0]) using bank tags []
tagSlices f268 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,2,0,0]) byParts (fun j => Split43.four 12 j ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,2,0,0]) byCover (Split43.four_cover 12 (by decide) ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,0,2,0,0]) withHints bank eachTags[[],[12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,10,10,10,10,10,10,10,10,10],[12,12,12,12,12,36,36,36,36,36],[12,12,12,12,36,36,20,20],[12,12,12,12,12,10,10,36,36,20],[12,12,12,12,12,12,12,12,12,12,12,12,12,12,10,10,10,10,10,36,36,36,20,10,10,36,36,20],[],[],[],[],[],[]] except []
certRow f269 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,1,0,0,1]) using bank tags []
certRow f270 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,1,0,1,0]) using bank tags []
certRow f271 on (Grammar43.fourRow ⟨0,3,0,2,6,3⟩ [0,0,0] [1,0,1,1,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact45
