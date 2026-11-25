import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13338 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [3,0,1,0,0]
certRow g13338s0 on (rg13338 0) using bank tags []
certRow g13338s1 on (rg13338 1) using bank tags [28,28,28,28,28,28]
certRow g13338s2 on (rg13338 2) using bank tags [1,28,28,28,1,28,28,28,28,28]
certRow g13338s3 on (rg13338 3) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow g13338s4 on (rg13338 4) using bank tags []
certRow g13338s5 on (rg13338 5) using bank tags [3,3,3,3,20,28,28,28]
certRow g13338s6 on (rg13338 6) using bank tags [3,3]
certRow g13338s7 on (rg13338 7) using bank tags [3,3,3,3,28,28]
certRow g13338s8 on (rg13338 8) using bank tags [20,28,23,28]
certRow g13338s9 on (rg13338 9) using bank tags [3,3,3,3,3]
certRow g13338s10 on (rg13338 10) using bank tags [3,3,3,3,3,3]
certRow g13338s11 on (rg13338 11) using bank tags [28,28,28,28,28]
theorem g13338 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [3,0,1,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [3,0,1,0,0] (.cons (g13338s0) (.cons (g13338s1) (.cons (g13338s2) (.cons (g13338s3) (.cons (g13338s4) (.cons (g13338s5) (.cons (g13338s6) (.cons (g13338s7) (.cons (g13338s8) (.cons (g13338s9) (.cons (g13338s10) (.cons (g13338s11) .nil))))))))))))
certRow g13339 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [3,0,1,0,0]) using bank tags []
private abbrev rg13340 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [3,1,0,0,0]
certRow g13340s0 on (rg13340 0) using bank tags []
certRow g13340s1 on (rg13340 1) using bank tags [28,28,28,28]
certRow g13340s2 on (rg13340 2) using bank tags [1,28,28,28,1,28,28,28,28,1,28,28,28]
certRow g13340s3 on (rg13340 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13340s4 on (rg13340 4) using bank tags []
certRow g13340s5 on (rg13340 5) using bank tags []
certRow g13340s6 on (rg13340 6) using bank tags []
certRow g13340s7 on (rg13340 7) using bank tags [3,3]
certRow g13340s8 on (rg13340 8) using bank tags [20,28]
certRow g13340s9 on (rg13340 9) using bank tags [3,3,3]
certRow g13340s10 on (rg13340 10) using bank tags [3,3,3,3]
certRow g13340s11 on (rg13340 11) using bank tags [28,28,28]
theorem g13340 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [3,1,0,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [3,1,0,0,0] (.cons (g13340s0) (.cons (g13340s1) (.cons (g13340s2) (.cons (g13340s3) (.cons (g13340s4) (.cons (g13340s5) (.cons (g13340s6) (.cons (g13340s7) (.cons (g13340s8) (.cons (g13340s9) (.cons (g13340s10) (.cons (g13340s11) .nil))))))))))))
certRow g13341 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [3,1,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
