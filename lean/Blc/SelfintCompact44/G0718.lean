import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13890 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 4 [1,0,1,2]
certRow g13890s0 on (rg13890 0) using bank tags []
certRow g13890s1 on (rg13890 1) using bank tags [26,32,1,6,57,57,57,15,1,6,6,26,32,15,15,24,26,19,15,32,1,6,57,57,57,15,1,6,6,15,32,1,1,16,26,19]
certRow g13890s2 on (rg13890 2) using bank tags [26,6,26,6,57,57,57,30,26,6,6,26,6,39,22,24,6,19]
certRow g13890s3 on (rg13890 3) using bank tags [15,6,1,6,57,57,57,15,1,6,6,15,6,22,22,16,30,19,15,37,1,6,57,57,57,1,1,6,6,15,37,40,40,75,37,19]
certRow g13890s4 on (rg13890 4) using bank tags []
certRow g13890s5 on (rg13890 5) using bank tags [29,6,29,81,6,22,29,29,29,6,29,22,29,6,29,6,29,6,29,6,29,1,29,6,29,81,29,88,29,32,29,76,29,6,63,19]
certRow g13890s6 on (rg13890 6) using bank tags []
certRow g13890s7 on (rg13890 7) using bank tags []
certRow g13890s8 on (rg13890 8) using bank tags []
certRow g13890s9 on (rg13890 9) using bank tags []
certRow g13890s10 on (rg13890 10) using bank tags []
certRow g13890s11 on (rg13890 11) using bank tags []
theorem g13890 : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 4 [1,0,1,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 4 [1,0,1,2] (.cons (g13890s0) (.cons (g13890s1) (.cons (g13890s2) (.cons (g13890s3) (.cons (g13890s4) (.cons (g13890s5) (.cons (g13890s6) (.cons (g13890s7) (.cons (g13890s8) (.cons (g13890s9) (.cons (g13890s10) (.cons (g13890s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
