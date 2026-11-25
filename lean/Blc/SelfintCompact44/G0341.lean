import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g8067 on (Grammar43.fiveRow 7 6 6 true 4 2 4 [1,1,2,0]) using bank tags [27,59,1,1,28,28,28,20,28,1,13,59,1,1,27,59,1,1,28,28,28,20,28,1,13,59,1,1,27,59,1,1,28,28,28,20,28,1,13,59,1,1,29,12,1,1,1,1,3,3,26,27,12,44,6,1,14,28,15,20,1,1,3,3,14,28,15,56,1,1,1,1,3,3]
private abbrev rg8068 (i : Nat) := Split43.five 12 i 7 6 6 false 4 2 4 [1,2,0,1]
certRow g8068s0 on (rg8068 0) using bank tags []
certRow g8068s1 on (rg8068 1) using bank tags [48,28,28,28,28,13,28,28,48,28,28,28,28,13,28,28]
certRow g8068s2 on (rg8068 2) using bank tags [48,28,28,28,28,1,28,28]
certRow g8068s3 on (rg8068 3) using bank tags [48,28,28,28,28,1,28,28,48,28,28,28,28,11,28,28]
certRow g8068s4 on (rg8068 4) using bank tags []
certRow g8068s5 on (rg8068 5) using bank tags [29,45,29,29,29,29,29,48,29,58,29,29,29,29,29,29,29,11,29,29,29,29,48,29,29,29,29,29,28,29,29,29,27,29,45,29,29,29,19,19,29,29,29,29,29,48,29,44,29,29,29,29,29,19,29,11,29,29,29,29,48,29,29,29,29,29,28,29,29,29,27,19,19,29,29,29]
certRow g8068s6 on (rg8068 6) using bank tags []
certRow g8068s7 on (rg8068 7) using bank tags []
certRow g8068s8 on (rg8068 8) using bank tags []
certRow g8068s9 on (rg8068 9) using bank tags []
certRow g8068s10 on (rg8068 10) using bank tags []
certRow g8068s11 on (rg8068 11) using bank tags []
theorem g8068 : BadRow (Grammar43.fiveRow 7 6 6 false 4 2 4 [1,2,0,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 4 2 4 [1,2,0,1] (.cons (g8068s0) (.cons (g8068s1) (.cons (g8068s2) (.cons (g8068s3) (.cons (g8068s4) (.cons (g8068s5) (.cons (g8068s6) (.cons (g8068s7) (.cons (g8068s8) (.cons (g8068s9) (.cons (g8068s10) (.cons (g8068s11) .nil))))))))))))
private abbrev rg8069 (i : Nat) := Split43.five 12 i 7 6 6 true 4 2 4 [1,2,0,1]
certRow g8069s0 on (rg8069 0) using bank tags []
certRow g8069s1 on (rg8069 1) using bank tags [27,59,1,1,28,28,28,20,28,1,13,59,1,1,27,59,1,1,28,28,28,20,28,1,13,59,1,1]
certRow g8069s2 on (rg8069 2) using bank tags [27,59,1,1,28,28,28,11,28,1,1,59,1,1]
certRow g8069s3 on (rg8069 3) using bank tags [27,59,1,1,28,28,28,11,28,1,1,59,1,1,27,59,1,1,28,28,28,6,28,1,11,59,1,1]
certRow g8069s4 on (rg8069 4) using bank tags []
certRow g8069s5 on (rg8069 5) using bank tags [29,12,45,30,1,1,3,3,24,27,24,45,1,1,13,28,12,20,1,1,3,3,13,28,1,56,1,1,1,1,3,3,19,12,19,1,1,1,3,3,24,27,19,19,1,1,13,28,11,20,1,1,3,3,13,28,15,56,1,1,1,1,3,3]
certRow g8069s6 on (rg8069 6) using bank tags []
certRow g8069s7 on (rg8069 7) using bank tags []
certRow g8069s8 on (rg8069 8) using bank tags []
certRow g8069s9 on (rg8069 9) using bank tags []
certRow g8069s10 on (rg8069 10) using bank tags []
certRow g8069s11 on (rg8069 11) using bank tags []
theorem g8069 : BadRow (Grammar43.fiveRow 7 6 6 true 4 2 4 [1,2,0,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 true 4 2 4 [1,2,0,1] (.cons (g8069s0) (.cons (g8069s1) (.cons (g8069s2) (.cons (g8069s3) (.cons (g8069s4) (.cons (g8069s5) (.cons (g8069s6) (.cons (g8069s7) (.cons (g8069s8) (.cons (g8069s9) (.cons (g8069s10) (.cons (g8069s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
