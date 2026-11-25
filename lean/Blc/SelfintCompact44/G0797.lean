import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rg14618 (i : Nat) := Split43.five 12 i 8 5 4 false 4 3 6 [0,0,2,1,1,0]
certRow g14618s0 on (rg14618 0) using bank tags [1,1,6,28,28,28,35,6,19,0,19,22] except [Floor44.e4846208017882]
certRow g14618s1 on (rg14618 1) using bank tags [28,28,28,28,28,28,0,0,0] except [Floor44.e4846201005922,Floor44.e4846200978274,Floor44.e4846200929122]
certRow g14618s2 on (rg14618 2) using bank tags [28,28,28,13,13,13,13,13,13,13,13,13,13,13,13,13,1,1,1,1,1,1,1,1,1,1,35,19,19,19,6,6,6,6,6,35,29,0] except [Floor44.e4846434884666]
certRow g14618s3 on (rg14618 3) using bank tags [28,28,28,28,28,28,28,28,28,1,1,212,25,22,1,212]
certRow g14618s4 on (rg14618 4) using bank tags [6,28,28,6,28,6,28,6,28]
certRow g14618s5 on (rg14618 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,19,29,0] except [Floor44.e4846201007162]
certRow g14618s6 on (rg14618 6) using bank tags [28,28,28]
certRow g14618s7 on (rg14618 7) using bank tags []
certRow g14618s8 on (rg14618 8) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow g14618s9 on (rg14618 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,1]
certRow g14618s10 on (rg14618 10) using bank tags [19,19,19,19,19,19,19,19]
certRow g14618s11 on (rg14618 11) using bank tags [28,28]
theorem g14618 (hard : BadRow [Floor44.e4846434884666,Floor44.e4846208017882,Floor44.e4846201007162,Floor44.e4846201005922,Floor44.e4846200978274,Floor44.e4846200929122]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,2,1,1,0]) :=
  Split43.five_cover 12 (by decide) 8 5 4 false 4 3 6 [0,0,2,1,1,0] (.cons (g14618s0 (.cons (hard.get (by decide : Floor44.e4846208017882 ∈ [Floor44.e4846434884666,Floor44.e4846208017882,Floor44.e4846201007162,Floor44.e4846201005922,Floor44.e4846200978274,Floor44.e4846200929122])) .nil)) (.cons (g14618s1 (.cons (hard.get (by decide : Floor44.e4846201005922 ∈ [Floor44.e4846434884666,Floor44.e4846208017882,Floor44.e4846201007162,Floor44.e4846201005922,Floor44.e4846200978274,Floor44.e4846200929122])) (.cons (hard.get (by decide : Floor44.e4846200978274 ∈ [Floor44.e4846434884666,Floor44.e4846208017882,Floor44.e4846201007162,Floor44.e4846201005922,Floor44.e4846200978274,Floor44.e4846200929122])) (.cons (hard.get (by decide : Floor44.e4846200929122 ∈ [Floor44.e4846434884666,Floor44.e4846208017882,Floor44.e4846201007162,Floor44.e4846201005922,Floor44.e4846200978274,Floor44.e4846200929122])) .nil)))) (.cons (g14618s2 (.cons (hard.get (by decide : Floor44.e4846434884666 ∈ [Floor44.e4846434884666,Floor44.e4846208017882,Floor44.e4846201007162,Floor44.e4846201005922,Floor44.e4846200978274,Floor44.e4846200929122])) .nil)) (.cons (g14618s3) (.cons (g14618s4) (.cons (g14618s5 (.cons (hard.get (by decide : Floor44.e4846201007162 ∈ [Floor44.e4846434884666,Floor44.e4846208017882,Floor44.e4846201007162,Floor44.e4846201005922,Floor44.e4846200978274,Floor44.e4846200929122])) .nil)) (.cons (g14618s6) (.cons (g14618s7) (.cons (g14618s8) (.cons (g14618s9) (.cons (g14618s10) (.cons (g14618s11) .nil))))))))))))
certRow g14619 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,2,1,1,0]) using bank tags [14,14,14,1,1,1,57,57,57]
private abbrev rg14620 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,2,2,0,0]
certRow g14620s0 on (rg14620 0) using bank tags [28]
certRow g14620s1 on (rg14620 1) using bank tags [6,6,28]
certRow g14620s2 on (rg14620 2) using bank tags [28,28,28,28,28,1,1,1]
certRow g14620s3 on (rg14620 3) using bank tags []
certRow g14620s4 on (rg14620 4) using bank tags [1,1,28]
certRow g14620s5 on (rg14620 5) using bank tags [6,6,6,6]
certRow g14620s6 on (rg14620 6) using bank tags [11,35,11,35,28,28]
certRow g14620s7 on (rg14620 7) using bank tags [28,29,0] except [Floor44.e4846201004522]
theorem g14620 (hard : BadRow [Floor44.e4846201004522]) : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,2,2,0,0]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,2,2,0,0] (.cons (g14620s0) (.cons (g14620s1) (.cons (g14620s2) (.cons (g14620s3) (.cons (g14620s4) (.cons (g14620s5) (.cons (g14620s6) (.cons (g14620s7 (.cons (hard.get (by decide : Floor44.e4846201004522 ∈ [Floor44.e4846201004522])) .nil)) .nil))))))))
certRow g14621 on (Grammar43.fiveRow 8 5 4 true 4 3 6 [0,0,2,2,0,0]) using bank tags []
private abbrev rg14622 (i : Nat) := Split43.five 8 i 8 5 4 false 4 3 6 [0,0,3,0,0,1]
certRow g14622s0 on (rg14622 0) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow g14622s1 on (rg14622 1) using bank tags [28,28,28,28]
certRow g14622s2 on (rg14622 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,1,1,1,1,6,6,6,6,6]
certRow g14622s3 on (rg14622 3) using bank tags []
certRow g14622s4 on (rg14622 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow g14622s5 on (rg14622 5) using bank tags []
certRow g14622s6 on (rg14622 6) using bank tags [28,28,28,28,28,28]
certRow g14622s7 on (rg14622 7) using bank tags []
theorem g14622 : BadRow (Grammar43.fiveRow 8 5 4 false 4 3 6 [0,0,3,0,0,1]) :=
  Split43.five_cover 8 (by decide) 8 5 4 false 4 3 6 [0,0,3,0,0,1] (.cons (g14622s0) (.cons (g14622s1) (.cons (g14622s2) (.cons (g14622s3) (.cons (g14622s4) (.cons (g14622s5) (.cons (g14622s6) (.cons (g14622s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
