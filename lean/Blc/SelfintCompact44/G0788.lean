import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14584 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,0,0,3,0,1]
certRow g14584s0 on (rg14584 0) using bank tags []
certRow g14584s1 on (rg14584 1) using bank tags []
certRow g14584s2 on (rg14584 2) using bank tags [28,28,28,28,28,28,28,28,28,28,1,1,1,1,1,1,1,6,6,6,6,6,19,19,19,0,0,19,19,29,0,29,0,29,0] except [Floor44.e4846360469302,Floor44.e4846360467414,Floor44.e4846434748374,Floor44.e4846435966774,Floor44.e4846435964886]
certRow g14584s3 on (rg14584 3) using bank tags []
certRow g14584s4 on (rg14584 4) using bank tags [28,28,28,28,28,28,28,28,28]
certRow g14584s5 on (rg14584 5) using bank tags []
certRow g14584s6 on (rg14584 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14584s7 on (rg14584 7) using bank tags []
certRow g14584s8 on (rg14584 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14584s9 on (rg14584 9) using bank tags [28,28,28,28,28,28,28]
certRow g14584s10 on (rg14584 10) using bank tags [19,19,19,19,19,19]
certRow g14584s11 on (rg14584 11) using bank tags [28]
theorem g14584 (hard : BadRow [Floor44.e4846360469302,Floor44.e4846360467414,Floor44.e4846434748374,Floor44.e4846435966774,Floor44.e4846435964886]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,3,0,1]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,0,0,3,0,1] (.cons (g14584s0) (.cons (g14584s1) (.cons (g14584s2 (.cons (hard.get (by decide : Floor44.e4846360469302 ∈ [Floor44.e4846360469302,Floor44.e4846360467414,Floor44.e4846434748374,Floor44.e4846435966774,Floor44.e4846435964886])) (.cons (hard.get (by decide : Floor44.e4846360467414 ∈ [Floor44.e4846360469302,Floor44.e4846360467414,Floor44.e4846434748374,Floor44.e4846435966774,Floor44.e4846435964886])) (.cons (hard.get (by decide : Floor44.e4846434748374 ∈ [Floor44.e4846360469302,Floor44.e4846360467414,Floor44.e4846434748374,Floor44.e4846435966774,Floor44.e4846435964886])) (.cons (hard.get (by decide : Floor44.e4846435966774 ∈ [Floor44.e4846360469302,Floor44.e4846360467414,Floor44.e4846434748374,Floor44.e4846435966774,Floor44.e4846435964886])) (.cons (hard.get (by decide : Floor44.e4846435964886 ∈ [Floor44.e4846360469302,Floor44.e4846360467414,Floor44.e4846434748374,Floor44.e4846435966774,Floor44.e4846435964886])) .nil)))))) (.cons (g14584s3) (.cons (g14584s4) (.cons (g14584s5) (.cons (g14584s6) (.cons (g14584s7) (.cons (g14584s8) (.cons (g14584s9) (.cons (g14584s10) (.cons (g14584s11) .nil))))))))))))
certRow g14585 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,3,0,1]) using bank tags []
private abbrev rg14586 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,0,3,1,0]
certRow g14586s0 on (rg14586 0) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g14586s1 on (rg14586 1) using bank tags [28,28]
certRow g14586s2 on (rg14586 2) using bank tags [28,28,28,28,28,28,28,28,28,28,1,1,6,6,6,19,0,19,0,29,0,19,19] except [Floor44.e4846360469306,Floor44.e4846356814810,Floor44.e4846435966778]
certRow g14586s3 on (rg14586 3) using bank tags []
certRow g14586s4 on (rg14586 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14586s5 on (rg14586 5) using bank tags []
certRow g14586s6 on (rg14586 6) using bank tags []
certRow g14586s7 on (rg14586 7) using bank tags [28,28,28,28,28,28,28,29,0,29,0] except [Floor44.e4846200953818,Floor44.e4846205819866]
theorem g14586 (hard : BadRow [Floor44.e4846360469306,Floor44.e4846356814810,Floor44.e4846435966778,Floor44.e4846200953818,Floor44.e4846205819866]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,3,1,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,0,3,1,0] (.cons (g14586s0) (.cons (g14586s1) (.cons (g14586s2 (.cons (hard.get (by decide : Floor44.e4846360469306 ∈ [Floor44.e4846360469306,Floor44.e4846356814810,Floor44.e4846435966778,Floor44.e4846200953818,Floor44.e4846205819866])) (.cons (hard.get (by decide : Floor44.e4846356814810 ∈ [Floor44.e4846360469306,Floor44.e4846356814810,Floor44.e4846435966778,Floor44.e4846200953818,Floor44.e4846205819866])) (.cons (hard.get (by decide : Floor44.e4846435966778 ∈ [Floor44.e4846360469306,Floor44.e4846356814810,Floor44.e4846435966778,Floor44.e4846200953818,Floor44.e4846205819866])) .nil)))) (.cons (g14586s3) (.cons (g14586s4) (.cons (g14586s5) (.cons (g14586s6) (.cons (g14586s7 (.cons (hard.get (by decide : Floor44.e4846200953818 ∈ [Floor44.e4846360469306,Floor44.e4846356814810,Floor44.e4846435966778,Floor44.e4846200953818,Floor44.e4846205819866])) (.cons (hard.get (by decide : Floor44.e4846205819866 ∈ [Floor44.e4846360469306,Floor44.e4846356814810,Floor44.e4846435966778,Floor44.e4846200953818,Floor44.e4846205819866])) .nil))) .nil))))))))
certRow g14587 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,3,1,0]) using bank tags []
certRow g14588 on (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,0,4,0,0]) using bank tags []
certRow g14589 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,0,4,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
