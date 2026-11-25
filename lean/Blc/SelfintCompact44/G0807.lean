import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14660 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,1,1,2,0,0]
certRow g14660s0 on (rg14660 0) using bank tags []
certRow g14660s1 on (rg14660 1) using bank tags [206,28,28,28,206,28,28,28,35,19,19,19,19]
certRow g14660s2 on (rg14660 2) using bank tags [1,1,1,1,1,1,1,13,13,13,13,13,13,13,13,13,13,6,6,6,6,6,6,6,19,6,19,35,19,19,19,19,6,19,19,6,6,35,29,0,19,19,29,0,19,19,19,19,0] except [Floor44.e4846363319906,Floor44.e4846363318154,Floor44.e4846357854698]
certRow g14660s3 on (rg14660 3) using bank tags [1,28,1,28,1,28,22,6,6,6,87,0,6,35,22,35] except [Floor44.e4846199888362]
certRow g14660s4 on (rg14660 4) using bank tags []
certRow g14660s5 on (rg14660 5) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14660s6 on (rg14660 6) using bank tags [28,28,28,28,28,28,28]
certRow g14660s7 on (rg14660 7) using bank tags []
certRow g14660s8 on (rg14660 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,14,14,14,1,1,1,1,1,28]
certRow g14660s9 on (rg14660 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1]
certRow g14660s10 on (rg14660 10) using bank tags []
certRow g14660s11 on (rg14660 11) using bank tags [206,28,28,28,1,28,28,28,28,28,28,28]
theorem g14660 (hard : BadRow [Floor44.e4846363319906,Floor44.e4846363318154,Floor44.e4846357854698,Floor44.e4846199888362]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,1,2,0,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,1,1,2,0,0] (.cons (g14660s0) (.cons (g14660s1) (.cons (g14660s2 (.cons (hard.get (by decide : Floor44.e4846363319906 ∈ [Floor44.e4846363319906,Floor44.e4846363318154,Floor44.e4846357854698,Floor44.e4846199888362])) (.cons (hard.get (by decide : Floor44.e4846363318154 ∈ [Floor44.e4846363319906,Floor44.e4846363318154,Floor44.e4846357854698,Floor44.e4846199888362])) (.cons (hard.get (by decide : Floor44.e4846357854698 ∈ [Floor44.e4846363319906,Floor44.e4846363318154,Floor44.e4846357854698,Floor44.e4846199888362])) .nil)))) (.cons (g14660s3 (.cons (hard.get (by decide : Floor44.e4846199888362 ∈ [Floor44.e4846363319906,Floor44.e4846363318154,Floor44.e4846357854698,Floor44.e4846199888362])) .nil)) (.cons (g14660s4) (.cons (g14660s5) (.cons (g14660s6) (.cons (g14660s7) (.cons (g14660s8) (.cons (g14660s9) (.cons (g14660s10) (.cons (g14660s11) .nil))))))))))))
certRow g14661 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,1,2,0,0]) using bank tags []
private abbrev rg14662 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,1,2,0,0,1]
certRow g14662s0 on (rg14662 0) using bank tags []
certRow g14662s1 on (rg14662 1) using bank tags [28,1,1,28,28]
certRow g14662s2 on (rg14662 2) using bank tags [1,1,1,1,1,1,1,1,1,1,13,13,13,13,13,13,13,13,13,13,13,13,13,13,6,19,19,19,19,6,19,6,6,6,6,6,6,22,19,6,22,19,6,6,6,19,6,19,22,19,6,6,6,6,6,29,0,29,35,29,0,19,19,29,0] except [Floor44.e4846363331350,Floor44.e4846363276054,Floor44.e4846363262038]
certRow g14662s3 on (rg14662 3) using bank tags [28,28,28,28]
certRow g14662s4 on (rg14662 4) using bank tags [28,28,28,28,28]
certRow g14662s5 on (rg14662 5) using bank tags [28,19,29,0] except [Floor44.e4846201402422]
certRow g14662s6 on (rg14662 6) using bank tags [206,28,28,28,1,28,28,28,28,28,206,28,28,28,1,28,1,28,28,28,28,28,28,28,28,28,28,28]
certRow g14662s7 on (rg14662 7) using bank tags []
certRow g14662s8 on (rg14662 8) using bank tags [26,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,14,14,14,14,14,31,1,1,1,1]
certRow g14662s9 on (rg14662 9) using bank tags [26,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14662s10 on (rg14662 10) using bank tags []
certRow g14662s11 on (rg14662 11) using bank tags [26,1,28,28,28,28,206,28,28,28,1,1,1,1,1,1,1,1,28]
theorem g14662 (hard : BadRow [Floor44.e4846363331350,Floor44.e4846363276054,Floor44.e4846363262038,Floor44.e4846201402422]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,2,0,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,1,2,0,0,1] (.cons (g14662s0) (.cons (g14662s1) (.cons (g14662s2 (.cons (hard.get (by decide : Floor44.e4846363331350 ∈ [Floor44.e4846363331350,Floor44.e4846363276054,Floor44.e4846363262038,Floor44.e4846201402422])) (.cons (hard.get (by decide : Floor44.e4846363276054 ∈ [Floor44.e4846363331350,Floor44.e4846363276054,Floor44.e4846363262038,Floor44.e4846201402422])) (.cons (hard.get (by decide : Floor44.e4846363262038 ∈ [Floor44.e4846363331350,Floor44.e4846363276054,Floor44.e4846363262038,Floor44.e4846201402422])) .nil)))) (.cons (g14662s3) (.cons (g14662s4) (.cons (g14662s5 (.cons (hard.get (by decide : Floor44.e4846201402422 ∈ [Floor44.e4846363331350,Floor44.e4846363276054,Floor44.e4846363262038,Floor44.e4846201402422])) .nil)) (.cons (g14662s6) (.cons (g14662s7) (.cons (g14662s8) (.cons (g14662s9) (.cons (g14662s10) (.cons (g14662s11) .nil))))))))))))
certRow g14663 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,2,0,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
