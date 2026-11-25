import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf41 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,2,2,0,1,1]
certRow f41s0 on (rf41 0) using bank tags [1,1,1,1,1]
certRow f41s1 on (rf41 1) using bank tags [22,22,31,31,26,6,6,6,6,6,22,6,6,6]
certRow f41s2 on (rf41 2) using bank tags [35,22,22,22,15]
certRow f41s3 on (rf41 3) using bank tags [22,22,35,35,35,35,35,35,35,19,19,6,19,35,35,19,6,19]
certRow f41s4 on (rf41 4) using bank tags [22,35,22,22,0] except [Floor44.e4844813007478]
certRow f41s5 on (rf41 5) using bank tags [22,31,35,6,6,35,6,22,35,35,0,35,22,0] except [Floor44.e4844813676214,Floor44.e4844812693174]
certRow f41s6 on (rf41 6) using bank tags []
certRow f41s7 on (rf41 7) using bank tags [31,31,15,15,15,1,1,1,1,1,26,1,1,1]
theorem f41 (hard : BadRow [Floor44.e4844813007478,Floor44.e4844813676214,Floor44.e4844812693174]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,2,0,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,2,2,0,1,1] (.cons (f41s0) (.cons (f41s1) (.cons (f41s2) (.cons (f41s3) (.cons (f41s4 (.cons (hard.get (by decide : Floor44.e4844813007478 ∈ [Floor44.e4844813007478,Floor44.e4844813676214,Floor44.e4844812693174])) .nil)) (.cons (f41s5 (.cons (hard.get (by decide : Floor44.e4844813676214 ∈ [Floor44.e4844813007478,Floor44.e4844813676214,Floor44.e4844812693174])) (.cons (hard.get (by decide : Floor44.e4844812693174 ∈ [Floor44.e4844813007478,Floor44.e4844813676214,Floor44.e4844812693174])) .nil))) (.cons (f41s6) (.cons (f41s7) .nil))))))))
certRow f42 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,2,0,2,0]) using bank tags []
private abbrev rf43 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,2,2,1,0,1]
certRow f43s0 on (rf43 0) using bank tags [1,1,1]
certRow f43s1 on (rf43 1) using bank tags [6,30,31,31,26,6,6,22,6,6,22,6,6,0] except [Floor44.e4844829404886]
certRow f43s2 on (rf43 2) using bank tags [22,22,6,22,15]
certRow f43s3 on (rf43 3) using bank tags [22,22,22,35,0,0,19,0,19,19,19,19,19,35,19,19,19,19] except [Floor44.e4846341711670,Floor44.e4846341711318,Floor44.e4846341683670]
certRow f43s4 on (rf43 4) using bank tags [22,35,22,22,22]
certRow f43s5 on (rf43 5) using bank tags [30,31,35,22,0,22,6,22,35,6,6,6,22,35] except [Floor44.e4844816821974]
certRow f43s6 on (rf43 6) using bank tags []
certRow f43s7 on (rf43 7) using bank tags [31,31,15,15,15,1,1,1,1,1,26,1,1,1]
theorem f43 (hard : BadRow [Floor44.e4844829404886,Floor44.e4844816821974,Floor44.e4846341711670,Floor44.e4846341711318,Floor44.e4846341683670]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,2,1,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,2,2,1,0,1] (.cons (f43s0) (.cons (f43s1 (.cons (hard.get (by decide : Floor44.e4844829404886 ∈ [Floor44.e4844829404886,Floor44.e4844816821974,Floor44.e4846341711670,Floor44.e4846341711318,Floor44.e4846341683670])) .nil)) (.cons (f43s2) (.cons (f43s3 (.cons (hard.get (by decide : Floor44.e4846341711670 ∈ [Floor44.e4844829404886,Floor44.e4844816821974,Floor44.e4846341711670,Floor44.e4846341711318,Floor44.e4846341683670])) (.cons (hard.get (by decide : Floor44.e4846341711318 ∈ [Floor44.e4844829404886,Floor44.e4844816821974,Floor44.e4846341711670,Floor44.e4846341711318,Floor44.e4846341683670])) (.cons (hard.get (by decide : Floor44.e4846341683670 ∈ [Floor44.e4844829404886,Floor44.e4844816821974,Floor44.e4846341711670,Floor44.e4846341711318,Floor44.e4846341683670])) .nil)))) (.cons (f43s4) (.cons (f43s5 (.cons (hard.get (by decide : Floor44.e4844816821974 ∈ [Floor44.e4844829404886,Floor44.e4844816821974,Floor44.e4846341711670,Floor44.e4846341711318,Floor44.e4846341683670])) .nil)) (.cons (f43s6) (.cons (f43s7) .nil))))))))
private abbrev rf44 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,2,2,1,1,0]
certRow f44s0 on (rf44 0) using bank tags []
certRow f44s1 on (rf44 1) using bank tags [6,6,31,31,26,6,6,6,6]
certRow f44s2 on (rf44 2) using bank tags [22,22,6,6,15]
certRow f44s3 on (rf44 3) using bank tags [22,22,35,22,0,19,19,19,19,19,19,19,19] except [Floor44.e4846341711674]
certRow f44s4 on (rf44 4) using bank tags [6,35,6,22,22]
certRow f44s5 on (rf44 5) using bank tags [35,6,22,43,6,208,6,22,22]
certRow f44s6 on (rf44 6) using bank tags []
certRow f44s7 on (rf44 7) using bank tags [31,31,15,15,15,1,1,1,1]
theorem f44 (hard : BadRow [Floor44.e4846341711674]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,2,1,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,2,2,1,1,0] (.cons (f44s0) (.cons (f44s1) (.cons (f44s2) (.cons (f44s3 (.cons (hard.get (by decide : Floor44.e4846341711674 ∈ [Floor44.e4846341711674])) .nil)) (.cons (f44s4) (.cons (f44s5) (.cons (f44s6) (.cons (f44s7) .nil))))))))
certRow f45 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,2,2,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
