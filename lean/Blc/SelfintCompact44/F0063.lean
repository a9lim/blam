import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf385 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,0,1,2]
certRow f385s0 on (rf385 0) using bank tags [28,28,28,6,138,0,52,0] except [Floor44.e4846212132206,Floor44.e4846212877166]
certRow f385s1 on (rf385 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f385s2 on (rf385 2) using bank tags [3,3,3,3,3,28,6,6,6,6,6,6,6,6,6]
certRow f385s3 on (rf385 3) using bank tags [3,3,3,3,3,3]
certRow f385s4 on (rf385 4) using bank tags [3,3,3,3,3,28,28,28,28]
certRow f385s5 on (rf385 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f385s6 on (rf385 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f385s7 on (rf385 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f385s8 on (rf385 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,0] except [Floor44.e4846169361262]
certRow f385s9 on (rf385 9) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f385s10 on (rf385 10) using bank tags [28]
certRow f385s11 on (rf385 11) using bank tags [3,3,3,3,28,28,28]
theorem f385 (hard : BadRow [Floor44.e4846212132206,Floor44.e4846212877166,Floor44.e4846169361262]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,0,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,0,1,2] (.cons (f385s0 (.cons (hard.get (by decide : Floor44.e4846212132206 ∈ [Floor44.e4846212132206,Floor44.e4846212877166,Floor44.e4846169361262])) (.cons (hard.get (by decide : Floor44.e4846212877166 ∈ [Floor44.e4846212132206,Floor44.e4846212877166,Floor44.e4846169361262])) .nil))) (.cons (f385s1) (.cons (f385s2) (.cons (f385s3) (.cons (f385s4) (.cons (f385s5) (.cons (f385s6) (.cons (f385s7) (.cons (f385s8 (.cons (hard.get (by decide : Floor44.e4846169361262 ∈ [Floor44.e4846212132206,Floor44.e4846212877166,Floor44.e4846169361262])) .nil)) (.cons (f385s9) (.cons (f385s10) (.cons (f385s11) .nil))))))))))))
private abbrev rf386 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,0,2,1]
certRow f386s0 on (rf386 0) using bank tags [3,3,3,3,3,28,28,28,6,0,0,0,0] except [Floor44.e4846212133750,Floor44.e4846212132214,Floor44.e4846212287350,Floor44.e4846212877174]
certRow f386s1 on (rf386 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,6,0,0,0,0] except [Floor44.e4846201386438,Floor44.e4846201032134,Floor44.e4846201025990,Floor44.e4846200935878]
certRow f386s2 on (rf386 2) using bank tags [3,3,3,3,3,28,32,6,32,6,6,6,6,6,6,32,6,6,6,6]
certRow f386s3 on (rf386 3) using bank tags [3,3,3,3,3,3,28,28,28,28,28]
certRow f386s4 on (rf386 4) using bank tags [3,3,3,3,3,28,28,28,28]
certRow f386s5 on (rf386 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f386s6 on (rf386 6) using bank tags [28,28,28,28,28]
certRow f386s7 on (rf386 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f386s8 on (rf386 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,0] except [Floor44.e4846169361270]
certRow f386s9 on (rf386 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f386s10 on (rf386 10) using bank tags [28]
certRow f386s11 on (rf386 11) using bank tags [3,3,3,3,28,28,28,28,28]
theorem f386 (hard : BadRow [Floor44.e4846212133750,Floor44.e4846212132214,Floor44.e4846212287350,Floor44.e4846212877174,Floor44.e4846169361270,Floor44.e4846201386438,Floor44.e4846201032134,Floor44.e4846201025990,Floor44.e4846200935878]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,0,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,0,2,1] (.cons (f386s0 (.cons (hard.get (by decide : Floor44.e4846212133750 ∈ [Floor44.e4846212133750,Floor44.e4846212132214,Floor44.e4846212287350,Floor44.e4846212877174,Floor44.e4846169361270,Floor44.e4846201386438,Floor44.e4846201032134,Floor44.e4846201025990,Floor44.e4846200935878])) (.cons (hard.get (by decide : Floor44.e4846212132214 ∈ [Floor44.e4846212133750,Floor44.e4846212132214,Floor44.e4846212287350,Floor44.e4846212877174,Floor44.e4846169361270,Floor44.e4846201386438,Floor44.e4846201032134,Floor44.e4846201025990,Floor44.e4846200935878])) (.cons (hard.get (by decide : Floor44.e4846212287350 ∈ [Floor44.e4846212133750,Floor44.e4846212132214,Floor44.e4846212287350,Floor44.e4846212877174,Floor44.e4846169361270,Floor44.e4846201386438,Floor44.e4846201032134,Floor44.e4846201025990,Floor44.e4846200935878])) (.cons (hard.get (by decide : Floor44.e4846212877174 ∈ [Floor44.e4846212133750,Floor44.e4846212132214,Floor44.e4846212287350,Floor44.e4846212877174,Floor44.e4846169361270,Floor44.e4846201386438,Floor44.e4846201032134,Floor44.e4846201025990,Floor44.e4846200935878])) .nil))))) (.cons (f386s1 (.cons (hard.get (by decide : Floor44.e4846201386438 ∈ [Floor44.e4846212133750,Floor44.e4846212132214,Floor44.e4846212287350,Floor44.e4846212877174,Floor44.e4846169361270,Floor44.e4846201386438,Floor44.e4846201032134,Floor44.e4846201025990,Floor44.e4846200935878])) (.cons (hard.get (by decide : Floor44.e4846201032134 ∈ [Floor44.e4846212133750,Floor44.e4846212132214,Floor44.e4846212287350,Floor44.e4846212877174,Floor44.e4846169361270,Floor44.e4846201386438,Floor44.e4846201032134,Floor44.e4846201025990,Floor44.e4846200935878])) (.cons (hard.get (by decide : Floor44.e4846201025990 ∈ [Floor44.e4846212133750,Floor44.e4846212132214,Floor44.e4846212287350,Floor44.e4846212877174,Floor44.e4846169361270,Floor44.e4846201386438,Floor44.e4846201032134,Floor44.e4846201025990,Floor44.e4846200935878])) (.cons (hard.get (by decide : Floor44.e4846200935878 ∈ [Floor44.e4846212133750,Floor44.e4846212132214,Floor44.e4846212287350,Floor44.e4846212877174,Floor44.e4846169361270,Floor44.e4846201386438,Floor44.e4846201032134,Floor44.e4846201025990,Floor44.e4846200935878])) .nil))))) (.cons (f386s2) (.cons (f386s3) (.cons (f386s4) (.cons (f386s5) (.cons (f386s6) (.cons (f386s7) (.cons (f386s8 (.cons (hard.get (by decide : Floor44.e4846169361270 ∈ [Floor44.e4846212133750,Floor44.e4846212132214,Floor44.e4846212287350,Floor44.e4846212877174,Floor44.e4846169361270,Floor44.e4846201386438,Floor44.e4846201032134,Floor44.e4846201025990,Floor44.e4846200935878])) .nil)) (.cons (f386s9) (.cons (f386s10) (.cons (f386s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
