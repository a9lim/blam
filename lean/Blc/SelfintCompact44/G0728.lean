import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13910 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 4 [2,0,1,1]
certRow g13910s0 on (rg13910 0) using bank tags []
certRow g13910s1 on (rg13910 1) using bank tags [13,18,1,1,27,27,27,32,1,1,1,13,18,1,6,11,18,19,13,18,1,1,27,27,27,6,1,1,1,13,18,1,6,11,6,19]
certRow g13910s2 on (rg13910 2) using bank tags [13,6,7,6,27,27,27,32,7,6,1,13,6,15,16,11,18,19]
certRow g13910s3 on (rg13910 3) using bank tags [13,6,23,6,27,27,27,6,23,6,1,13,6,1,6,11,6,19,13,6,23,6,27,27,27,22,23,6,1,13,6,1,45,11,6,19]
certRow g13910s4 on (rg13910 4) using bank tags []
certRow g13910s5 on (rg13910 5) using bank tags []
certRow g13910s6 on (rg13910 6) using bank tags []
certRow g13910s7 on (rg13910 7) using bank tags []
certRow g13910s8 on (rg13910 8) using bank tags []
certRow g13910s9 on (rg13910 9) using bank tags []
certRow g13910s10 on (rg13910 10) using bank tags []
certRow g13910s11 on (rg13910 11) using bank tags []
theorem g13910 : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 4 [2,0,1,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 4 [2,0,1,1] (.cons (g13910s0) (.cons (g13910s1) (.cons (g13910s2) (.cons (g13910s3) (.cons (g13910s4) (.cons (g13910s5) (.cons (g13910s6) (.cons (g13910s7) (.cons (g13910s8) (.cons (g13910s9) (.cons (g13910s10) (.cons (g13910s11) .nil))))))))))))
private abbrev rg13911 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 4 [2,0,1,1]
certRow g13911s0 on (rg13911 0) using bank tags []
certRow g13911s1 on (rg13911 1) using bank tags [28,59,59,59,1,1,1,1,13,57,26,15,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,13,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13911s2 on (rg13911 2) using bank tags [28,59,59,59,1,1,1,1,13,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13911s3 on (rg13911 3) using bank tags [28,59,59,59,1,1,1,1,13,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,13,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13911s4 on (rg13911 4) using bank tags []
certRow g13911s5 on (rg13911 5) using bank tags []
certRow g13911s6 on (rg13911 6) using bank tags []
certRow g13911s7 on (rg13911 7) using bank tags []
certRow g13911s8 on (rg13911 8) using bank tags []
certRow g13911s9 on (rg13911 9) using bank tags []
certRow g13911s10 on (rg13911 10) using bank tags []
certRow g13911s11 on (rg13911 11) using bank tags []
theorem g13911 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 4 [2,0,1,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 4 [2,0,1,1] (.cons (g13911s0) (.cons (g13911s1) (.cons (g13911s2) (.cons (g13911s3) (.cons (g13911s4) (.cons (g13911s5) (.cons (g13911s6) (.cons (g13911s7) (.cons (g13911s8) (.cons (g13911s9) (.cons (g13911s10) (.cons (g13911s11) .nil))))))))))))
certRow g13912 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [2,0,2,0]) using bank tags []
certRow g13913 on (Grammar43.fiveRow 8 5 4 true 4 2 4 [2,0,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
