import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13228 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,3,0,1]
certRow g13228s0 on (rg13228 0) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3]
certRow g13228s1 on (rg13228 1) using bank tags [3,28,28,3,3,28,28,28,28,3,3,3,28,3,3,28,3,3]
certRow g13228s2 on (rg13228 2) using bank tags [3,28,28,3,28,28]
certRow g13228s3 on (rg13228 3) using bank tags [3,3,3,3,3,3,3,28,28,3,28,28,27,27]
certRow g13228s4 on (rg13228 4) using bank tags []
certRow g13228s5 on (rg13228 5) using bank tags [28,28,28,28,28,28,3,3]
certRow g13228s6 on (rg13228 6) using bank tags [3,3,3,3,3,3]
certRow g13228s7 on (rg13228 7) using bank tags [28,28,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,3,3,3,3,3,3]
certRow g13228s8 on (rg13228 8) using bank tags [3,3,3,3,3,3]
certRow g13228s9 on (rg13228 9) using bank tags []
certRow g13228s10 on (rg13228 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28]
certRow g13228s11 on (rg13228 11) using bank tags [20,20,20,20,20,20,20,20,20,13,13,20,20,15,1,27,13,27,13,19,19,19,19]
theorem g13228 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,3,0,1]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,3,0,1] (.cons (g13228s0) (.cons (g13228s1) (.cons (g13228s2) (.cons (g13228s3) (.cons (g13228s4) (.cons (g13228s5) (.cons (g13228s6) (.cons (g13228s7) (.cons (g13228s8) (.cons (g13228s9) (.cons (g13228s10) (.cons (g13228s11) .nil))))))))))))
certRow g13229 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,3,0,1]) using bank tags []
private abbrev rg13230 (i : Nat) := Split43.five 12 i 7 7 4 false 4 5 5 [0,0,3,1,0]
certRow g13230s0 on (rg13230 0) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow g13230s1 on (rg13230 1) using bank tags [3,28,3,28,3]
certRow g13230s2 on (rg13230 2) using bank tags [28,3,28,3,28,28]
certRow g13230s3 on (rg13230 3) using bank tags [3,3,3,28,3,28,3,28,28,28,28,27]
certRow g13230s4 on (rg13230 4) using bank tags [28,28,13,24]
certRow g13230s5 on (rg13230 5) using bank tags [28,3]
certRow g13230s6 on (rg13230 6) using bank tags [3,3,3,3,3,3]
certRow g13230s7 on (rg13230 7) using bank tags [3,3,3,28,3,3,3,3,3,3,3,3,3,3,3,28,28,3,3,3]
certRow g13230s8 on (rg13230 8) using bank tags [3,3,3,3,28,28,3,3,28,27,28,27]
certRow g13230s9 on (rg13230 9) using bank tags [3,3,3,3,3,3]
certRow g13230s10 on (rg13230 10) using bank tags [3,3,3,28]
certRow g13230s11 on (rg13230 11) using bank tags [28,28,28,28,28,20,20,20,20,20,20,13,13,20,1,1,27,13,19,19]
theorem g13230 : BadRow (Grammar43.fiveRow 7 7 4 false 4 5 5 [0,0,3,1,0]) :=
  Split43.five_cover 12 (by decide) 7 7 4 false 4 5 5 [0,0,3,1,0] (.cons (g13230s0) (.cons (g13230s1) (.cons (g13230s2) (.cons (g13230s3) (.cons (g13230s4) (.cons (g13230s5) (.cons (g13230s6) (.cons (g13230s7) (.cons (g13230s8) (.cons (g13230s9) (.cons (g13230s10) (.cons (g13230s11) .nil))))))))))))
certRow g13231 on (Grammar43.fiveRow 7 7 4 true 4 5 5 [0,0,3,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
