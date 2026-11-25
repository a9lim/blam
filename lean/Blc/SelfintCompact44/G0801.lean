import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14638 (i : Nat) := Split43.five 24 i 8 5 4 false 4 3 6 [0,1,0,1,0,2]
certRow g14638s0 on (rg14638 0) using bank tags []
certRow g14638s1 on (rg14638 1) using bank tags []
certRow g14638s2 on (rg14638 2) using bank tags [1,1,1,1,1,1,1,1,1,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,0,6,6,6,6,6,6,6,6,6,6,6,0,6,6,6,6,6,19,19,29,0,19,19,0,0,19,19,29,22,29,22] except [Floor44.e4846339429998,Floor44.e4846339343790,Floor44.e4846363266606,Floor44.e4846363872878,Floor44.e4846363872174]
certRow g14638s3 on (rg14638 3) using bank tags []
certRow g14638s4 on (rg14638 4) using bank tags []
certRow g14638s5 on (rg14638 5) using bank tags []
certRow g14638s6 on (rg14638 6) using bank tags []
certRow g14638s7 on (rg14638 7) using bank tags []
certRow g14638s8 on (rg14638 8) using bank tags [28,28,28,28]
certRow g14638s9 on (rg14638 9) using bank tags [28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,28]
certRow g14638s10 on (rg14638 10) using bank tags [1,1,28,1,1,1,1,28,1,1]
certRow g14638s11 on (rg14638 11) using bank tags [28,28,28,28]
certRow g14638s12 on (rg14638 12) using bank tags []
certRow g14638s13 on (rg14638 13) using bank tags [28,28]
certRow g14638s14 on (rg14638 14) using bank tags [1,1,1,1,28,28,28,28,28,28]
certRow g14638s15 on (rg14638 15) using bank tags []
certRow g14638s16 on (rg14638 16) using bank tags [28,28,28,28,28,28]
certRow g14638s17 on (rg14638 17) using bank tags []
certRow g14638s18 on (rg14638 18) using bank tags [1,1,28,28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14638s19 on (rg14638 19) using bank tags []
certRow g14638s20 on (rg14638 20) using bank tags [28,28,28,28,28,28,28,28,28,1,1,28,28,28,28,28,28,28,28,28,28,14,14,14,14,14,1,1,1,1,28,28,28,28,1,1,6,0,19,19,6,0,19,19] except [Floor44.e4845892537966,Floor44.e4845892537262]
certRow g14638s21 on (rg14638 21) using bank tags []
certRow g14638s22 on (rg14638 22) using bank tags []
certRow g14638s23 on (rg14638 23) using bank tags []
theorem g14638 (hard : BadRow [Floor44.e4846339429998,Floor44.e4846339343790,Floor44.e4846363266606,Floor44.e4846363872878,Floor44.e4846363872174,Floor44.e4845892537966,Floor44.e4845892537262]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,0,1,0,2]) :=
  Split43.five_cover 24 (by decide) 8 5 4 false 4 3 6 [0,1,0,1,0,2] (.cons (g14638s0) (.cons (g14638s1) (.cons (g14638s2 (.cons (hard.get (by decide : Floor44.e4846339429998 ∈ [Floor44.e4846339429998,Floor44.e4846339343790,Floor44.e4846363266606,Floor44.e4846363872878,Floor44.e4846363872174,Floor44.e4845892537966,Floor44.e4845892537262])) (.cons (hard.get (by decide : Floor44.e4846339343790 ∈ [Floor44.e4846339429998,Floor44.e4846339343790,Floor44.e4846363266606,Floor44.e4846363872878,Floor44.e4846363872174,Floor44.e4845892537966,Floor44.e4845892537262])) (.cons (hard.get (by decide : Floor44.e4846363266606 ∈ [Floor44.e4846339429998,Floor44.e4846339343790,Floor44.e4846363266606,Floor44.e4846363872878,Floor44.e4846363872174,Floor44.e4845892537966,Floor44.e4845892537262])) (.cons (hard.get (by decide : Floor44.e4846363872878 ∈ [Floor44.e4846339429998,Floor44.e4846339343790,Floor44.e4846363266606,Floor44.e4846363872878,Floor44.e4846363872174,Floor44.e4845892537966,Floor44.e4845892537262])) (.cons (hard.get (by decide : Floor44.e4846363872174 ∈ [Floor44.e4846339429998,Floor44.e4846339343790,Floor44.e4846363266606,Floor44.e4846363872878,Floor44.e4846363872174,Floor44.e4845892537966,Floor44.e4845892537262])) .nil)))))) (.cons (g14638s3) (.cons (g14638s4) (.cons (g14638s5) (.cons (g14638s6) (.cons (g14638s7) (.cons (g14638s8) (.cons (g14638s9) (.cons (g14638s10) (.cons (g14638s11) (.cons (g14638s12) (.cons (g14638s13) (.cons (g14638s14) (.cons (g14638s15) (.cons (g14638s16) (.cons (g14638s17) (.cons (g14638s18) (.cons (g14638s19) (.cons (g14638s20 (.cons (hard.get (by decide : Floor44.e4845892537966 ∈ [Floor44.e4846339429998,Floor44.e4846339343790,Floor44.e4846363266606,Floor44.e4846363872878,Floor44.e4846363872174,Floor44.e4845892537966,Floor44.e4845892537262])) (.cons (hard.get (by decide : Floor44.e4845892537262 ∈ [Floor44.e4846339429998,Floor44.e4846339343790,Floor44.e4846363266606,Floor44.e4846363872878,Floor44.e4846363872174,Floor44.e4845892537966,Floor44.e4845892537262])) .nil))) (.cons (g14638s21) (.cons (g14638s22) (.cons (g14638s23) .nil))))))))))))))))))))))))
certRow g14639 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,0,1,0,2]) using bank tags []
certRow g14640 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,0,1,1,1]) using bank tags []
certRow g14641 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,0,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
