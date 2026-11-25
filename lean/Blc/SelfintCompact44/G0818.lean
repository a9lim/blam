import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14714 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,0,0,2,0,1]
certRow g14714s0 on (rg14714 0) using bank tags [28,28,28,28,28]
certRow g14714s1 on (rg14714 1) using bank tags [28,28,28,28]
certRow g14714s2 on (rg14714 2) using bank tags [6,35,6,22,1,1,28,28,28,28,28,28,1,1,1,1,1,1,1,55,1,28,28]
certRow g14714s3 on (rg14714 3) using bank tags [28,28,28,28,28]
certRow g14714s4 on (rg14714 4) using bank tags [28,28,1,28,28,28,13,13,13,13,13,6,6]
certRow g14714s5 on (rg14714 5) using bank tags []
certRow g14714s6 on (rg14714 6) using bank tags [28,28,28,1,28,28,28,28,28,28,28,28,28,28,1,28,28,28,28,28,28,28,28,28,28,1,28,28,28]
certRow g14714s7 on (rg14714 7) using bank tags []
certRow g14714s8 on (rg14714 8) using bank tags [13,13,13,13,13,13,13,13,13,13,13,13,13,13,35,35,6,6,6,35,35,19,19,6,19,35,19,22,35,22,35,19,19,19,22,19,19,35,6,6,6,6,6,6,6,6,6,28,28,28,28,6,1,19,1,28,28,28,28,0,0,0,0] except [Floor44.e4845917703990,Floor44.e4845894635318,Floor44.e4845917703126,Floor44.e4845894634454]
certRow g14714s9 on (rg14714 9) using bank tags [28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,1,28,28,28,28]
certRow g14714s10 on (rg14714 10) using bank tags [1,1,19,1,13,13,1,1,19,32,13,13]
certRow g14714s11 on (rg14714 11) using bank tags [28,28,28,28,28]
theorem g14714 (hard : BadRow [Floor44.e4845917703990,Floor44.e4845894635318,Floor44.e4845917703126,Floor44.e4845894634454]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,0,2,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,0,0,2,0,1] (.cons (g14714s0) (.cons (g14714s1) (.cons (g14714s2) (.cons (g14714s3) (.cons (g14714s4) (.cons (g14714s5) (.cons (g14714s6) (.cons (g14714s7) (.cons (g14714s8 (.cons (hard.get (by decide : Floor44.e4845917703990 ∈ [Floor44.e4845917703990,Floor44.e4845894635318,Floor44.e4845917703126,Floor44.e4845894634454])) (.cons (hard.get (by decide : Floor44.e4845894635318 ∈ [Floor44.e4845917703990,Floor44.e4845894635318,Floor44.e4845917703126,Floor44.e4845894634454])) (.cons (hard.get (by decide : Floor44.e4845917703126 ∈ [Floor44.e4845917703990,Floor44.e4845894635318,Floor44.e4845917703126,Floor44.e4845894634454])) (.cons (hard.get (by decide : Floor44.e4845894634454 ∈ [Floor44.e4845917703990,Floor44.e4845894635318,Floor44.e4845917703126,Floor44.e4845894634454])) .nil))))) (.cons (g14714s9) (.cons (g14714s10) (.cons (g14714s11) .nil))))))))))))
certRow g14715 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,0,2,0,1]) using bank tags []
private abbrev rg14716 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [1,0,0,2,1,0]
certRow g14716s0 on (rg14716 0) using bank tags [28,28,28,28,28]
certRow g14716s1 on (rg14716 1) using bank tags [28,28,28,28,28,28]
certRow g14716s2 on (rg14716 2) using bank tags [6,6,1,1,28,28,28,28,28,28,1,1,1,1,1,1,28]
certRow g14716s3 on (rg14716 3) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14716s4 on (rg14716 4) using bank tags [28,28,1,28,28,28,13,13,13,6]
certRow g14716s5 on (rg14716 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14716s6 on (rg14716 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14716s7 on (rg14716 7) using bank tags []
certRow g14716s8 on (rg14716 8) using bank tags [13,13,13,13,13,13,13,13,13,35,6,6,35,19,6,19,19,6,22,19,19,35,19,19,19,22,6,6,6,6,6,6,28,28,6,1,1,28,28,28,0,0] except [Floor44.e4845917703994,Floor44.e4845894635322]
certRow g14716s9 on (rg14716 9) using bank tags [28,28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,28,28,28,1,28,28,19,19,19,1,1]
certRow g14716s10 on (rg14716 10) using bank tags [1,1,19,1,13,13]
certRow g14716s11 on (rg14716 11) using bank tags [28,28,28,28,28,28,28,23,23,23,6,6,28,28,6]
theorem g14716 (hard : BadRow [Floor44.e4845917703994,Floor44.e4845894635322]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [1,0,0,2,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [1,0,0,2,1,0] (.cons (g14716s0) (.cons (g14716s1) (.cons (g14716s2) (.cons (g14716s3) (.cons (g14716s4) (.cons (g14716s5) (.cons (g14716s6) (.cons (g14716s7) (.cons (g14716s8 (.cons (hard.get (by decide : Floor44.e4845917703994 ∈ [Floor44.e4845917703994,Floor44.e4845894635322])) (.cons (hard.get (by decide : Floor44.e4845894635322 ∈ [Floor44.e4845917703994,Floor44.e4845894635322])) .nil))) (.cons (g14716s9) (.cons (g14716s10) (.cons (g14716s11) .nil))))))))))))
certRow g14717 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [1,0,0,2,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
