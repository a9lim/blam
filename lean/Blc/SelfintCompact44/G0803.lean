import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14644 (i : Nat) := Split43.five 24 i 8 5 4 false 4 3 6 [0,1,0,2,0,1]
certRow g14644s0 on (rg14644 0) using bank tags []
certRow g14644s1 on (rg14644 1) using bank tags []
certRow g14644s2 on (rg14644 2) using bank tags [1,1,1,1,1,1,1,1,1,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,6,19,19,19,19,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,22,6,6,6,6,6,6,0,6,6,6,6,6,19,19,29,0,19,19,0,0,19,19,29,6,29,6] except [Floor44.e4846339343830,Floor44.e4846363266838,Floor44.e4846363873078,Floor44.e4846363872214]
certRow g14644s3 on (rg14644 3) using bank tags []
certRow g14644s4 on (rg14644 4) using bank tags []
certRow g14644s5 on (rg14644 5) using bank tags [19,19,29,0,29,0] except [Floor44.e4846201396278,Floor44.e4846201035830]
certRow g14644s6 on (rg14644 6) using bank tags []
certRow g14644s7 on (rg14644 7) using bank tags []
certRow g14644s8 on (rg14644 8) using bank tags [28,28,28,28]
certRow g14644s9 on (rg14644 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14644s10 on (rg14644 10) using bank tags [6,6,28,1,1,6,18,28,1,1]
certRow g14644s11 on (rg14644 11) using bank tags [28,28,28,28,28]
certRow g14644s12 on (rg14644 12) using bank tags []
certRow g14644s13 on (rg14644 13) using bank tags [28,28,28,28]
certRow g14644s14 on (rg14644 14) using bank tags [1,35,6,18,28,28,28,28,28,28]
certRow g14644s15 on (rg14644 15) using bank tags [28,28,28,28,28,28,28]
certRow g14644s16 on (rg14644 16) using bank tags [28,28,28,28]
certRow g14644s17 on (rg14644 17) using bank tags [28,28]
certRow g14644s18 on (rg14644 18) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14644s19 on (rg14644 19) using bank tags []
certRow g14644s20 on (rg14644 20) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,14,14,14,14,14,1,1,1,1,28,28,28,28,1,1,6,0,19,19,6,0,19,19] except [Floor44.e4845892538166,Floor44.e4845892537302]
certRow g14644s21 on (rg14644 21) using bank tags []
certRow g14644s22 on (rg14644 22) using bank tags []
certRow g14644s23 on (rg14644 23) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,28,28]
theorem g14644 (hard : BadRow [Floor44.e4846339343830,Floor44.e4846363266838,Floor44.e4846363873078,Floor44.e4846363872214,Floor44.e4845892538166,Floor44.e4845892537302,Floor44.e4846201396278,Floor44.e4846201035830]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,1,0,2,0,1]) :=
  Split43.five_cover 24 (by decide) 8 5 4 false 4 3 6 [0,1,0,2,0,1] (.cons (g14644s0) (.cons (g14644s1) (.cons (g14644s2 (.cons (hard.get (by decide : Floor44.e4846339343830 ∈ [Floor44.e4846339343830,Floor44.e4846363266838,Floor44.e4846363873078,Floor44.e4846363872214,Floor44.e4845892538166,Floor44.e4845892537302,Floor44.e4846201396278,Floor44.e4846201035830])) (.cons (hard.get (by decide : Floor44.e4846363266838 ∈ [Floor44.e4846339343830,Floor44.e4846363266838,Floor44.e4846363873078,Floor44.e4846363872214,Floor44.e4845892538166,Floor44.e4845892537302,Floor44.e4846201396278,Floor44.e4846201035830])) (.cons (hard.get (by decide : Floor44.e4846363873078 ∈ [Floor44.e4846339343830,Floor44.e4846363266838,Floor44.e4846363873078,Floor44.e4846363872214,Floor44.e4845892538166,Floor44.e4845892537302,Floor44.e4846201396278,Floor44.e4846201035830])) (.cons (hard.get (by decide : Floor44.e4846363872214 ∈ [Floor44.e4846339343830,Floor44.e4846363266838,Floor44.e4846363873078,Floor44.e4846363872214,Floor44.e4845892538166,Floor44.e4845892537302,Floor44.e4846201396278,Floor44.e4846201035830])) .nil))))) (.cons (g14644s3) (.cons (g14644s4) (.cons (g14644s5 (.cons (hard.get (by decide : Floor44.e4846201396278 ∈ [Floor44.e4846339343830,Floor44.e4846363266838,Floor44.e4846363873078,Floor44.e4846363872214,Floor44.e4845892538166,Floor44.e4845892537302,Floor44.e4846201396278,Floor44.e4846201035830])) (.cons (hard.get (by decide : Floor44.e4846201035830 ∈ [Floor44.e4846339343830,Floor44.e4846363266838,Floor44.e4846363873078,Floor44.e4846363872214,Floor44.e4845892538166,Floor44.e4845892537302,Floor44.e4846201396278,Floor44.e4846201035830])) .nil))) (.cons (g14644s6) (.cons (g14644s7) (.cons (g14644s8) (.cons (g14644s9) (.cons (g14644s10) (.cons (g14644s11) (.cons (g14644s12) (.cons (g14644s13) (.cons (g14644s14) (.cons (g14644s15) (.cons (g14644s16) (.cons (g14644s17) (.cons (g14644s18) (.cons (g14644s19) (.cons (g14644s20 (.cons (hard.get (by decide : Floor44.e4845892538166 ∈ [Floor44.e4846339343830,Floor44.e4846363266838,Floor44.e4846363873078,Floor44.e4846363872214,Floor44.e4845892538166,Floor44.e4845892537302,Floor44.e4846201396278,Floor44.e4846201035830])) (.cons (hard.get (by decide : Floor44.e4845892537302 ∈ [Floor44.e4846339343830,Floor44.e4846363266838,Floor44.e4846363873078,Floor44.e4846363872214,Floor44.e4845892538166,Floor44.e4845892537302,Floor44.e4846201396278,Floor44.e4846201035830])) .nil))) (.cons (g14644s21) (.cons (g14644s22) (.cons (g14644s23) .nil))))))))))))))))))))))))
certRow g14645 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,1,0,2,0,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
