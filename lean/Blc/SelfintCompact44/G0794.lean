import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14606 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,0,1,2,1,0]
certRow g14606s0 on (rg14606 0) using bank tags [1,1,1,28,28,28,35,6,19,6,19,6,19,29,6]
certRow g14606s1 on (rg14606 1) using bank tags [28,28,28,28,28,28,0,0,0] except [Floor44.e4846200999778,Floor44.e4846200977250,Floor44.e4846200928098]
certRow g14606s2 on (rg14606 2) using bank tags [1,6,28,28,28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,1,1,1,1,6,19,19,19,19,0,19,6,6,6,6,22,35,35,0,29,0,35,0] except [Floor44.e4846360727354,Floor44.e4846434848570,Floor44.e4846434860090,Floor44.e4846436224826]
certRow g14606s3 on (rg14606 3) using bank tags [28,28,28,28,28,28,28,28,28,1,25,212,1,22,1,212]
certRow g14606s4 on (rg14606 4) using bank tags [1,28,28,28,1,28,1,28,1,28,35,1]
certRow g14606s5 on (rg14606 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,19,29,0] except [Floor44.e4846201003066]
certRow g14606s6 on (rg14606 6) using bank tags [28,28,28,28]
certRow g14606s7 on (rg14606 7) using bank tags []
certRow g14606s8 on (rg14606 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,22,0,19,19] except [Floor44.e4845892013882]
certRow g14606s9 on (rg14606 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,1]
certRow g14606s10 on (rg14606 10) using bank tags [6,6,28,1,19,19,19,19,19,19,19,19,19,19,19,19]
certRow g14606s11 on (rg14606 11) using bank tags [28,28]
theorem g14606 (hard : BadRow [Floor44.e4846360727354,Floor44.e4846434848570,Floor44.e4846434860090,Floor44.e4846436224826,Floor44.e4845892013882,Floor44.e4846201003066,Floor44.e4846200999778,Floor44.e4846200977250,Floor44.e4846200928098]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,1,2,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,0,1,2,1,0] (.cons (g14606s0) (.cons (g14606s1 (.cons (hard.get (by decide : Floor44.e4846200999778 ∈ [Floor44.e4846360727354,Floor44.e4846434848570,Floor44.e4846434860090,Floor44.e4846436224826,Floor44.e4845892013882,Floor44.e4846201003066,Floor44.e4846200999778,Floor44.e4846200977250,Floor44.e4846200928098])) (.cons (hard.get (by decide : Floor44.e4846200977250 ∈ [Floor44.e4846360727354,Floor44.e4846434848570,Floor44.e4846434860090,Floor44.e4846436224826,Floor44.e4845892013882,Floor44.e4846201003066,Floor44.e4846200999778,Floor44.e4846200977250,Floor44.e4846200928098])) (.cons (hard.get (by decide : Floor44.e4846200928098 ∈ [Floor44.e4846360727354,Floor44.e4846434848570,Floor44.e4846434860090,Floor44.e4846436224826,Floor44.e4845892013882,Floor44.e4846201003066,Floor44.e4846200999778,Floor44.e4846200977250,Floor44.e4846200928098])) .nil)))) (.cons (g14606s2 (.cons (hard.get (by decide : Floor44.e4846360727354 ∈ [Floor44.e4846360727354,Floor44.e4846434848570,Floor44.e4846434860090,Floor44.e4846436224826,Floor44.e4845892013882,Floor44.e4846201003066,Floor44.e4846200999778,Floor44.e4846200977250,Floor44.e4846200928098])) (.cons (hard.get (by decide : Floor44.e4846434848570 ∈ [Floor44.e4846360727354,Floor44.e4846434848570,Floor44.e4846434860090,Floor44.e4846436224826,Floor44.e4845892013882,Floor44.e4846201003066,Floor44.e4846200999778,Floor44.e4846200977250,Floor44.e4846200928098])) (.cons (hard.get (by decide : Floor44.e4846434860090 ∈ [Floor44.e4846360727354,Floor44.e4846434848570,Floor44.e4846434860090,Floor44.e4846436224826,Floor44.e4845892013882,Floor44.e4846201003066,Floor44.e4846200999778,Floor44.e4846200977250,Floor44.e4846200928098])) (.cons (hard.get (by decide : Floor44.e4846436224826 ∈ [Floor44.e4846360727354,Floor44.e4846434848570,Floor44.e4846434860090,Floor44.e4846436224826,Floor44.e4845892013882,Floor44.e4846201003066,Floor44.e4846200999778,Floor44.e4846200977250,Floor44.e4846200928098])) .nil))))) (.cons (g14606s3) (.cons (g14606s4) (.cons (g14606s5 (.cons (hard.get (by decide : Floor44.e4846201003066 ∈ [Floor44.e4846360727354,Floor44.e4846434848570,Floor44.e4846434860090,Floor44.e4846436224826,Floor44.e4845892013882,Floor44.e4846201003066,Floor44.e4846200999778,Floor44.e4846200977250,Floor44.e4846200928098])) .nil)) (.cons (g14606s6) (.cons (g14606s7) (.cons (g14606s8 (.cons (hard.get (by decide : Floor44.e4845892013882 ∈ [Floor44.e4846360727354,Floor44.e4846434848570,Floor44.e4846434860090,Floor44.e4846436224826,Floor44.e4845892013882,Floor44.e4846201003066,Floor44.e4846200999778,Floor44.e4846200977250,Floor44.e4846200928098])) .nil)) (.cons (g14606s9) (.cons (g14606s10) (.cons (g14606s11) .nil))))))))))))
certRow g14607 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,1,2,1,0]) using bank tags [14,14,14,1,1,1,57,57,57]
private abbrev rg14608 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,1,3,0,0]
certRow g14608s0 on (rg14608 0) using bank tags []
certRow g14608s1 on (rg14608 1) using bank tags [28,28,28,28]
certRow g14608s2 on (rg14608 2) using bank tags [28,28,28,28,28,28,1,1,1,6,6,6,0] except [Floor44.e4846356820970]
certRow g14608s3 on (rg14608 3) using bank tags []
certRow g14608s4 on (rg14608 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14608s5 on (rg14608 5) using bank tags [28,28,28,28]
certRow g14608s6 on (rg14608 6) using bank tags []
certRow g14608s7 on (rg14608 7) using bank tags [28,28,28,28,28,28,28,28,29,0,29,0] except [Floor44.e4846200996842,Floor44.e4846205826026]
theorem g14608 (hard : BadRow [Floor44.e4846356820970,Floor44.e4846200996842,Floor44.e4846205826026]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,1,3,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,1,3,0,0] (.cons (g14608s0) (.cons (g14608s1) (.cons (g14608s2 (.cons (hard.get (by decide : Floor44.e4846356820970 ∈ [Floor44.e4846356820970,Floor44.e4846200996842,Floor44.e4846205826026])) .nil)) (.cons (g14608s3) (.cons (g14608s4) (.cons (g14608s5) (.cons (g14608s6) (.cons (g14608s7 (.cons (hard.get (by decide : Floor44.e4846200996842 ∈ [Floor44.e4846356820970,Floor44.e4846200996842,Floor44.e4846205826026])) (.cons (hard.get (by decide : Floor44.e4846205826026 ∈ [Floor44.e4846356820970,Floor44.e4846200996842,Floor44.e4846205826026])) .nil))) .nil))))))))
certRow g14609 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,1,3,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
