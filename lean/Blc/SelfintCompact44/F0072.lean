import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf405 (i : Nat) := Split43.four 24 i ⟨0,2,0,3,6,4⟩ [0,0] [0,2,0,0,1,1]
certRow f405s0 on (rf405 0) using bank tags [3,3,3,3,3]
certRow f405s1 on (rf405 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f405s2 on (rf405 2) using bank tags [3,3,3,3,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f405s3 on (rf405 3) using bank tags [3,3,3,3]
certRow f405s4 on (rf405 4) using bank tags [3,3,3,3,3]
certRow f405s5 on (rf405 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f405s6 on (rf405 6) using bank tags []
certRow f405s7 on (rf405 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f405s8 on (rf405 8) using bank tags []
certRow f405s9 on (rf405 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f405s10 on (rf405 10) using bank tags []
certRow f405s11 on (rf405 11) using bank tags [28,28,28,28,28,28,28,28]
certRow f405s12 on (rf405 12) using bank tags []
certRow f405s13 on (rf405 13) using bank tags [28,28,28,28,28,28,0,0,0,0,0] except [Floor44.e4846201497286,Floor44.e4846201494214,Floor44.e4846201054918,Floor44.e4846201051846,Floor44.e4846200941254]
certRow f405s14 on (rf405 14) using bank tags []
certRow f405s15 on (rf405 15) using bank tags [28,28,28,28,28]
certRow f405s16 on (rf405 16) using bank tags []
certRow f405s17 on (rf405 17) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f405s18 on (rf405 18) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f405s19 on (rf405 19) using bank tags []
certRow f405s20 on (rf405 20) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f405s21 on (rf405 21) using bank tags [28,28,28,28,28]
certRow f405s22 on (rf405 22) using bank tags []
certRow f405s23 on (rf405 23) using bank tags []
theorem f405 (hard : BadRow [Floor44.e4846201497286,Floor44.e4846201494214,Floor44.e4846201054918,Floor44.e4846201051846,Floor44.e4846200941254]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,2,0,0,1,1]) :=
  Split43.four_cover 24 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,2,0,0,1,1] (.cons (f405s0) (.cons (f405s1) (.cons (f405s2) (.cons (f405s3) (.cons (f405s4) (.cons (f405s5) (.cons (f405s6) (.cons (f405s7) (.cons (f405s8) (.cons (f405s9) (.cons (f405s10) (.cons (f405s11) (.cons (f405s12) (.cons (f405s13 (.cons (hard.get (by decide : Floor44.e4846201497286 ∈ [Floor44.e4846201497286,Floor44.e4846201494214,Floor44.e4846201054918,Floor44.e4846201051846,Floor44.e4846200941254])) (.cons (hard.get (by decide : Floor44.e4846201494214 ∈ [Floor44.e4846201497286,Floor44.e4846201494214,Floor44.e4846201054918,Floor44.e4846201051846,Floor44.e4846200941254])) (.cons (hard.get (by decide : Floor44.e4846201054918 ∈ [Floor44.e4846201497286,Floor44.e4846201494214,Floor44.e4846201054918,Floor44.e4846201051846,Floor44.e4846200941254])) (.cons (hard.get (by decide : Floor44.e4846201051846 ∈ [Floor44.e4846201497286,Floor44.e4846201494214,Floor44.e4846201054918,Floor44.e4846201051846,Floor44.e4846200941254])) (.cons (hard.get (by decide : Floor44.e4846200941254 ∈ [Floor44.e4846201497286,Floor44.e4846201494214,Floor44.e4846201054918,Floor44.e4846201051846,Floor44.e4846200941254])) .nil)))))) (.cons (f405s14) (.cons (f405s15) (.cons (f405s16) (.cons (f405s17) (.cons (f405s18) (.cons (f405s19) (.cons (f405s20) (.cons (f405s21) (.cons (f405s22) (.cons (f405s23) .nil))))))))))))))))))))))))
end Blc.SelfintSingleObject.Compact44
