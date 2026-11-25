import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14033 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [1,2,0,1,0]
certRow g14033s0 on (rg14033 0) using bank tags []
certRow g14033s1 on (rg14033 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14033s2 on (rg14033 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14033s3 on (rg14033 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14033s4 on (rg14033 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14033s5 on (rg14033 5) using bank tags []
certRow g14033s6 on (rg14033 6) using bank tags [6,1,1,1,1,1,6,1,1,1,1,1,19,1,1,1,1,1,6,1,1,1,1,1,19,1,1,1,1,1]
certRow g14033s7 on (rg14033 7) using bank tags [6,1,1,1,1,1,19,1,1,1,1,1,1,1,1,1,29,1,29,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14033s8 on (rg14033 8) using bank tags []
certRow g14033s9 on (rg14033 9) using bank tags []
certRow g14033s10 on (rg14033 10) using bank tags [28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1]
certRow g14033s11 on (rg14033 11) using bank tags []
theorem g14033 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,2,0,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [1,2,0,1,0] (.cons (g14033s0) (.cons (g14033s1) (.cons (g14033s2) (.cons (g14033s3) (.cons (g14033s4) (.cons (g14033s5) (.cons (g14033s6) (.cons (g14033s7) (.cons (g14033s8) (.cons (g14033s9) (.cons (g14033s10) (.cons (g14033s11) .nil))))))))))))
certRow g14034 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,2,1,0,0]) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,6,28,28,28,16,28,28,28,13,28,28,28,13,28,28,28,6,35,29,29,13,29,35,29,27,35,29,29,13,29,35,29,27,6,29,29,13,29,6,29,27,0,29,29,6,29,0,29,6] except [Floor44.e5609324007074,Floor44.e4785136483562]
private abbrev rg14035 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [1,2,1,0,0]
certRow g14035s0 on (rg14035 0) using bank tags []
certRow g14035s1 on (rg14035 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14035s2 on (rg14035 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14035s3 on (rg14035 3) using bank tags []
certRow g14035s4 on (rg14035 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14035s5 on (rg14035 5) using bank tags []
certRow g14035s6 on (rg14035 6) using bank tags [6,1,1,1,1,1,6,1,1,1,1,1,6,1,1,1,1,1]
certRow g14035s7 on (rg14035 7) using bank tags [6,1,1,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14035s8 on (rg14035 8) using bank tags []
certRow g14035s9 on (rg14035 9) using bank tags []
certRow g14035s10 on (rg14035 10) using bank tags [28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1]
certRow g14035s11 on (rg14035 11) using bank tags []
theorem g14035 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,2,1,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [1,2,1,0,0] (.cons (g14035s0) (.cons (g14035s1) (.cons (g14035s2) (.cons (g14035s3) (.cons (g14035s4) (.cons (g14035s5) (.cons (g14035s6) (.cons (g14035s7) (.cons (g14035s8) (.cons (g14035s9) (.cons (g14035s10) (.cons (g14035s11) .nil))))))))))))
certRow g14036 on (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,3,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
