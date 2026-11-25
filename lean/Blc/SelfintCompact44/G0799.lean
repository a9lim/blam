import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14632 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,1,0,0,1,2]
certRow g14632s0 on (rg14632 0) using bank tags []
certRow g14632s1 on (rg14632 1) using bank tags []
certRow g14632s2 on (rg14632 2) using bank tags [6,6,28,28,28,28,28,1,1,1,1,1,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,6,6,19,6,6,6,6,6,6,6,6,6,6,6,19,6,6,6,6,6,6,6,6,6,6,19,29,0,0,19,29,6] except [Floor44.e4846363259246,Floor44.e4846363872110]
certRow g14632s3 on (rg14632 3) using bank tags []
certRow g14632s4 on (rg14632 4) using bank tags [1,28,28,28,1,28,28,28,28,28]
certRow g14632s5 on (rg14632 5) using bank tags []
certRow g14632s6 on (rg14632 6) using bank tags [1,1,28,28,28,28,1,28,28,28,1,1,28,28,28,28,28,28,28,6,6,1,28,28,28,1,28,28,28,28,28,28]
certRow g14632s7 on (rg14632 7) using bank tags []
certRow g14632s8 on (rg14632 8) using bank tags [28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,14,14,14,1,1,28,28,1,28,28,1,0,19,19] except [Floor44.e4845892537198]
certRow g14632s9 on (rg14632 9) using bank tags [28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28]
certRow g14632s10 on (rg14632 10) using bank tags [1,1,28,1,1]
certRow g14632s11 on (rg14632 11) using bank tags [1,28,28,28]
theorem g14632 (hard : BadRow [Floor44.e4846363259246,Floor44.e4846363872110,Floor44.e4845892537198]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,0,0,1,2]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,1,0,0,1,2] (.cons (g14632s0) (.cons (g14632s1) (.cons (g14632s2 (.cons (hard.get (by decide : Floor44.e4846363259246 ∈ [Floor44.e4846363259246,Floor44.e4846363872110,Floor44.e4845892537198])) (.cons (hard.get (by decide : Floor44.e4846363872110 ∈ [Floor44.e4846363259246,Floor44.e4846363872110,Floor44.e4845892537198])) .nil))) (.cons (g14632s3) (.cons (g14632s4) (.cons (g14632s5) (.cons (g14632s6) (.cons (g14632s7) (.cons (g14632s8 (.cons (hard.get (by decide : Floor44.e4845892537198 ∈ [Floor44.e4846363259246,Floor44.e4846363872110,Floor44.e4845892537198])) .nil)) (.cons (g14632s9) (.cons (g14632s10) (.cons (g14632s11) .nil))))))))))))
certRow g14633 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,0,0,1,2]) using bank tags []
private abbrev rg14634 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,1,0,0,2,1]
certRow g14634s0 on (rg14634 0) using bank tags []
certRow g14634s1 on (rg14634 1) using bank tags []
certRow g14634s2 on (rg14634 2) using bank tags [6,6,28,28,28,28,28,1,1,1,1,1,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,19,19,19,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,19,29,0,0,19,29,6] except [Floor44.e4846363259254,Floor44.e4846363872118]
certRow g14634s3 on (rg14634 3) using bank tags []
certRow g14634s4 on (rg14634 4) using bank tags [1,28,28,28,1,28,28,28,28,28]
certRow g14634s5 on (rg14634 5) using bank tags []
certRow g14634s6 on (rg14634 6) using bank tags [28,28,1,28,28,28,28,28,28,28,22,6,1,28,28,28,1,28,28,28,28,28,28]
certRow g14634s7 on (rg14634 7) using bank tags []
certRow g14634s8 on (rg14634 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,14,14,14,1,1,28,28,1,28,28,1,0,19,19] except [Floor44.e4845892537206]
certRow g14634s9 on (rg14634 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14634s10 on (rg14634 10) using bank tags [1,1,28,1,1]
certRow g14634s11 on (rg14634 11) using bank tags [1,28,28,1,1,1,1,1,1,1,1,1,1]
theorem g14634 (hard : BadRow [Floor44.e4846363259254,Floor44.e4846363872118,Floor44.e4845892537206]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,0,0,2,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,1,0,0,2,1] (.cons (g14634s0) (.cons (g14634s1) (.cons (g14634s2 (.cons (hard.get (by decide : Floor44.e4846363259254 ∈ [Floor44.e4846363259254,Floor44.e4846363872118,Floor44.e4845892537206])) (.cons (hard.get (by decide : Floor44.e4846363872118 ∈ [Floor44.e4846363259254,Floor44.e4846363872118,Floor44.e4845892537206])) .nil))) (.cons (g14634s3) (.cons (g14634s4) (.cons (g14634s5) (.cons (g14634s6) (.cons (g14634s7) (.cons (g14634s8 (.cons (hard.get (by decide : Floor44.e4845892537206 ∈ [Floor44.e4846363259254,Floor44.e4846363872118,Floor44.e4845892537206])) .nil)) (.cons (g14634s9) (.cons (g14634s10) (.cons (g14634s11) .nil))))))))))))
certRow g14635 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,0,0,2,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
