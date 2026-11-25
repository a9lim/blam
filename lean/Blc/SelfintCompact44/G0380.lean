import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg8842 (i : Nat) := Split43.five 12 i 7 6 6 false 5 2 4 [2,2,0,1]
certRow g8842s0 on (rg8842 0) using bank tags []
certRow g8842s1 on (rg8842 1) using bank tags [20,11,29,29,29,29,29,27,29,11,29,28,29,29,29,29,48,29,20,29,28,29,29,29,20,11,29,29,29,29,29,27,29,11,29,28,29,29,29,29,48,29,20,29,28,29,29,29]
certRow g8842s2 on (rg8842 2) using bank tags [20,19,29,29,29,29,29,27,19,19,29,28,29,29,29,29,27,29,20,29,28,29,29,19]
certRow g8842s3 on (rg8842 3) using bank tags [20,24,29,29,29,29,29,27,29,24,29,28,29,29,29,29,48,29,20,29,28,29,29,29,20,19,29,29,29,29,29,27,19,19,29,28,29,29,29,29,27,29,20,29,28,29,29,19]
certRow g8842s4 on (rg8842 4) using bank tags []
certRow g8842s5 on (rg8842 5) using bank tags []
certRow g8842s6 on (rg8842 6) using bank tags []
certRow g8842s7 on (rg8842 7) using bank tags []
certRow g8842s8 on (rg8842 8) using bank tags []
certRow g8842s9 on (rg8842 9) using bank tags []
certRow g8842s10 on (rg8842 10) using bank tags []
certRow g8842s11 on (rg8842 11) using bank tags []
theorem g8842 : BadRow (Grammar43.fiveRow 7 6 6 false 5 2 4 [2,2,0,1]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 5 2 4 [2,2,0,1] (.cons (g8842s0) (.cons (g8842s1) (.cons (g8842s2) (.cons (g8842s3) (.cons (g8842s4) (.cons (g8842s5) (.cons (g8842s6) (.cons (g8842s7) (.cons (g8842s8) (.cons (g8842s9) (.cons (g8842s10) (.cons (g8842s11) .nil))))))))))))
certRow g8843 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [2,2,0,1]) using bank tags [20,56,11,1,1,1,1,3,20,56,11,1,1,1,1,3,20,57,19,1,1,1,1,3,20,56,24,1,1,1,1,3,20,57,19,1,1,1,1,3]
certRow g8844 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [2,2,1,0]) using bank tags [20,11,29,29,29,29,29,27,29,11,29,28,29,29,29,29,48,29,20,29,28,29,29,29,20,11,29,29,29,29,29,27,29,11,29,28,29,29,29,29,48,29,20,29,28,29,29,29,20,19,29,29,29,29,29,27,19,19,29,28,29,29,29,29,27,29,20,29,28,29,29,19]
certRow g8845 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [2,2,1,0]) using bank tags [20,56,11,1,1,1,1,3,20,56,11,1,1,1,1,3,20,57,19,1,1,1,1,3]
certRow g8846 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [2,3,0,0]) using bank tags []
certRow g8847 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [2,3,0,0]) using bank tags []
certRow g8848 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [3,0,0,2]) using bank tags []
certRow g8849 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [3,0,0,2]) using bank tags []
certRow g8850 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [3,0,1,1]) using bank tags []
certRow g8851 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [3,0,1,1]) using bank tags []
certRow g8852 on (Grammar43.fiveRow 7 6 6 false 5 2 4 [3,0,2,0]) using bank tags []
certRow g8853 on (Grammar43.fiveRow 7 6 6 true 5 2 4 [3,0,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
