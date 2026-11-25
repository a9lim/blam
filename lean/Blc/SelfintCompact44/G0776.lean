import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g14431 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,1,0,3]) using bank tags []
certRow g14432 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,1,1,2]) using bank tags [57,1,57,1,57,1,57,1,6,1,6,1,6,1]
certRow g14433 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,1,1,2]) using bank tags []
certRow g14434 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,1,2,1]) using bank tags [57,1,57,1,57,1,57,1,57,122,6,1,6,1,6,1]
certRow g14435 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,1,2,1]) using bank tags []
certRow g14436 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,1,3,0]) using bank tags [57,1,57,1,57,1,57,13,57,13,57,13,57,13,57,1,57,15,57,0,57,0,29,0,29,0,29,35,29,22] except [Floor44.e4786764651770,Floor44.e4786764143482,Floor44.e4838381695226,Floor44.e4786842087674]
certRow g14437 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,1,3,0]) using bank tags []
certRow g14438 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,2,0,2]) using bank tags [57,1,57,1,57,1,57,1,57,1,6,1,6,1,57,1,57,1,57,1,57,1,57,1,29,0,29,0,29,0,29,0] except [Floor44.e4838381697134,Floor44.e4786842089582,Floor44.e4838381684654,Floor44.e4786842077102]
certRow g14439 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,2,0,2]) using bank tags []
certRow g14440 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,2,1,1]) using bank tags [57,1,57,1,57,1,57,123,6,1,6,1,6,1]
certRow g14441 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,2,1,1]) using bank tags []
certRow g14442 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,2,2,0]) using bank tags [57,1,57,1,57,1,57,1,57,1,57,1,29,193,29,147]
certRow g14443 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,2,2,0]) using bank tags []
certRow g14444 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,3,0,1]) using bank tags [57,1,57,1,57,1,57,1,57,1,57,1,57,1,57,13,57,13,57,13,57,13,57,13,57,13,57,13,57,1,57,15,57,15,57,6,57,0,29,0,29,0,29,0,29,0,29,0,29,0] except [Floor44.e4786764650454,Floor44.e4838381684694,Floor44.e4786842077142,Floor44.e4838382903094,Floor44.e4786843295542,Floor44.e4838382901206,Floor44.e4786843293654]
certRow g14445 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,3,0,1]) using bank tags []
certRow g14446 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,3,1,0]) using bank tags [57,1,57,1,57,13,57,13,57,13,57,13,57,15,57,6,57,0,29,0,29,0] except [Floor44.e4786764143578,Floor44.e4838382903098,Floor44.e4786843295546]
certRow g14447 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,3,1,0]) using bank tags []
certRow g14448 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,0,4,0,0]) using bank tags []
certRow g14449 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,0,4,0,0]) using bank tags []
certRow g14450 on (Grammar43.fiveRow 8 5 4 false 4 3 5 [0,1,0,0,3]) using bank tags [57,14,57,15,57,1,57,1,57,1,57,1,57,1,57,13,57,13,57,13,57,13,57,13,57,15,57,1,29,6,29,6,29,195,29,150]
certRow g14451 on (Grammar43.fiveRow 8 5 4 true 4 3 5 [0,1,0,0,3]) using bank tags []
end Blc.SelfintSingleObject.Compact44
