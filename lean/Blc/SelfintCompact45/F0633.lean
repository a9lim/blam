import Blc.SelfintPositiveWord45
import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f3975 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [3,4,1,0]) using bank tags [3,9]
certRow f3976 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,0,0,4]) using bank tags []
certRow f3977 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,0,1,3]) using bank tags []
certRow f3978 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,0,2,2]) using bank tags [2,2,2,2,2]
certRow f3979 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,0,3,1]) using bank tags []
certRow f3980 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,0,4,0]) using bank tags []
certRow f3981 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,1,0,3]) using bank tags []
certRow f3982 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,1,1,2]) using bank tags [2,2,2,2,2]
certRow f3983 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,1,2,1]) using bank tags [2,2,2,2,2]
certRow f3984 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,1,3,0]) using bank tags []
certRow f3985 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,2,0,2]) using bank tags [2,2,2,2,2]
certRow f3986 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,2,1,1]) using bank tags [2,2,2]
certRow f3987 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,2,2,0]) using bank tags [2,2,2]
certRow f3988 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,3,0,1]) using bank tags []
certRow f3989 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,3,1,0]) using bank tags []
certRow f3990 on (Grammar43.fourRow ⟨1,2,1,4,4,8⟩ [0,1] [4,4,0,0]) using bank tags []
theorem f4277 : BadRow (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,0,4]) := sparse_four ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,0,4] (by decide)
tagSlices f4278 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,1,3]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,1,3]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,1,3]) withHints bank eachTags[[],[6,6,6,6,6,6,6,6],[6,6,6],[6,6,6],[6,6,6,6,6,6,6,6,6],[6],[6,6,6,6],[6,6,6,6,6,6,6,6,6,6,6,6]] except []
tagSlices f4279 on (Grammar43.fourRow ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,2,2]) byParts (fun j => Split43.four 8 j ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,2,2]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,4⟩ [0,1] [0,0,0,2,2]) withHints bank eachTags[[],[6,6,6,6,6],[6,6,6,6,6,6,6],[6,6,6,6,6,6],[6,6,6,6,6,6,6,6],[6,6],[],[6,6,6,6,6,6,6,6,6,6,6,6]] except []
end Blc.SelfintSingleObject.Compact45
