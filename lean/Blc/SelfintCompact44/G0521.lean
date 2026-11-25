import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg11614 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,0,1,4]
certRow g11614s0 on (rg11614 0) using bank tags [28,28]
certRow g11614s1 on (rg11614 1) using bank tags []
certRow g11614s2 on (rg11614 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g11614s3 on (rg11614 3) using bank tags [28,28,28,28,28,28,28]
certRow g11614s4 on (rg11614 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g11614s5 on (rg11614 5) using bank tags [28,28,28,28,28,28]
certRow g11614s6 on (rg11614 6) using bank tags [28,28,28,28,28,28,28]
certRow g11614s7 on (rg11614 7) using bank tags [6,6,6,27,27]
theorem g11614 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,0,1,4]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,0,1,4] (.cons (g11614s0) (.cons (g11614s1) (.cons (g11614s2) (.cons (g11614s3) (.cons (g11614s4) (.cons (g11614s5) (.cons (g11614s6) (.cons (g11614s7) .nil))))))))
certRow g11615 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,0,1,4]) using bank tags []
private abbrev rg11616 (i : Nat) := Split43.five 8 i 7 6 6 false 6 4 5 [1,0,0,2,3]
certRow g11616s0 on (rg11616 0) using bank tags [3,3]
certRow g11616s1 on (rg11616 1) using bank tags [3,3,3,3,3,3,3,1,28,14,28,14,28,14,27]
certRow g11616s2 on (rg11616 2) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,14,28,1]
certRow g11616s3 on (rg11616 3) using bank tags [3,3,3,3,28]
certRow g11616s4 on (rg11616 4) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,1,28,1,1,1,1]
certRow g11616s5 on (rg11616 5) using bank tags [3,3,28]
certRow g11616s6 on (rg11616 6) using bank tags [3,3,28,14,1]
certRow g11616s7 on (rg11616 7) using bank tags [3,3,3,3,3,13,13,13,1,13,44,6,28,6,28,27]
theorem g11616 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,0,2,3]) :=
  Split43.five_cover 8 (by decide) 7 6 6 false 6 4 5 [1,0,0,2,3] (.cons (g11616s0) (.cons (g11616s1) (.cons (g11616s2) (.cons (g11616s3) (.cons (g11616s4) (.cons (g11616s5) (.cons (g11616s6) (.cons (g11616s7) .nil))))))))
certRow g11617 on (Grammar43.fiveRow 7 6 6 true 6 4 5 [1,0,0,2,3]) using bank tags []
private abbrev rg11618 (i : Nat) := Split43.five 12 i 7 6 6 false 6 4 5 [1,0,0,3,2]
certRow g11618s0 on (rg11618 0) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow g11618s1 on (rg11618 1) using bank tags [3,3,3,3,3,3,3,1,28,28,1,28,28,1,1,1,1,27]
certRow g11618s2 on (rg11618 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,1]
certRow g11618s3 on (rg11618 3) using bank tags [3,3,3,3,3,13,13,13,13,44,19,6,6,28,6]
certRow g11618s4 on (rg11618 4) using bank tags [3,3,3,3,3]
certRow g11618s5 on (rg11618 5) using bank tags [3,3,28,28]
certRow g11618s6 on (rg11618 6) using bank tags [3,3,28,28,28,1]
certRow g11618s7 on (rg11618 7) using bank tags []
certRow g11618s8 on (rg11618 8) using bank tags [28]
certRow g11618s9 on (rg11618 9) using bank tags [28,28,28]
certRow g11618s10 on (rg11618 10) using bank tags [3,3,3,3]
certRow g11618s11 on (rg11618 11) using bank tags [3,3,3,3,3,28,27]
theorem g11618 : BadRow (Grammar43.fiveRow 7 6 6 false 6 4 5 [1,0,0,3,2]) :=
  Split43.five_cover 12 (by decide) 7 6 6 false 6 4 5 [1,0,0,3,2] (.cons (g11618s0) (.cons (g11618s1) (.cons (g11618s2) (.cons (g11618s3) (.cons (g11618s4) (.cons (g11618s5) (.cons (g11618s6) (.cons (g11618s7) (.cons (g11618s8) (.cons (g11618s9) (.cons (g11618s10) (.cons (g11618s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
