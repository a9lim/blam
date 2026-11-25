import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf387 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,0,3,0]
certRow f387s0 on (rf387 0) using bank tags [28,28,28,28,28]
certRow f387s1 on (rf387 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f387s2 on (rf387 2) using bank tags [28,28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13,6,6,6,6,6,6,6,6,6]
certRow f387s3 on (rf387 3) using bank tags [28,28,28,28,18,18,0,6,0,121,133,0,0,0] except [Floor44.e4846199886714,Floor44.e4846199862650,Floor44.e4846201031802,Floor44.e4846201025658,Floor44.e4846200935546]
certRow f387s4 on (rf387 4) using bank tags [28,28,28,28,28]
certRow f387s5 on (rf387 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f387s6 on (rf387 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f387s7 on (rf387 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f387s8 on (rf387 8) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f387s9 on (rf387 9) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f387s10 on (rf387 10) using bank tags []
certRow f387s11 on (rf387 11) using bank tags [28,28,28,28,28,28,28,28]
theorem f387 (hard : BadRow [Floor44.e4846199886714,Floor44.e4846199862650,Floor44.e4846201031802,Floor44.e4846201025658,Floor44.e4846200935546]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,0,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,0,3,0] (.cons (f387s0) (.cons (f387s1) (.cons (f387s2) (.cons (f387s3 (.cons (hard.get (by decide : Floor44.e4846199886714 ∈ [Floor44.e4846199886714,Floor44.e4846199862650,Floor44.e4846201031802,Floor44.e4846201025658,Floor44.e4846200935546])) (.cons (hard.get (by decide : Floor44.e4846199862650 ∈ [Floor44.e4846199886714,Floor44.e4846199862650,Floor44.e4846201031802,Floor44.e4846201025658,Floor44.e4846200935546])) (.cons (hard.get (by decide : Floor44.e4846201031802 ∈ [Floor44.e4846199886714,Floor44.e4846199862650,Floor44.e4846201031802,Floor44.e4846201025658,Floor44.e4846200935546])) (.cons (hard.get (by decide : Floor44.e4846201025658 ∈ [Floor44.e4846199886714,Floor44.e4846199862650,Floor44.e4846201031802,Floor44.e4846201025658,Floor44.e4846200935546])) (.cons (hard.get (by decide : Floor44.e4846200935546 ∈ [Floor44.e4846199886714,Floor44.e4846199862650,Floor44.e4846201031802,Floor44.e4846201025658,Floor44.e4846200935546])) .nil)))))) (.cons (f387s4) (.cons (f387s5) (.cons (f387s6) (.cons (f387s7) (.cons (f387s8) (.cons (f387s9) (.cons (f387s10) (.cons (f387s11) .nil))))))))))))
private abbrev rf388 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,1,0,2]
certRow f388s0 on (rf388 0) using bank tags [28,28,28,28,28,6,6,0,138,0,0,52,0,0] except [Floor44.e4846212134510,Floor44.e4846212132270,Floor44.e4846212288110,Floor44.e4846212877934,Floor44.e4846212877230]
certRow f388s1 on (rf388 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f388s2 on (rf388 2) using bank tags [3,3,3,3,3,28,28,6,6,6,32,6,6,6]
certRow f388s3 on (rf388 3) using bank tags [3,3,3,3,3,3,3,3]
certRow f388s4 on (rf388 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f388s5 on (rf388 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f388s6 on (rf388 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f388s7 on (rf388 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f388s8 on (rf388 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,0,0] except [Floor44.e4846169362030,Floor44.e4846169361326]
certRow f388s9 on (rf388 9) using bank tags [28,28,28,28,28,28,28]
certRow f388s10 on (rf388 10) using bank tags [28,28]
certRow f388s11 on (rf388 11) using bank tags [3,3,3,3,3,3,3,28,28]
theorem f388 (hard : BadRow [Floor44.e4846212134510,Floor44.e4846212132270,Floor44.e4846212288110,Floor44.e4846212877934,Floor44.e4846212877230,Floor44.e4846169362030,Floor44.e4846169361326]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,1,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,1,0,2] (.cons (f388s0 (.cons (hard.get (by decide : Floor44.e4846212134510 ∈ [Floor44.e4846212134510,Floor44.e4846212132270,Floor44.e4846212288110,Floor44.e4846212877934,Floor44.e4846212877230,Floor44.e4846169362030,Floor44.e4846169361326])) (.cons (hard.get (by decide : Floor44.e4846212132270 ∈ [Floor44.e4846212134510,Floor44.e4846212132270,Floor44.e4846212288110,Floor44.e4846212877934,Floor44.e4846212877230,Floor44.e4846169362030,Floor44.e4846169361326])) (.cons (hard.get (by decide : Floor44.e4846212288110 ∈ [Floor44.e4846212134510,Floor44.e4846212132270,Floor44.e4846212288110,Floor44.e4846212877934,Floor44.e4846212877230,Floor44.e4846169362030,Floor44.e4846169361326])) (.cons (hard.get (by decide : Floor44.e4846212877934 ∈ [Floor44.e4846212134510,Floor44.e4846212132270,Floor44.e4846212288110,Floor44.e4846212877934,Floor44.e4846212877230,Floor44.e4846169362030,Floor44.e4846169361326])) (.cons (hard.get (by decide : Floor44.e4846212877230 ∈ [Floor44.e4846212134510,Floor44.e4846212132270,Floor44.e4846212288110,Floor44.e4846212877934,Floor44.e4846212877230,Floor44.e4846169362030,Floor44.e4846169361326])) .nil)))))) (.cons (f388s1) (.cons (f388s2) (.cons (f388s3) (.cons (f388s4) (.cons (f388s5) (.cons (f388s6) (.cons (f388s7) (.cons (f388s8 (.cons (hard.get (by decide : Floor44.e4846169362030 ∈ [Floor44.e4846212134510,Floor44.e4846212132270,Floor44.e4846212288110,Floor44.e4846212877934,Floor44.e4846212877230,Floor44.e4846169362030,Floor44.e4846169361326])) (.cons (hard.get (by decide : Floor44.e4846169361326 ∈ [Floor44.e4846212134510,Floor44.e4846212132270,Floor44.e4846212288110,Floor44.e4846212877934,Floor44.e4846212877230,Floor44.e4846169362030,Floor44.e4846169361326])) .nil))) (.cons (f388s9) (.cons (f388s10) (.cons (f388s11) .nil))))))))))))
certRow f389 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,0,1,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
