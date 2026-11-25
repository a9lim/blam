import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11788 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,3,0,1,0]
certRow g11788s0 on (rg11788 0) using bank tags [3,3,3]
certRow g11788s1 on (rg11788 1) using bank tags [3,3,3,3,3,3,3,24]
certRow g11788s2 on (rg11788 2) using bank tags [3,3,3,3,3,3,3,28,28,11,24]
certRow g11788s3 on (rg11788 3) using bank tags [3,3,1,15,28,28,28]
certRow g11788s4 on (rg11788 4) using bank tags [3,3,3,3,3,13,13,13,13,13,16,16,19,11,45,19,24,24]
certRow g11788s5 on (rg11788 5) using bank tags []
certRow g11788s6 on (rg11788 6) using bank tags [11,11]
certRow g11788s7 on (rg11788 7) using bank tags [3,3,3,3,3,28,61,19]
theorem g11788 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,3,0,1,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,3,0,1,0] (.cons (g11788s0) (.cons (g11788s1) (.cons (g11788s2) (.cons (g11788s3) (.cons (g11788s4) (.cons (g11788s5) (.cons (g11788s6) (.cons (g11788s7) .nil))))))))
certRow g11789 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,3,0,1,0]) using bank tags []
private abbrev rg11790 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [2,3,1,0,0]
certRow g11790s0 on (rg11790 0) using bank tags [3,3]
certRow g11790s1 on (rg11790 1) using bank tags [3,3,3,3,3,3]
certRow g11790s2 on (rg11790 2) using bank tags [3,3,3,3,3,3,28,1,8]
certRow g11790s3 on (rg11790 3) using bank tags [3,1,1,28]
certRow g11790s4 on (rg11790 4) using bank tags [3,3,3,3,13,13,13,30,1,1,1,24]
certRow g11790s5 on (rg11790 5) using bank tags []
certRow g11790s6 on (rg11790 6) using bank tags [1,11,11,11]
certRow g11790s7 on (rg11790 7) using bank tags [3,3,3,3,3,1]
theorem g11790 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,3,1,0,0]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [2,3,1,0,0] (.cons (g11790s0) (.cons (g11790s1) (.cons (g11790s2) (.cons (g11790s3) (.cons (g11790s4) (.cons (g11790s5) (.cons (g11790s6) (.cons (g11790s7) .nil))))))))
certRow g11791 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,3,1,0,0]) using bank tags []
certRow g11792 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [2,4,0,0,0]) using bank tags []
certRow g11793 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [2,4,0,0,0]) using bank tags []
certRow g11794 on (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,0,0,0,3]) using bank tags [1,1,28,28,13,13,28,28,28,1,1]
certRow g11795 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [3,0,0,0,3]) using bank tags []
private abbrev rg11796 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [3,0,0,1,2]
certRow g11796s0 on (rg11796 0) using bank tags [3,3]
certRow g11796s1 on (rg11796 1) using bank tags [3,3,3,3,3,3,3,19,28,28]
certRow g11796s2 on (rg11796 2) using bank tags [3,3,28,28,3,3,3,3,3,18,19,28,28,13]
certRow g11796s3 on (rg11796 3) using bank tags [3,3,24,24,19,24,19,28,28,28]
certRow g11796s4 on (rg11796 4) using bank tags [3,3,3,3,3]
certRow g11796s5 on (rg11796 5) using bank tags [28,28]
certRow g11796s6 on (rg11796 6) using bank tags [24,24,19,24,19,28,28]
certRow g11796s7 on (rg11796 7) using bank tags [3,3,3,3,3,19]
theorem g11796 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [3,0,0,1,2]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [3,0,0,1,2] (.cons (g11796s0) (.cons (g11796s1) (.cons (g11796s2) (.cons (g11796s3) (.cons (g11796s4) (.cons (g11796s5) (.cons (g11796s6) (.cons (g11796s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
