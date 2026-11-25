import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14776 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [2,0,0,1,0,1]
certRow g14776s0 on (rg14776 0) using bank tags [28,28,28,28,28]
certRow g14776s1 on (rg14776 1) using bank tags [28,28,28,28]
certRow g14776s2 on (rg14776 2) using bank tags [19,19,28,28,28,28,28,28]
certRow g14776s3 on (rg14776 3) using bank tags [28,28,28,28,28]
certRow g14776s4 on (rg14776 4) using bank tags [18,19,28,28,28,28,19,28,28,28]
certRow g14776s5 on (rg14776 5) using bank tags []
certRow g14776s6 on (rg14776 6) using bank tags [1,1,19,31,19,1,1,28,28,28,28,28,28,28,28,28,28,9,9,28,28,28,28,28,28,28,28,28,19,28,28,28,28,28,28,28,28,9,19,28,28,28,28,19,28,28,28]
certRow g14776s7 on (rg14776 7) using bank tags []
certRow g14776s8 on (rg14776 8) using bank tags []
certRow g14776s9 on (rg14776 9) using bank tags [28,28,28,28,28,28,28,28,13,13,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,28]
certRow g14776s10 on (rg14776 10) using bank tags []
certRow g14776s11 on (rg14776 11) using bank tags [28,28,28,28,28,28]
theorem g14776 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,0,0,1,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [2,0,0,1,0,1] (.cons (g14776s0) (.cons (g14776s1) (.cons (g14776s2) (.cons (g14776s3) (.cons (g14776s4) (.cons (g14776s5) (.cons (g14776s6) (.cons (g14776s7) (.cons (g14776s8) (.cons (g14776s9) (.cons (g14776s10) (.cons (g14776s11) .nil))))))))))))
certRow g14777 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,0,0,1,0,1]) using bank tags []
private abbrev rg14778 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [2,0,0,1,1,0]
certRow g14778s0 on (rg14778 0) using bank tags [28,28,28,28,28]
certRow g14778s1 on (rg14778 1) using bank tags [28,28,28,28,28,28]
certRow g14778s2 on (rg14778 2) using bank tags [19,19,28,28,28,28,28,28]
certRow g14778s3 on (rg14778 3) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14778s4 on (rg14778 4) using bank tags [18,19,28,28,28,28,19,28,28,28]
certRow g14778s5 on (rg14778 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14778s6 on (rg14778 6) using bank tags [28,28,28,28,28,28,28,28,23,19,28,28,28,28,28,28,28]
certRow g14778s7 on (rg14778 7) using bank tags []
certRow g14778s8 on (rg14778 8) using bank tags []
certRow g14778s9 on (rg14778 9) using bank tags [28,28,28,28,28,28,28,28,28,28,13,13,28,28,28,28,28,28,28,28,28,28,28,28,28,13,28,28,28]
certRow g14778s10 on (rg14778 10) using bank tags []
certRow g14778s11 on (rg14778 11) using bank tags [28,28,28,28,28,28,28]
theorem g14778 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [2,0,0,1,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [2,0,0,1,1,0] (.cons (g14778s0) (.cons (g14778s1) (.cons (g14778s2) (.cons (g14778s3) (.cons (g14778s4) (.cons (g14778s5) (.cons (g14778s6) (.cons (g14778s7) (.cons (g14778s8) (.cons (g14778s9) (.cons (g14778s10) (.cons (g14778s11) .nil))))))))))))
certRow g14779 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [2,0,0,1,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
