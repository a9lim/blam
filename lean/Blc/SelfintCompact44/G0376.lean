import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow g8800 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,0,1,3]) using bank tags []
certRow g8801 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,0,1,3]) using bank tags []
private abbrev rg8802 (i : Nat) := Split43.five 12 i 7 6 6 false 5 2 4 [1,0,2,2]
certRow g8802s0 on (rg8802 0) using bank tags []
certRow g8802s1 on (rg8802 1) using bank tags [25,1,29,29,29,29,29,57,29,1,29,28,29,29,29,29,57,29,25,29,28,29,29,29,1,1,29,29,29,29,29,57,29,1,29,28,29,29,29,29,57,29,1,29,28,29,29,29]
certRow g8802s2 on (rg8802 2) using bank tags [25,23,29,29,29,29,29,57,29,23,29,28,29,29,29,29,57,29,25,29,28,29,29,29]
certRow g8802s3 on (rg8802 3) using bank tags [1,23,29,29,29,29,29,57,29,23,29,28,29,29,29,29,57,29,1,29,28,29,29,29,1,23,29,29,29,29,29,57,29,23,29,28,29,29,29,29,57,29,1,29,28,29,29,29]
certRow g8802s4 on (rg8802 4) using bank tags []
certRow g8802s5 on (rg8802 5) using bank tags []
certRow g8802s6 on (rg8802 6) using bank tags []
certRow g8802s7 on (rg8802 7) using bank tags []
certRow g8802s8 on (rg8802 8) using bank tags []
certRow g8802s9 on (rg8802 9) using bank tags []
certRow g8802s10 on (rg8802 10) using bank tags []
certRow g8802s11 on (rg8802 11) using bank tags []
theorem g8802 : BadRow (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,0,2,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 5 2 4 [1,0,2,2] (.cons (g8802s0) (.cons (g8802s1) (.cons (g8802s2) (.cons (g8802s3) (.cons (g8802s4) (.cons (g8802s5) (.cons (g8802s6) (.cons (g8802s7) (.cons (g8802s8) (.cons (g8802s9) (.cons (g8802s10) (.cons (g8802s11) .nil))))))))))))
certRow g8803 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,0,2,2]) using bank tags [21,57,20,1,1,1,1,4,1,1,20,1,1,1,1,1,21,57,1,1,1,1,1,4,1,1,20,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g8804 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,0,3,1]) using bank tags []
certRow g8805 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,0,3,1]) using bank tags []
certRow g8806 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,0,4,0]) using bank tags []
certRow g8807 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,0,4,0]) using bank tags []
certRow g8808 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,1,0,3]) using bank tags []
certRow g8809 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,1,0,3]) using bank tags []
certRow g8810 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,1,1,2]) using bank tags []
certRow g8811 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,1,1,2]) using bank tags []
certRow g8812 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,1,2,1]) using bank tags []
certRow g8813 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,1,2,1]) using bank tags []
certRow g8814 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,1,3,0]) using bank tags []
certRow g8815 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,1,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
