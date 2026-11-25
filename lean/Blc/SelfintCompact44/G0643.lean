import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13250 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,1,2,1,0]
certRow g13250s0 on (rg13250 0) using bank tags [3,3,3,3,3,3]
certRow g13250s1 on (rg13250 1) using bank tags [3,3,3,28,13]
certRow g13250s2 on (rg13250 2) using bank tags [3,3,3,3,28,28,28,28,28,28,28]
certRow g13250s3 on (rg13250 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,3]
certRow g13250s4 on (rg13250 4) using bank tags [28,16]
certRow g13250s5 on (rg13250 5) using bank tags [3,3,3,3,3,3,3,3,28,28,28,27]
certRow g13250s6 on (rg13250 6) using bank tags [3,3,28,28,28,28,28,3]
certRow g13250s7 on (rg13250 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,3]
certRow g13250s8 on (rg13250 8) using bank tags [3,3,3,3,28,27]
certRow g13250s9 on (rg13250 9) using bank tags [3,3,3,3,28,3,3]
certRow g13250s10 on (rg13250 10) using bank tags [3,28,28,28]
certRow g13250s11 on (rg13250 11) using bank tags [3,3,3,28,28,20,20,20,20,20,20,24,24,24,18,13]
theorem g13250 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,1,2,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,1,2,1,0] (.cons (g13250s0) (.cons (g13250s1) (.cons (g13250s2) (.cons (g13250s3) (.cons (g13250s4) (.cons (g13250s5) (.cons (g13250s6) (.cons (g13250s7) (.cons (g13250s8) (.cons (g13250s9) (.cons (g13250s10) (.cons (g13250s11) .nil))))))))))))
certRow g13251 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,1,2,1,0]) using bank tags []
private abbrev rg13252 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,1,3,0,0]
certRow g13252s0 on (rg13252 0) using bank tags [3,3,3,3,3,3,3,3]
certRow g13252s1 on (rg13252 1) using bank tags [3,28,28,3]
certRow g13252s2 on (rg13252 2) using bank tags [28,28,28,28]
certRow g13252s3 on (rg13252 3) using bank tags [3,3,3,3,28,28,28,28,28]
certRow g13252s4 on (rg13252 4) using bank tags [28,13]
certRow g13252s5 on (rg13252 5) using bank tags [3,3,3,3,3,3,3,206,28,28,28,28,28]
certRow g13252s6 on (rg13252 6) using bank tags [206,3]
certRow g13252s7 on (rg13252 7) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow g13252s8 on (rg13252 8) using bank tags [1,28,3,28,27]
certRow g13252s9 on (rg13252 9) using bank tags [3,3,3,3,3,3]
certRow g13252s10 on (rg13252 10) using bank tags [3,3,3]
certRow g13252s11 on (rg13252 11) using bank tags [28,28,28,1,28,20,20,20,13,13,13,13]
theorem g13252 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,1,3,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,1,3,0,0] (.cons (g13252s0) (.cons (g13252s1) (.cons (g13252s2) (.cons (g13252s3) (.cons (g13252s4) (.cons (g13252s5) (.cons (g13252s6) (.cons (g13252s7) (.cons (g13252s8) (.cons (g13252s9) (.cons (g13252s10) (.cons (g13252s11) .nil))))))))))))
certRow g13253 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,1,3,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
