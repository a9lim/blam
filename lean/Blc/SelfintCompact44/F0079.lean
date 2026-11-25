import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf417 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [0,3,1,0,0,0]
certRow f417s0 on (rf417 0) using bank tags [28,28,28,28,28,28]
certRow f417s1 on (rf417 1) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f417s2 on (rf417 2) using bank tags [28,28,28,28,28,28,28,28,28,28,13,13,13,13,13,13,13,13,13]
certRow f417s3 on (rf417 3) using bank tags [28,28]
certRow f417s4 on (rf417 4) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f417s5 on (rf417 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f417s6 on (rf417 6) using bank tags [28,28]
certRow f417s7 on (rf417 7) using bank tags [28,28,28,28,28,28,28,28,28,0,0,0,0,0] except [Floor44.e4846200016538,Floor44.e4846200016490,Floor44.e4846200015786,Floor44.e4846199894954,Floor44.e4846166078378]
theorem f417 (hard : BadRow [Floor44.e4846200016538,Floor44.e4846200016490,Floor44.e4846200015786,Floor44.e4846199894954,Floor44.e4846166078378]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,3,1,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,3,1,0,0,0] (.cons (f417s0) (.cons (f417s1) (.cons (f417s2) (.cons (f417s3) (.cons (f417s4) (.cons (f417s5) (.cons (f417s6) (.cons (f417s7 (.cons (hard.get (by decide : Floor44.e4846200016538 ∈ [Floor44.e4846200016538,Floor44.e4846200016490,Floor44.e4846200015786,Floor44.e4846199894954,Floor44.e4846166078378])) (.cons (hard.get (by decide : Floor44.e4846200016490 ∈ [Floor44.e4846200016538,Floor44.e4846200016490,Floor44.e4846200015786,Floor44.e4846199894954,Floor44.e4846166078378])) (.cons (hard.get (by decide : Floor44.e4846200015786 ∈ [Floor44.e4846200016538,Floor44.e4846200016490,Floor44.e4846200015786,Floor44.e4846199894954,Floor44.e4846166078378])) (.cons (hard.get (by decide : Floor44.e4846199894954 ∈ [Floor44.e4846200016538,Floor44.e4846200016490,Floor44.e4846200015786,Floor44.e4846199894954,Floor44.e4846166078378])) (.cons (hard.get (by decide : Floor44.e4846166078378 ∈ [Floor44.e4846200016538,Floor44.e4846200016490,Floor44.e4846200015786,Floor44.e4846199894954,Floor44.e4846166078378])) .nil)))))) .nil))))))))
private abbrev rf418 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,0,0,3]
certRow f418s0 on (rf418 0) using bank tags []
certRow f418s1 on (rf418 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f418s2 on (rf418 2) using bank tags [28,28,28,28,28]
certRow f418s3 on (rf418 3) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f418s4 on (rf418 4) using bank tags [28,28,28,28,28]
certRow f418s5 on (rf418 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f418s6 on (rf418 6) using bank tags []
certRow f418s7 on (rf418 7) using bank tags [28,28,28,28,28]
theorem f418 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,0,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,0,0,3] (.cons (f418s0) (.cons (f418s1) (.cons (f418s2) (.cons (f418s3) (.cons (f418s4) (.cons (f418s5) (.cons (f418s6) (.cons (f418s7) .nil))))))))
private abbrev rf419 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,0,1,2]
certRow f419s0 on (rf419 0) using bank tags []
certRow f419s1 on (rf419 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f419s2 on (rf419 2) using bank tags [3,3,3,3,3]
certRow f419s3 on (rf419 3) using bank tags [3,3,3,3,3,3]
certRow f419s4 on (rf419 4) using bank tags [3,3,3,3,3]
certRow f419s5 on (rf419 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f419s6 on (rf419 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f419s7 on (rf419 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f419s8 on (rf419 8) using bank tags []
certRow f419s9 on (rf419 9) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f419s10 on (rf419 10) using bank tags []
certRow f419s11 on (rf419 11) using bank tags [3,3,3,3,28,28,28]
theorem f419 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,0,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,0,0,1,2] (.cons (f419s0) (.cons (f419s1) (.cons (f419s2) (.cons (f419s3) (.cons (f419s4) (.cons (f419s5) (.cons (f419s6) (.cons (f419s7) (.cons (f419s8) (.cons (f419s9) (.cons (f419s10) (.cons (f419s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
