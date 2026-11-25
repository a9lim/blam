import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f208 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [1,1,1,2,2]) using bank tags []
certRow f209 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [1,1,2,1,2]) using bank tags []
certRow f210 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [1,1,2,2,1]) using bank tags []
certRow f211 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [1,2,0,2,2]) using bank tags [1,1,1,1,1,20,20,1,1,1,1,1,1,1,1,1,1,1,1,20,20,21,20,28,28,20,21,20]
certRow f212 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [1,2,1,1,2]) using bank tags []
certRow f213 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [1,2,1,2,1]) using bank tags []
certRow f214 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [1,2,2,0,2]) using bank tags [1,1,1,1,1,1,20,20,1,1,1,1,1,1,1,1,1,1,1,20,20,20,0,28,28,20,20,0] except [Floor45.e9573493567086,Floor45.e9573493357486]
certRow f215 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [1,2,2,1,1]) using bank tags []
certRow f216 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [1,2,2,2,0]) using bank tags [1,1,1,1,1,1,20,1,1,1,1,1,1,1,20,20,0,0] except [Floor45.e9573494287994,Floor45.e9573493567098]
certRow f217 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,0,1,2,2]) using bank tags [1,1,1,1,1,20,20,28,20,28,28,20,0,20,1,1,1,1,1,20,20,20,20,20,20,20,20,20] except [Floor45.e9676572800750]
certRow f218 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,0,2,1,2]) using bank tags [1,1,1,1,1,20,20,20,0,28,28,0,20,0,1,1,1,1,1,20,20,20,20,20,20,20,20,20] except [Floor45.e9676572810478,Floor45.e9676572807022,Floor45.e9676572579694]
certRow f219 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,0,2,2,1]) using bank tags [1,1,1,1,1,20,20,20,0,20,20,28,192,0,1,1,1,1,1,20,20,20,20,20,20,20,20,20] except [Floor45.e9676572810486,Floor45.e9676572579702]
certRow f220 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,1,0,2,2]) using bank tags [1,1,1,1,1,20,20,28,20,28,28,20,20,20,1,1,1,1,1,20,20,20,20,20,20,20,20,20]
certRow f221 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,1,1,1,2]) using bank tags []
certRow f222 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,1,1,2,1]) using bank tags []
certRow f223 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,1,2,0,2]) using bank tags [1,1,1,1,1,20,20,20,20,28,28,20,20,20,1,1,1,1,1,20,20,20,0,20,28,20,20,0] except [Floor45.e9573493599854,Floor45.e9573493365678]
certRow f224 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,1,2,1,1]) using bank tags []
certRow f225 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,1,2,2,0]) using bank tags [1,1,1,1,1,20,20,20,20,1,1,1,1,1,20,20,20,0] except [Floor45.e9573493599866]
certRow f226 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,2,0,1,2]) using bank tags [1,1,1,1,1,8,8,20,8,0,0,8,20,8,1,1,1,1,1,8,8,20,8,20,20,8,20,8] except [Floor45.e9676573700974,Floor45.e9676573687150]
certRow f227 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,2,0,2,1]) using bank tags [1,1,1,1,1,8,8,20,8,20,20,8,0,8,1,1,1,1,1,8,8,20,8,20,20,8,20,8] except [Floor45.e9676572802422]
certRow f228 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,2,1,0,2]) using bank tags [1,1,1,1,1,8,8,20,8,28,28,8,21,8,1,1,1,1,1,8,8,20,8,20,28,8,28,8]
certRow f229 on (Grammar43.fourRow ⟨0,3,0,2,5,7⟩ [0,0,0] [2,2,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact45
