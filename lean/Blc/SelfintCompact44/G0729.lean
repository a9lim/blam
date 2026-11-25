import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13914 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 4 [2,1,0,1]
certRow g13914s0 on (rg13914 0) using bank tags []
certRow g13914s1 on (rg13914 1) using bank tags [13,24,1,1,27,27,27,18,1,1,6,13,24,6,6,11,18,19,13,6,23,1,27,27,27,6,23,24,31,13,6,6,6,11,6,19]
certRow g13914s2 on (rg13914 2) using bank tags [13,6,20,6,27,27,27,18,20,6,6,13,6,6,6,6,18,19]
certRow g13914s3 on (rg13914 3) using bank tags [13,6,23,22,27,27,27,6,23,6,6,13,6,6,6,11,22,19,13,22,20,22,27,27,27,6,20,16,6,13,22,6,6,22,6,19]
certRow g13914s4 on (rg13914 4) using bank tags []
certRow g13914s5 on (rg13914 5) using bank tags []
certRow g13914s6 on (rg13914 6) using bank tags []
certRow g13914s7 on (rg13914 7) using bank tags []
certRow g13914s8 on (rg13914 8) using bank tags []
certRow g13914s9 on (rg13914 9) using bank tags []
certRow g13914s10 on (rg13914 10) using bank tags []
certRow g13914s11 on (rg13914 11) using bank tags []
theorem g13914 : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 4 [2,1,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 4 [2,1,0,1] (.cons (g13914s0) (.cons (g13914s1) (.cons (g13914s2) (.cons (g13914s3) (.cons (g13914s4) (.cons (g13914s5) (.cons (g13914s6) (.cons (g13914s7) (.cons (g13914s8) (.cons (g13914s9) (.cons (g13914s10) (.cons (g13914s11) .nil))))))))))))
private abbrev rg13915 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 4 [2,1,0,1]
certRow g13915s0 on (rg13915 0) using bank tags []
certRow g13915s1 on (rg13915 1) using bank tags [28,59,59,59,1,1,1,1,13,57,24,15,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,13,57,1,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13915s2 on (rg13915 2) using bank tags [28,59,59,59,1,1,1,1,13,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13915s3 on (rg13915 3) using bank tags [28,59,59,59,1,1,1,1,13,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,28,59,59,59,1,1,1,1,13,57,6,1,1,1,28,59,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow g13915s4 on (rg13915 4) using bank tags []
certRow g13915s5 on (rg13915 5) using bank tags []
certRow g13915s6 on (rg13915 6) using bank tags []
certRow g13915s7 on (rg13915 7) using bank tags []
certRow g13915s8 on (rg13915 8) using bank tags []
certRow g13915s9 on (rg13915 9) using bank tags []
certRow g13915s10 on (rg13915 10) using bank tags []
certRow g13915s11 on (rg13915 11) using bank tags []
theorem g13915 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 4 [2,1,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 4 [2,1,0,1] (.cons (g13915s0) (.cons (g13915s1) (.cons (g13915s2) (.cons (g13915s3) (.cons (g13915s4) (.cons (g13915s5) (.cons (g13915s6) (.cons (g13915s7) (.cons (g13915s8) (.cons (g13915s9) (.cons (g13915s10) (.cons (g13915s11) .nil))))))))))))
certRow g13916 on (Grammar43.fiveRow 8 5 4 false 4 2 4 [2,1,1,0]) using bank tags [13,24,24,1,27,27,27,18,24,61,6,13,24,6,6,11,18,19,13,24,108,1,27,27,27,18,108,113,6,13,24,31,6,11,45,19,13,22,20,6,27,27,27,18,20,22,6,13,22,6,45,45,18,19]
end Blc.SelfintSingleObject.Compact44
