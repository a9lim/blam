import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg13902 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 4 [1,2,0,1]
certRow g13902s0 on (rg13902 0) using bank tags []
certRow g13902s1 on (rg13902 1) using bank tags [11,26,6,6,57,57,57,26,6,6,6,11,26,1,1,24,32,19,11,31,6,6,57,57,57,26,6,6,6,11,31,15,26,24,32,19]
certRow g13902s2 on (rg13902 2) using bank tags [11,6,6,6,57,57,57,1,6,6,31,11,6,6,6,24,6,19]
certRow g13902s3 on (rg13902 3) using bank tags [11,6,6,22,57,57,57,1,6,6,31,11,6,6,6,24,6,19,11,45,6,6,57,57,57,26,6,6,6,11,45,6,6,24,36,19]
certRow g13902s4 on (rg13902 4) using bank tags []
certRow g13902s5 on (rg13902 5) using bank tags [29,35,29,35,6,22,29,29,29,22,29,22,29,35,29,119,29,6,29,35,29,1,29,35,29,35,29,0,29,30,29,35,29,69,63,19,19,19,19,19,19,19,19,19,19,19,29,22,19,19,29,164,19,19,19,19,29,1,19,19,19,19,19,19,29,30,19,19,29,68,19,19] except [Floor44.e4777782480694]
certRow g13902s6 on (rg13902 6) using bank tags []
certRow g13902s7 on (rg13902 7) using bank tags []
certRow g13902s8 on (rg13902 8) using bank tags []
certRow g13902s9 on (rg13902 9) using bank tags []
certRow g13902s10 on (rg13902 10) using bank tags []
certRow g13902s11 on (rg13902 11) using bank tags []
theorem g13902 (hard : BadRow [Floor44.e4777782480694]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 4 [1,2,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 4 [1,2,0,1] (.cons (g13902s0) (.cons (g13902s1) (.cons (g13902s2) (.cons (g13902s3) (.cons (g13902s4) (.cons (g13902s5 (.cons (hard.get (by decide : Floor44.e4777782480694 ∈ [Floor44.e4777782480694])) .nil)) (.cons (g13902s6) (.cons (g13902s7) (.cons (g13902s8) (.cons (g13902s9) (.cons (g13902s10) (.cons (g13902s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
