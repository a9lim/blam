import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f1777 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [0,2,0,2]) using bank tags []
certRow f1778 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [0,2,1,1]) using bank tags []
certRow f1779 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [0,2,2,0]) using bank tags []
certRow f1780 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [1,0,1,2]) using bank tags []
certRow f1781 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [1,0,2,1]) using bank tags []
certRow f1782 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [1,1,0,2]) using bank tags []
certRow f1783 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [1,1,1,1]) using bank tags []
certRow f1784 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [1,1,2,0]) using bank tags []
certRow f1785 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [1,2,0,1]) using bank tags []
certRow f1786 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [1,2,1,0]) using bank tags []
certRow f1787 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [2,0,0,2]) using bank tags []
certRow f1788 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [2,0,1,1]) using bank tags []
certRow f1789 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [2,0,2,0]) using bank tags []
certRow f1790 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [2,1,0,1]) using bank tags []
certRow f1791 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [2,1,1,0]) using bank tags []
certRow f1792 on (Grammar43.fourRow ⟨1,4,0,2,4,4⟩ [0,0,0,0] [2,2,0,0]) using bank tags []
certRow f1793 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,0,0,1] [0,0,1,2]) using bank tags [14,14,14,14,0,1,6,22,25,0,1,1,1,0,0,1,1,1,20,0,23,44,6,44,0] except [Floor44.e4837794909038,Floor44.e4834573683566,Floor44.e4786254711662,Floor44.e4786255301486,Floor44.e4783034076014,Floor44.e4770149174126]
certRow f1794 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,0,0,1] [0,0,2,1]) using bank tags [14,14,14,14,175,22,22,6,25,167,1,1,1,0,114,1,1,1,20,105,23,44,6,44,83] except [Floor44.e4786254711670]
certRow f1795 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,0,0,1] [0,1,0,2]) using bank tags [14,14,14,14,14,14,14,22,176,15,26,1,1,1,25,25,22,168,1,1,1,1,1,0,0,22,115,21,26,1,1,1,20,20,0,106,23,23,47,44,6,44,44,22,34] except [Floor44.e4786254712430,Floor44.e4786254711726,Floor44.e4783034076782]
certRow f1796 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,0,0,1] [0,1,1,1]) using bank tags []
certRow f1797 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,0,0,1] [0,1,2,0]) using bank tags [15,15,14,15,35,49,1,1,25,35,32,1,1,35,22,21,1,1,20,35,23,32,6,44,22]
certRow f1798 on (Grammar43.fourRow ⟨1,4,1,2,4,3⟩ [0,0,0,1] [0,2,0,1]) using bank tags [15,26,14,15,14,15,15,0,0,26,32,6,35,35,25,25,0,0,15,26,1,1,1,72,0,6,0,26,47,1,1,1,20,20,0,0,23,23,47,44,6,44,44,22,0] except [Floor44.e4837794910006,Floor44.e4837794909142,Floor44.e4834573684534,Floor44.e4834573683670,Floor44.e4786254711766,Floor44.e4786255301590,Floor44.e4783034076982,Floor44.e4783034076118,Floor44.e4770149174230]
end Blc.SelfintSingleObject.Compact44
