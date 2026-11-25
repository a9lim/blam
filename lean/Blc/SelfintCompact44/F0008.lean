import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf37 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,1,2,0]
certRow f37s0 on (rf37 0) using bank tags []
certRow f37s1 on (rf37 1) using bank tags [6,6,6,6,6,6,6,6,22]
certRow f37s2 on (rf37 2) using bank tags [6,6,6,6,6]
certRow f37s3 on (rf37 3) using bank tags [6,6,6,6,0,19,19,19,19,19,19,19,19] except [Floor44.e4846341705338]
certRow f37s4 on (rf37 4) using bank tags [6,6,6,6,6]
certRow f37s5 on (rf37 5) using bank tags [6,6,6,6,6,6,6,6,6]
certRow f37s6 on (rf37 6) using bank tags []
certRow f37s7 on (rf37 7) using bank tags [1,1,1,1,1,1,1,1,14]
theorem f37 (hard : BadRow [Floor44.e4846341705338]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,1,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,1,2,0] (.cons (f37s0) (.cons (f37s1) (.cons (f37s2) (.cons (f37s3 (.cons (hard.get (by decide : Floor44.e4846341705338 ∈ [Floor44.e4846341705338])) .nil)) (.cons (f37s4) (.cons (f37s5) (.cons (f37s6) (.cons (f37s7) .nil))))))))
private abbrev rf38 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,2,0,1]
certRow f38s0 on (rf38 0) using bank tags [1,1,1]
certRow f38s1 on (rf38 1) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow f38s2 on (rf38 2) using bank tags [6,6,6,6,6]
certRow f38s3 on (rf38 3) using bank tags [6,6,6,6,0,0,19,35,19,19,19,19,19,35,19,19,19,19] except [Floor44.e4846341705526,Floor44.e4846341704662]
certRow f38s4 on (rf38 4) using bank tags [6,6,6,6,6]
certRow f38s5 on (rf38 5) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow f38s6 on (rf38 6) using bank tags []
certRow f38s7 on (rf38 7) using bank tags [1,15,1,1,1,1,30,1,1,1,1,1,1,1]
theorem f38 (hard : BadRow [Floor44.e4846341705526,Floor44.e4846341704662]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,2,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,2,0,1] (.cons (f38s0) (.cons (f38s1) (.cons (f38s2) (.cons (f38s3 (.cons (hard.get (by decide : Floor44.e4846341705526 ∈ [Floor44.e4846341705526,Floor44.e4846341704662])) (.cons (hard.get (by decide : Floor44.e4846341704662 ∈ [Floor44.e4846341705526,Floor44.e4846341704662])) .nil))) (.cons (f38s4) (.cons (f38s5) (.cons (f38s6) (.cons (f38s7) .nil))))))))
private abbrev rf39 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,2,1,0]
certRow f39s0 on (rf39 0) using bank tags []
certRow f39s1 on (rf39 1) using bank tags [6,6,6,6,6,6,6,6]
certRow f39s2 on (rf39 2) using bank tags [6,6,6,6,6]
certRow f39s3 on (rf39 3) using bank tags [6,6,6,0,19,19,19,19,19,19,19] except [Floor44.e4846341705530]
certRow f39s4 on (rf39 4) using bank tags [6,6,6,6,6]
certRow f39s5 on (rf39 5) using bank tags [6,6,6,6,6,6,6,6]
certRow f39s6 on (rf39 6) using bank tags []
certRow f39s7 on (rf39 7) using bank tags [1,15,1,1,1,1,1,1]
theorem f39 (hard : BadRow [Floor44.e4846341705530]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,2,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,2,1,0] (.cons (f39s0) (.cons (f39s1) (.cons (f39s2) (.cons (f39s3 (.cons (hard.get (by decide : Floor44.e4846341705530 ∈ [Floor44.e4846341705530])) .nil)) (.cons (f39s4) (.cons (f39s5) (.cons (f39s6) (.cons (f39s7) .nil))))))))
certRow f40 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,2,0,0,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
