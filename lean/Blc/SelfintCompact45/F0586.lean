import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f1917 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [0,2,2,2,2]) using bank tags []
certRow f1918 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [1,1,2,2,2]) using bank tags []
certRow f1919 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [1,2,1,2,2]) using bank tags []
certRow f1920 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [1,2,2,1,2]) using bank tags []
certRow f1921 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [1,2,2,2,1]) using bank tags []
certRow f1922 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [2,0,2,2,2]) using bank tags []
certRow f1923 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [2,1,1,2,2]) using bank tags []
certRow f1924 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [2,1,2,1,2]) using bank tags []
certRow f1925 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [2,1,2,2,1]) using bank tags []
certRow f1926 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [2,2,0,2,2]) using bank tags []
certRow f1927 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [2,2,1,1,2]) using bank tags []
certRow f1928 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [2,2,1,2,1]) using bank tags []
certRow f1929 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [2,2,2,0,2]) using bank tags []
certRow f1930 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [2,2,2,1,1]) using bank tags []
certRow f1931 on (Grammar43.fourRow ⟨1,2,1,2,5,8⟩ [0,1] [2,2,2,2,0]) using bank tags []
certRow f2103 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,0,0,2,2]) using bank tags []
tagSlices f2104 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,0,1,1,2]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [0,0,0,1,1,2]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,0,0,1,1,2]) withHints bank eachTags[[],[2,2,2,2,2,2,2,2,2,2,0,46,0],[2,2,2],[2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2]] except [Floor45.e9646874127598,Floor45.e9646874123118]
tagSlices f2105 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,0,1,2,1]) byParts (fun j => Split43.four 8 j ⟨1,2,1,2,6,4⟩ [0,1] [0,0,0,1,2,1]) byCover (Split43.four_cover 8 (by decide) ⟨1,2,1,2,6,4⟩ [0,1] [0,0,0,1,2,1]) withHints bank eachTags[[1,1,1,1,1],[2,2,2,2,2,2,2,2,2,2,0,0,0],[2,2,2],[2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3],[2,2,2,2,2],[2,2,2,2,2,2,2,2,2,2,2,2,2,2],[],[2,2,2,2,2,2,2,2,2,2,2,2,2,1]] except [Floor45.e9646874127606,Floor45.e9646874126198,Floor45.e9646874123126]
certRow f2106 on (Grammar43.fourRow ⟨1,2,1,2,6,4⟩ [0,1] [0,0,0,2,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact45
