import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f1713 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,0,1] [2,1,0,0,0]) using bank tags [27,27,27,27,27,27,27,27,27,13,13,13,13,13,13,13,13,13]
certRow f1714 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,0,0,1,2]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,0,6,6,6,87,0,40] except [Floor44.e4779496246126,Floor44.e4779506666350]
certRow f1715 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,0,0,2,1]) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,0,6,6,6,87,0,101] except [Floor44.e4779496246134,Floor44.e4779506666358]
certRow f1716 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,0,1,0,2]) using bank tags [14,15,1,1,1,14,15,1,1,1,1,1,1,1,15,32,1,1,1,26,30,0,0,6,6,6,6,6,87,87,0,0,102,101] except [Floor44.e4779496246894,Floor44.e4779496246190,Floor44.e4779506667118,Floor44.e4779506666414]
certRow f1717 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,0,1,1,1]) using bank tags []
certRow f1718 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,0,1,2,0]) using bank tags [14,1,1,14,1,1,1,1,1,26,1,1,30,0,0,6,6,6,87,0,0,100] except [Floor44.e4779496246906,Floor44.e4779496189370,Floor44.e4779506667130,Floor44.e4779505094266]
certRow f1719 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,0,2,0,1]) using bank tags [21,15,1,1,1,21,15,1,1,1,1,1,1,1,26,32,1,1,1,30,31,6,0,6,6,6,6,6,87,87,0,0,52,97] except [Floor44.e4779496246230,Floor44.e4779506667318,Floor44.e4779506666454]
certRow f1720 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,0,2,1,0]) using bank tags [21,1,1,21,1,1,1,1,1,26,1,1,30,6,0,6,6,6,87,0,52,100] except [Floor44.e4779496189402,Floor44.e4779506667322]
certRow f1721 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,1,0,0,2]) using bank tags [14,14,15,15,47,1,1,1,1,1,1,1,1,1,15,15,1,32,1,6,6,6,6,6]
certRow f1722 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,1,0,1,1]) using bank tags []
certRow f1723 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,1,0,2,0]) using bank tags [14,14,15,14,15,1,1,1,1,14,15,1,1,1,26,15,31,15,32,0,0,6,6,6,6,6,100,100] except [Floor44.e4779496192442,Floor44.e4779496189626]
certRow f1724 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,1,1,0,1]) using bank tags []
certRow f1725 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,1,1,1,0]) using bank tags []
certRow f1726 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,1,2,0,0]) using bank tags [14,14,14,1,1,1,14,1,1,26,26,26,0,6,6,6,100] except [Floor44.e4779496192490]
certRow f1727 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,2,0,0,1]) using bank tags [21,21,15,15,26,1,1,1,1,1,1,1,1,1,49,49,32,32,31,6,6,6,6,6]
certRow f1728 on (Grammar43.fourRow ⟨1,3,1,2,5,3⟩ [0,1,0] [0,2,0,1,0]) using bank tags [21,21,15,21,15,1,1,1,1,21,15,1,1,1,49,49,32,26,32,0,0,6,6,6,6,6,100,100] except [Floor44.e4779496193242,Floor44.e4779496189786]
end Blc.SelfintSingleObject.Compact44
