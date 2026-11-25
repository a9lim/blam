import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13330 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [2,1,1,0,0]
certRow g13330s0 on (rg13330 0) using bank tags [3,3,3,3]
certRow g13330s1 on (rg13330 1) using bank tags [3,3,3,3,3,3,3]
certRow g13330s2 on (rg13330 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,28,28,28,28,1,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g13330s3 on (rg13330 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow g13330s4 on (rg13330 4) using bank tags []
certRow g13330s5 on (rg13330 5) using bank tags [3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow g13330s6 on (rg13330 6) using bank tags [3,3,3,3,28,28,28]
certRow g13330s7 on (rg13330 7) using bank tags [3,3,23,28,28,28]
certRow g13330s8 on (rg13330 8) using bank tags []
certRow g13330s9 on (rg13330 9) using bank tags [3,3,3,3,3,3,3,28,28]
certRow g13330s10 on (rg13330 10) using bank tags [3]
certRow g13330s11 on (rg13330 11) using bank tags [3,3,3,9,28,23,28]
theorem g13330 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [2,1,1,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [2,1,1,0,0] (.cons (g13330s0) (.cons (g13330s1) (.cons (g13330s2) (.cons (g13330s3) (.cons (g13330s4) (.cons (g13330s5) (.cons (g13330s6) (.cons (g13330s7) (.cons (g13330s8) (.cons (g13330s9) (.cons (g13330s10) (.cons (g13330s11) .nil))))))))))))
certRow g13331 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [2,1,1,0,0]) using bank tags []
private abbrev rg13332 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [2,2,0,0,0]
certRow g13332s0 on (rg13332 0) using bank tags []
certRow g13332s1 on (rg13332 1) using bank tags []
certRow g13332s2 on (rg13332 2) using bank tags []
certRow g13332s3 on (rg13332 3) using bank tags []
certRow g13332s4 on (rg13332 4) using bank tags []
certRow g13332s5 on (rg13332 5) using bank tags []
certRow g13332s6 on (rg13332 6) using bank tags []
certRow g13332s7 on (rg13332 7) using bank tags []
certRow g13332s8 on (rg13332 8) using bank tags []
certRow g13332s9 on (rg13332 9) using bank tags []
certRow g13332s10 on (rg13332 10) using bank tags []
certRow g13332s11 on (rg13332 11) using bank tags []
theorem g13332 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [2,2,0,0,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [2,2,0,0,0] (.cons (g13332s0) (.cons (g13332s1) (.cons (g13332s2) (.cons (g13332s3) (.cons (g13332s4) (.cons (g13332s5) (.cons (g13332s6) (.cons (g13332s7) (.cons (g13332s8) (.cons (g13332s9) (.cons (g13332s10) (.cons (g13332s11) .nil))))))))))))
certRow g13333 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [2,2,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
