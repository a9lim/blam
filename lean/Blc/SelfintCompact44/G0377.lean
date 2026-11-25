import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg8816 (i : Nat) := Split43.five 12 i 7 6 6 false 5 2 4 [1,2,0,2]
certRow g8816s0 on (rg8816 0) using bank tags []
certRow g8816s1 on (rg8816 1) using bank tags [23,1,29,29,29,29,29,57,29,1,29,28,29,29,29,29,56,29,23,29,28,29,29,29,6,11,29,29,29,29,29,57,29,11,29,28,29,29,29,29,14,29,6,29,28,29,29,29]
certRow g8816s2 on (rg8816 2) using bank tags [23,23,29,29,29,29,29,57,29,23,29,28,29,29,29,29,57,29,23,29,28,29,29,29]
certRow g8816s3 on (rg8816 3) using bank tags [6,23,29,29,29,29,29,57,29,23,29,28,29,29,29,29,14,29,6,29,28,29,29,29,6,6,29,29,29,29,29,57,29,6,29,28,29,29,29,29,57,29,6,29,28,29,29,29]
certRow g8816s4 on (rg8816 4) using bank tags []
certRow g8816s5 on (rg8816 5) using bank tags []
certRow g8816s6 on (rg8816 6) using bank tags []
certRow g8816s7 on (rg8816 7) using bank tags []
certRow g8816s8 on (rg8816 8) using bank tags []
certRow g8816s9 on (rg8816 9) using bank tags []
certRow g8816s10 on (rg8816 10) using bank tags []
certRow g8816s11 on (rg8816 11) using bank tags []
theorem g8816 : BadRow (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,2,0,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 5 2 4 [1,2,0,2] (.cons (g8816s0) (.cons (g8816s1) (.cons (g8816s2) (.cons (g8816s3) (.cons (g8816s4) (.cons (g8816s5) (.cons (g8816s6) (.cons (g8816s7) (.cons (g8816s8) (.cons (g8816s9) (.cons (g8816s10) (.cons (g8816s11) .nil))))))))))))
certRow g8817 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,2,0,2]) using bank tags [21,56,20,1,1,1,1,4,1,1,20,1,1,1,1,5,6,1,20,1,1,1,1,1,1,1,20,1,1,1,1,5,1,1,20,1,1,1,1,1]
certRow g8818 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,2,1,1]) using bank tags []
certRow g8819 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,2,1,1]) using bank tags []
certRow g8820 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,2,2,0]) using bank tags [23,26,29,29,29,29,29,57,29,26,29,28,29,29,29,29,56,29,23,29,28,29,29,29,23,6,29,29,29,29,29,57,29,6,29,28,29,29,29,29,57,29,23,29,28,29,29,29,23,23,29,29,29,29,29,57,29,23,29,28,29,29,29,29,57,29,23,29,28,29,29,29]
certRow g8821 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,2,2,0]) using bank tags [21,56,20,1,1,1,1,4,21,57,20,1,1,1,1,4,1,1,20,1,1,1,1,5]
certRow g8822 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,3,0,1]) using bank tags []
certRow g8823 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,3,0,1]) using bank tags []
certRow g8824 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,3,1,0]) using bank tags []
certRow g8825 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,3,1,0]) using bank tags []
certRow g8826 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [1,4,0,0]) using bank tags []
certRow g8827 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [1,4,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
