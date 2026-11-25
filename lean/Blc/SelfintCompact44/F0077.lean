import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf412 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,2,1,1,0,0]
certRow f412s0 on (rf412 0) using bank tags [3,3,3]
certRow f412s1 on (rf412 1) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f412s2 on (rf412 2) using bank tags [3,3,3,3,3,28,28,28,28,35,6,24,24,35,24,6,24,35,24]
certRow f412s3 on (rf412 3) using bank tags [3,3,3,3,0,0,0,161,0,211] except [Floor44.e4846201494634,Floor44.e4846201048298,Floor44.e4846201052266,Floor44.e4846166449258]
certRow f412s4 on (rf412 4) using bank tags [3,3,3,28,28,28,28,28,28]
certRow f412s5 on (rf412 5) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28]
certRow f412s6 on (rf412 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f412s7 on (rf412 7) using bank tags [3,3,3,3,3,3,3,3,3,3,0,0] except [Floor44.e4846201500058,Floor44.e4846201048474]
certRow f412s8 on (rf412 8) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow f412s9 on (rf412 9) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f412s10 on (rf412 10) using bank tags []
certRow f412s11 on (rf412 11) using bank tags [28,28,3,3,3,28,28,28,28,28,28]
theorem f412 (hard : BadRow [Floor44.e4846201500058,Floor44.e4846201048474,Floor44.e4846201494634,Floor44.e4846201048298,Floor44.e4846201052266,Floor44.e4846166449258]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,2,1,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,2,1,1,0,0] (.cons (f412s0) (.cons (f412s1) (.cons (f412s2) (.cons (f412s3 (.cons (hard.get (by decide : Floor44.e4846201494634 ∈ [Floor44.e4846201500058,Floor44.e4846201048474,Floor44.e4846201494634,Floor44.e4846201048298,Floor44.e4846201052266,Floor44.e4846166449258])) (.cons (hard.get (by decide : Floor44.e4846201048298 ∈ [Floor44.e4846201500058,Floor44.e4846201048474,Floor44.e4846201494634,Floor44.e4846201048298,Floor44.e4846201052266,Floor44.e4846166449258])) (.cons (hard.get (by decide : Floor44.e4846201052266 ∈ [Floor44.e4846201500058,Floor44.e4846201048474,Floor44.e4846201494634,Floor44.e4846201048298,Floor44.e4846201052266,Floor44.e4846166449258])) (.cons (hard.get (by decide : Floor44.e4846166449258 ∈ [Floor44.e4846201500058,Floor44.e4846201048474,Floor44.e4846201494634,Floor44.e4846201048298,Floor44.e4846201052266,Floor44.e4846166449258])) .nil))))) (.cons (f412s4) (.cons (f412s5) (.cons (f412s6) (.cons (f412s7 (.cons (hard.get (by decide : Floor44.e4846201500058 ∈ [Floor44.e4846201500058,Floor44.e4846201048474,Floor44.e4846201494634,Floor44.e4846201048298,Floor44.e4846201052266,Floor44.e4846166449258])) (.cons (hard.get (by decide : Floor44.e4846201048474 ∈ [Floor44.e4846201500058,Floor44.e4846201048474,Floor44.e4846201494634,Floor44.e4846201048298,Floor44.e4846201052266,Floor44.e4846166449258])) .nil))) (.cons (f412s8) (.cons (f412s9) (.cons (f412s10) (.cons (f412s11) .nil))))))))))))
certRow f413 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,2,2,0,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
private abbrev rf414 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [0,3,0,0,0,1]
certRow f414s0 on (rf414 0) using bank tags [28,28]
certRow f414s1 on (rf414 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f414s2 on (rf414 2) using bank tags [28,28,28,28,28,28,28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,13]
certRow f414s3 on (rf414 3) using bank tags [28,28,28,28]
certRow f414s4 on (rf414 4) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f414s5 on (rf414 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f414s6 on (rf414 6) using bank tags [28,28]
certRow f414s7 on (rf414 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
theorem f414 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,3,0,0,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,3,0,0,0,1] (.cons (f414s0) (.cons (f414s1) (.cons (f414s2) (.cons (f414s3) (.cons (f414s4) (.cons (f414s5) (.cons (f414s6) (.cons (f414s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
