import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14001 (i : Nat) := Split43.five 12 i 8 5 4 true 4 2 5 [1,0,0,1,2]
certRow g14001s0 on (rg14001 0) using bank tags []
certRow g14001s1 on (rg14001 1) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1]
certRow g14001s2 on (rg14001 2) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14001s3 on (rg14001 3) using bank tags [28,59,1,1,1,28,59,1,1,1]
certRow g14001s4 on (rg14001 4) using bank tags [28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,28,59,1,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14001s5 on (rg14001 5) using bank tags []
certRow g14001s6 on (rg14001 6) using bank tags [6,1,1,1,1,1,6,1,1,1,1,1,19,1,1,1,1,1,6,1,1,1,1,1]
certRow g14001s7 on (rg14001 7) using bank tags []
certRow g14001s8 on (rg14001 8) using bank tags []
certRow g14001s9 on (rg14001 9) using bank tags []
certRow g14001s10 on (rg14001 10) using bank tags [1,1,1,1,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,28,59,1,1,57,1,1,1,1,1,1,29,1,29,1,1,1]
certRow g14001s11 on (rg14001 11) using bank tags []
theorem g14001 : BadRow (Grammar43.fiveRow 8 5 4 true 4 2 5 [1,0,0,1,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 true 4 2 5 [1,0,0,1,2] (.cons (g14001s0) (.cons (g14001s1) (.cons (g14001s2) (.cons (g14001s3) (.cons (g14001s4) (.cons (g14001s5) (.cons (g14001s6) (.cons (g14001s7) (.cons (g14001s8) (.cons (g14001s9) (.cons (g14001s10) (.cons (g14001s11) .nil))))))))))))
private abbrev rg14002 (i : Nat) := Split43.five 12 i 8 5 4 false 4 2 5 [1,0,0,2,1]
certRow g14002s0 on (rg14002 0) using bank tags []
certRow g14002s1 on (rg14002 1) using bank tags [28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13,28,28,28,13]
certRow g14002s2 on (rg14002 2) using bank tags [28,28,28,6,28,28,28,6]
certRow g14002s3 on (rg14002 3) using bank tags [28,28,28,6,28,28,28,6]
certRow g14002s4 on (rg14002 4) using bank tags [28,28,28,6,28,28,28,6,28,28,28,6,28,28,28,16,28,28,28,24]
certRow g14002s5 on (rg14002 5) using bank tags []
certRow g14002s6 on (rg14002 6) using bank tags [19,19,29,13,19,19,29,27,19,19,29,13,19,19,29,27,19,19,29,13,19,19,29,27,6,29,29,55,29,6,29,6]
certRow g14002s7 on (rg14002 7) using bank tags []
certRow g14002s8 on (rg14002 8) using bank tags []
certRow g14002s9 on (rg14002 9) using bank tags []
certRow g14002s10 on (rg14002 10) using bank tags [0,29,29,13,29,0,29,6] except [Floor44.e5609324853090,Floor44.e4785136536438]
certRow g14002s11 on (rg14002 11) using bank tags []
theorem g14002 (hard : BadRow [Floor44.e5609324853090,Floor44.e4785136536438]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 2 5 [1,0,0,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 2 5 [1,0,0,2,1] (.cons (g14002s0) (.cons (g14002s1) (.cons (g14002s2) (.cons (g14002s3) (.cons (g14002s4) (.cons (g14002s5) (.cons (g14002s6) (.cons (g14002s7) (.cons (g14002s8) (.cons (g14002s9) (.cons (g14002s10 (.cons (hard.get (by decide : Floor44.e5609324853090 ∈ [Floor44.e5609324853090,Floor44.e4785136536438])) (.cons (hard.get (by decide : Floor44.e4785136536438 ∈ [Floor44.e5609324853090,Floor44.e4785136536438])) .nil))) (.cons (g14002s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
