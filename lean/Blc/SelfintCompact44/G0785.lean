import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14566 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,0,0,3,1]
certRow g14566s0 on (rg14566 0) using bank tags [28,28]
certRow g14566s1 on (rg14566 1) using bank tags [28,28,28,28,28]
certRow g14566s2 on (rg14566 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,6,6,6,19,19,0,19,29,0,29,0,19,19,19,19] except [Floor44.e4846360467190,Floor44.e4846434748150,Floor44.e4846435964662]
certRow g14566s3 on (rg14566 3) using bank tags [28]
certRow g14566s4 on (rg14566 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14566s5 on (rg14566 5) using bank tags []
certRow g14566s6 on (rg14566 6) using bank tags []
certRow g14566s7 on (rg14566 7) using bank tags []
theorem g14566 (hard : BadRow [Floor44.e4846360467190,Floor44.e4846434748150,Floor44.e4846435964662]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,0,3,1]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,0,0,3,1] (.cons (g14566s0) (.cons (g14566s1) (.cons (g14566s2 (.cons (hard.get (by decide : Floor44.e4846360467190 ∈ [Floor44.e4846360467190,Floor44.e4846434748150,Floor44.e4846435964662])) (.cons (hard.get (by decide : Floor44.e4846434748150 ∈ [Floor44.e4846360467190,Floor44.e4846434748150,Floor44.e4846435964662])) (.cons (hard.get (by decide : Floor44.e4846435964662 ∈ [Floor44.e4846360467190,Floor44.e4846434748150,Floor44.e4846435964662])) .nil)))) (.cons (g14566s3) (.cons (g14566s4) (.cons (g14566s5) (.cons (g14566s6) (.cons (g14566s7) .nil))))))))
certRow g14567 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,0,3,1]) using bank tags []
certRow g14568 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,0,4,0]) using bank tags []
certRow g14569 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,0,4,0]) using bank tags []
private abbrev rg14570 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,0,1,0,3]
certRow g14570s0 on (rg14570 0) using bank tags [28,28,28,28]
certRow g14570s1 on (rg14570 1) using bank tags [28,28,28]
certRow g14570s2 on (rg14570 2) using bank tags [28,28,28,28,28,28,28,28,28,28,1,1,1,6,6,6,6,6,19,19,19,0,0,19,19,29,0,29,0,29,0,19,19,19,19,19,19] except [Floor44.e4846360468702,Floor44.e4846360467294,Floor44.e4846434758878,Floor44.e4846435966174,Floor44.e4846435964766]
certRow g14570s3 on (rg14570 3) using bank tags [28]
certRow g14570s4 on (rg14570 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14570s5 on (rg14570 5) using bank tags []
certRow g14570s6 on (rg14570 6) using bank tags []
certRow g14570s7 on (rg14570 7) using bank tags [28,28,28,28,28]
theorem g14570 (hard : BadRow [Floor44.e4846360468702,Floor44.e4846360467294,Floor44.e4846434758878,Floor44.e4846435966174,Floor44.e4846435964766]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,1,0,3]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,0,1,0,3] (.cons (g14570s0) (.cons (g14570s1) (.cons (g14570s2 (.cons (hard.get (by decide : Floor44.e4846360468702 ∈ [Floor44.e4846360468702,Floor44.e4846360467294,Floor44.e4846434758878,Floor44.e4846435966174,Floor44.e4846435964766])) (.cons (hard.get (by decide : Floor44.e4846360467294 ∈ [Floor44.e4846360468702,Floor44.e4846360467294,Floor44.e4846434758878,Floor44.e4846435966174,Floor44.e4846435964766])) (.cons (hard.get (by decide : Floor44.e4846434758878 ∈ [Floor44.e4846360468702,Floor44.e4846360467294,Floor44.e4846434758878,Floor44.e4846435966174,Floor44.e4846435964766])) (.cons (hard.get (by decide : Floor44.e4846435966174 ∈ [Floor44.e4846360468702,Floor44.e4846360467294,Floor44.e4846434758878,Floor44.e4846435966174,Floor44.e4846435964766])) (.cons (hard.get (by decide : Floor44.e4846435964766 ∈ [Floor44.e4846360468702,Floor44.e4846360467294,Floor44.e4846434758878,Floor44.e4846435966174,Floor44.e4846435964766])) .nil)))))) (.cons (g14570s3) (.cons (g14570s4) (.cons (g14570s5) (.cons (g14570s6) (.cons (g14570s7) .nil))))))))
certRow g14571 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,1,0,3]) using bank tags []
private abbrev rg14572 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,0,1,1,2]
certRow g14572s0 on (rg14572 0) using bank tags [28,28,6,28,28,28]
certRow g14572s1 on (rg14572 1) using bank tags [28,28,28,28]
certRow g14572s2 on (rg14572 2) using bank tags [57,28,28,28,27,27,28,28,6,28,28,28,6,6,28,28,28,28,6,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,6,6,6,1,6,1,6,1,6,19,19,19,19,19,19]
certRow g14572s3 on (rg14572 3) using bank tags []
certRow g14572s4 on (rg14572 4) using bank tags [6,6,6,28,28,28,28,28,28,28,1,28,1,28,1,28,1,6,1,6,1,6]
certRow g14572s5 on (rg14572 5) using bank tags []
certRow g14572s6 on (rg14572 6) using bank tags []
certRow g14572s7 on (rg14572 7) using bank tags []
theorem g14572 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,1,1,2]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,0,1,1,2] (.cons (g14572s0) (.cons (g14572s1) (.cons (g14572s2) (.cons (g14572s3) (.cons (g14572s4) (.cons (g14572s5) (.cons (g14572s6) (.cons (g14572s7) .nil))))))))
certRow g14573 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,1,1,2]) using bank tags [57,57,57,1,1,1,1,1,1]
end Blc.SelfintSingleObject.Compact44
