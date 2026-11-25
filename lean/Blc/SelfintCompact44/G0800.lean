import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14636 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,1,0,0,3,0]
certRow g14636s0 on (rg14636 0) using bank tags []
certRow g14636s1 on (rg14636 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14636s2 on (rg14636 2) using bank tags [28,28,28,28,28,28,28,6,6,6,6,6,6,6,6,6,6,6,6]
certRow g14636s3 on (rg14636 3) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14636s4 on (rg14636 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14636s5 on (rg14636 5) using bank tags [28,28,28,28,28,28]
certRow g14636s6 on (rg14636 6) using bank tags []
certRow g14636s7 on (rg14636 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,29,0,29,0] except [Floor44.e4846201389946,Floor44.e4846201029498]
theorem g14636 (hard : BadRow [Floor44.e4846201389946,Floor44.e4846201029498]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,0,0,3,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,1,0,0,3,0] (.cons (g14636s0) (.cons (g14636s1) (.cons (g14636s2) (.cons (g14636s3) (.cons (g14636s4) (.cons (g14636s5) (.cons (g14636s6) (.cons (g14636s7 (.cons (hard.get (by decide : Floor44.e4846201389946 ∈ [Floor44.e4846201389946,Floor44.e4846201029498])) (.cons (hard.get (by decide : Floor44.e4846201029498 ∈ [Floor44.e4846201389946,Floor44.e4846201029498])) .nil))) .nil))))))))
certRow g14637 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,0,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
