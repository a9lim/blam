import Blc.SelfintCompact45.Base
import Blc.SelfintTagged45
import Blc.SelfintCompact45.Frames.Data24
namespace Blc.SelfintSingleObject.Compact45
open SourceRefutations OperandGrammar RowReplay Fast45
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g25080 on (row false false k298 5 5 3 5 [0,1,1,1,2]) using bank tags []
certRow g25082 on (row false false k298 5 5 3 5 [0,1,1,2,1]) using bank tags []
certRow g25084 on (row false false k298 5 5 3 5 [0,1,1,3,0]) using bank tags [12,11,12,11,12,1,12,1,12,11,12,11,12,1,12,1,12,1,12,1,12,1,12,10,12,10,12,10,12,19,12,37,12,19,12,37,44,1,44,1,44,1,44,20,44,20,44,20,44,20,44,21,44,20,44,20,44,20,44,21]
certRow g25086 on (row false false k298 5 5 3 5 [0,1,2,0,2]) using bank tags [12,1,12,1,12,1,44,1,44,1,12,1,12,1,12,1,12,1,12,1,44,1,44,39,44,1,44,1,12,1,44,1,44,1,44,1,44,1,44,1,44,1,20,20,20,20,20,20,89,20,20,20]
certRow g25088 on (row false false k298 5 5 3 5 [0,1,2,1,1]) using bank tags []
certRow g25090 on (row false false k298 5 5 3 5 [0,1,2,2,0]) using bank tags [12,1,44,1,44,40,44,1,44,1,12,1,44,1,44,40,12,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,44,1,20,20,20,20,49,49]
certRow g25092 on (row false false k298 5 5 3 5 [0,1,3,0,1]) using bank tags [12,11,12,11,12,1,12,1,12,1,12,1,12,11,12,11,12,1,12,1,12,1,12,1,12,1,12,1,12,10,12,10,12,10,12,10,12,10,12,19,12,19,12,19,12,19,44,1,44,1,44,1,44,1,44,1,44,20,44,1,44,140,44,1,44,21,44,21,44,20,8,8,8,8,44,21,44,20,8,8,8,8]
certRow g25094 on (row false false k298 5 5 3 5 [0,1,3,1,0]) using bank tags [12,11,12,11,12,1,12,1,12,11,12,11,12,1,12,1,12,10,12,10,12,10,12,19,12,19,12,19,12,19,44,1,44,1,44,1,44,20,44,21,44,20,44,21,44,21,44,21,44,20,44,21,44,21]
certRow g25096 on (row false false k298 5 5 3 5 [0,1,4,0,0]) using bank tags []
certRow g25098 on (row false false k298 5 5 3 5 [0,2,0,0,3]) using bank tags [12,11,12,11,12,37,12,37,12,40,12,11,12,11,12,37,12,37,12,40]
theorem g25100 (h : BadRow [Floor45.e9676763630446,Floor45.e9624765260138,Floor45.e9573684415342]) : BadRow (row false false k298 5 5 3 5 [0,2,0,1,2]) := tagged bank [12,11,12,11,12,1,12,1,12,1,12,1,12,11,12,11,12,1,12,1,12,1,44,20,44,40,44,21,44,1,12,1,12,1,44,20,44,1,12,1,44,21,44,1,44,21,44,1,12,19,12,19,12,19,12,19,20,20,20,20,20,20,20,20,20,20,44,28,44,21,20,0,0,0,44,28,44,21,20,0,0,0] (hard := [Floor45.e9676763630446,Floor45.e9624765260138,Floor45.e9573684415342]) (by decide +kernel) h
end Blc.SelfintSingleObject.Compact45
