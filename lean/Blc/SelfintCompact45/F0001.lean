import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
tagSlices f4 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,1,0,2,2,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,1,0,2,2,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,1,0,2,2,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,0,0,20,20,20,20,20,20,20,20,20,20,20,20],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1]] except [Floor45.e9692682549742,Floor45.e9692682542830]
certRow f5 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,1,1,1,2,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f6 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,1,1,2,1,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f7 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,1,1,2,2,1]) using bank tags [39,1,1,1,1,1,1,39,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
tagSlices f8 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,1,2,0,2,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,1,2,0,2,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,1,2,0,2,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,28,28,20,20,20,8,8,20,8,20,20,8,20,8],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1]] except []
certRow f9 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,1,2,1,1,2]) using bank tags [1,1,1,1,11,1,1,1,1,1,1,1,1,1,1,11,1,1,1,1,11,1,1,1,1,1,1,1]
certRow f10 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,1,2,1,2,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
tagSlices f11 on (Grammar43.fourRow ⟨0,2,0,2,6,7⟩ [0,0] [0,1,2,2,0,2]) byParts (fun j => Split43.four 8 j ⟨0,2,0,2,6,7⟩ [0,0] [0,1,2,2,0,2]) byCover (Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,7⟩ [0,0] [0,1,2,2,0,2]) withHints bank eachTags[[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[1,1,1,1,1],[1,1,1,1,28,28,8,20,8,8,8,8,8,20,8,8,8,8],[1,1,1,1,1],[1,1,1,1,1,1,1,1,1,1,1,1,1,1],[],[1,1,1,1,1,1,1,1,1,1,1,1,1,1]] except []
end Blc.SelfintSingleObject.Compact45
