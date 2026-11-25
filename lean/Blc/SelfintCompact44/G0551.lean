import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11824 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [3,1,2,0,0]
certRow g11824s0 on (rg11824 0) using bank tags [3,3]
certRow g11824s1 on (rg11824 1) using bank tags [3,3,3,3,3,3,3]
certRow g11824s2 on (rg11824 2) using bank tags [3,3,3,3,3,3,3,28,28,1,1]
certRow g11824s3 on (rg11824 3) using bank tags [3,3,28,28,1,1,1,1,1,28]
certRow g11824s4 on (rg11824 4) using bank tags [3,3,3,3,3,1]
certRow g11824s5 on (rg11824 5) using bank tags []
certRow g11824s6 on (rg11824 6) using bank tags [1,1,1,1,1,9,23]
certRow g11824s7 on (rg11824 7) using bank tags [3,3,3,3,3]
theorem g11824 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,1,2,0,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [3,1,2,0,0] (.cons (g11824s0) (.cons (g11824s1) (.cons (g11824s2) (.cons (g11824s3) (.cons (g11824s4) (.cons (g11824s5) (.cons (g11824s6) (.cons (g11824s7) .nil))))))))
certRow g11825 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,1,2,0,0]) using bank tags []
private abbrev rg11826 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [3,2,0,0,1]
certRow g11826s0 on (rg11826 0) using bank tags [3,3,28]
certRow g11826s1 on (rg11826 1) using bank tags [3,3,3,3,3,3,3]
certRow g11826s2 on (rg11826 2) using bank tags [3,3,3,3,3,3,3,28,1]
certRow g11826s3 on (rg11826 3) using bank tags [3,3,26,1,15,1,1,1,1,28,28]
certRow g11826s4 on (rg11826 4) using bank tags [3,3,3,3,3]
certRow g11826s5 on (rg11826 5) using bank tags []
certRow g11826s6 on (rg11826 6) using bank tags [26,1,15,1,1]
certRow g11826s7 on (rg11826 7) using bank tags [3,3,3,3,3,28]
theorem g11826 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,2,0,0,1]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [3,2,0,0,1] (.cons (g11826s0) (.cons (g11826s1) (.cons (g11826s2) (.cons (g11826s3) (.cons (g11826s4) (.cons (g11826s5) (.cons (g11826s6) (.cons (g11826s7) .nil))))))))
certRow g11827 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,2,0,0,1]) using bank tags []
private abbrev rg11828 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [3,2,0,1,0]
certRow g11828s0 on (rg11828 0) using bank tags [3,3,28]
certRow g11828s1 on (rg11828 1) using bank tags [3,3,3,3,3,3,3]
certRow g11828s2 on (rg11828 2) using bank tags [3,3,3,3,3,3,3,28,28,28]
certRow g11828s3 on (rg11828 3) using bank tags [3,3,28,28,1,15,1,15,1,1,1,28,28,28]
certRow g11828s4 on (rg11828 4) using bank tags [3,3,3,3,3]
certRow g11828s5 on (rg11828 5) using bank tags []
certRow g11828s6 on (rg11828 6) using bank tags [1,15,1,15,1]
certRow g11828s7 on (rg11828 7) using bank tags [3,3,3,3,3,28]
theorem g11828 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,2,0,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [3,2,0,1,0] (.cons (g11828s0) (.cons (g11828s1) (.cons (g11828s2) (.cons (g11828s3) (.cons (g11828s4) (.cons (g11828s5) (.cons (g11828s6) (.cons (g11828s7) .nil))))))))
certRow g11829 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,2,0,1,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
