import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf406 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [0,2,0,0,2,0]
certRow f406s0 on (rf406 0) using bank tags [28,28]
certRow f406s1 on (rf406 1) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f406s2 on (rf406 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,1,1,1,1]
certRow f406s3 on (rf406 3) using bank tags [28,28,28]
certRow f406s4 on (rf406 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f406s5 on (rf406 5) using bank tags [28,28]
certRow f406s6 on (rf406 6) using bank tags [28,28]
certRow f406s7 on (rf406 7) using bank tags [28,28,28,28,28,0,0,0,0,0] except [Floor44.e4846201497146,Floor44.e4846201494074,Floor44.e4846201054778,Floor44.e4846201051706,Floor44.e4846200941114]
theorem f406 (hard : BadRow [Floor44.e4846201497146,Floor44.e4846201494074,Floor44.e4846201054778,Floor44.e4846201051706,Floor44.e4846200941114]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,2,0,0,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,2,0,0,2,0] (.cons (f406s0) (.cons (f406s1) (.cons (f406s2) (.cons (f406s3) (.cons (f406s4) (.cons (f406s5) (.cons (f406s6) (.cons (f406s7 (.cons (hard.get (by decide : Floor44.e4846201497146 ∈ [Floor44.e4846201497146,Floor44.e4846201494074,Floor44.e4846201054778,Floor44.e4846201051706,Floor44.e4846200941114])) (.cons (hard.get (by decide : Floor44.e4846201494074 ∈ [Floor44.e4846201497146,Floor44.e4846201494074,Floor44.e4846201054778,Floor44.e4846201051706,Floor44.e4846200941114])) (.cons (hard.get (by decide : Floor44.e4846201054778 ∈ [Floor44.e4846201497146,Floor44.e4846201494074,Floor44.e4846201054778,Floor44.e4846201051706,Floor44.e4846200941114])) (.cons (hard.get (by decide : Floor44.e4846201051706 ∈ [Floor44.e4846201497146,Floor44.e4846201494074,Floor44.e4846201054778,Floor44.e4846201051706,Floor44.e4846200941114])) (.cons (hard.get (by decide : Floor44.e4846200941114 ∈ [Floor44.e4846201497146,Floor44.e4846201494074,Floor44.e4846201054778,Floor44.e4846201051706,Floor44.e4846200941114])) .nil)))))) .nil))))))))
end Blc.SelfintSingleObject.Compact44
