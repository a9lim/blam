import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf519 (i : Nat) := Split43.four 12 i ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,0,3,0]
certRow f519s0 on (rf519 0) using bank tags [57,57,57,6,6,6,6,6,6,0,35,15,15,32,6,6,6,6,6,22,0,22] except [Floor44.e4838381702266,Floor44.e4786842094714]
certRow f519s1 on (rf519 1) using bank tags [57,57,57,57,57,27,27,27,27,27]
certRow f519s2 on (rf519 2) using bank tags [57,57,27,27]
certRow f519s3 on (rf519 3) using bank tags [57,57,57,57,57,27,27,14,14,15]
certRow f519s4 on (rf519 4) using bank tags [57,57,57,57,57,27,27,27,27,27]
certRow f519s5 on (rf519 5) using bank tags [57,6,0,35,179,1,6,128,22,134] except [Floor44.e4838372957562]
certRow f519s6 on (rf519 6) using bank tags [57,57,57,57,57,27,27,27,27,27]
certRow f519s7 on (rf519 7) using bank tags [57,57,27,27]
certRow f519s8 on (rf519 8) using bank tags []
certRow f519s9 on (rf519 9) using bank tags [57,57,0,0] except [Floor44.e4786764237946,Floor44.e4786764215418]
certRow f519s10 on (rf519 10) using bank tags [57,57,57,57,57,14,15,1,1,1]
certRow f519s11 on (rf519 11) using bank tags []
theorem f519 (hard : BadRow [Floor44.e4838381702266,Floor44.e4838372957562,Floor44.e4786764237946,Floor44.e4786764215418,Floor44.e4786842094714]) : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,0,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,0,3,0] (.cons (f519s0 (.cons (hard.get (by decide : Floor44.e4838381702266 ∈ [Floor44.e4838381702266,Floor44.e4838372957562,Floor44.e4786764237946,Floor44.e4786764215418,Floor44.e4786842094714])) (.cons (hard.get (by decide : Floor44.e4786842094714 ∈ [Floor44.e4838381702266,Floor44.e4838372957562,Floor44.e4786764237946,Floor44.e4786764215418,Floor44.e4786842094714])) .nil))) (.cons (f519s1) (.cons (f519s2) (.cons (f519s3) (.cons (f519s4) (.cons (f519s5 (.cons (hard.get (by decide : Floor44.e4838372957562 ∈ [Floor44.e4838381702266,Floor44.e4838372957562,Floor44.e4786764237946,Floor44.e4786764215418,Floor44.e4786842094714])) .nil)) (.cons (f519s6) (.cons (f519s7) (.cons (f519s8) (.cons (f519s9 (.cons (hard.get (by decide : Floor44.e4786764237946 ∈ [Floor44.e4838381702266,Floor44.e4838372957562,Floor44.e4786764237946,Floor44.e4786764215418,Floor44.e4786842094714])) (.cons (hard.get (by decide : Floor44.e4786764215418 ∈ [Floor44.e4838381702266,Floor44.e4838372957562,Floor44.e4786764237946,Floor44.e4786764215418,Floor44.e4786842094714])) .nil))) (.cons (f519s10) (.cons (f519s11) .nil))))))))))))
private abbrev rf520 (i : Nat) := Split43.four 12 i ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,1,0,2]
certRow f520s0 on (rf520 0) using bank tags [3,3,3,3,3,3,3,57,57,35,0,20,20,20,20,20,20,20,1,1,35,0] except [Floor44.e4838381679022,Floor44.e4786842071470]
certRow f520s1 on (rf520 1) using bank tags [3,3,3,3,3,27,27,27,27,27]
certRow f520s2 on (rf520 2) using bank tags [3,3,27,27]
certRow f520s3 on (rf520 3) using bank tags [3,3,57,57,27,27,15,1]
certRow f520s4 on (rf520 4) using bank tags [3,3,3,3,3,27,27,27,27,27]
certRow f520s5 on (rf520 5) using bank tags []
certRow f520s6 on (rf520 6) using bank tags [3,3,3,3,3,3,3,57,57,27,27,27,27,27,21,21,14,15]
certRow f520s7 on (rf520 7) using bank tags []
certRow f520s8 on (rf520 8) using bank tags [57,57,57,57,57,1,1,1,0,0] except [Floor44.e4786764320366,Floor44.e4786764319662]
certRow f520s9 on (rf520 9) using bank tags []
certRow f520s10 on (rf520 10) using bank tags [3,3,57,57,57,57,57,35,185,1,1,1,1,1,1,1,22,139]
certRow f520s11 on (rf520 11) using bank tags []
theorem f520 (hard : BadRow [Floor44.e4838381679022,Floor44.e4786764320366,Floor44.e4786764319662,Floor44.e4786842071470]) : BadRow (Grammar43.fourRow ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,1,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,1,0,2] (.cons (f520s0 (.cons (hard.get (by decide : Floor44.e4838381679022 ∈ [Floor44.e4838381679022,Floor44.e4786764320366,Floor44.e4786764319662,Floor44.e4786842071470])) (.cons (hard.get (by decide : Floor44.e4786842071470 ∈ [Floor44.e4838381679022,Floor44.e4786764320366,Floor44.e4786764319662,Floor44.e4786842071470])) .nil))) (.cons (f520s1) (.cons (f520s2) (.cons (f520s3) (.cons (f520s4) (.cons (f520s5) (.cons (f520s6) (.cons (f520s7) (.cons (f520s8 (.cons (hard.get (by decide : Floor44.e4786764320366 ∈ [Floor44.e4838381679022,Floor44.e4786764320366,Floor44.e4786764319662,Floor44.e4786842071470])) (.cons (hard.get (by decide : Floor44.e4786764319662 ∈ [Floor44.e4838381679022,Floor44.e4786764320366,Floor44.e4786764319662,Floor44.e4786842071470])) .nil))) (.cons (f520s9) (.cons (f520s10) (.cons (f520s11) .nil))))))))))))
certRow f521 on (Grammar43.fourRow ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,1,1,1]) using bank tags []
certRow f522 on (Grammar43.fourRow ⟨0,3,0,3,5,4⟩ [0,0,0] [0,1,1,2,0]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,57,57,57,57,57,57,57,57,57,57,3,3,3,3,57,57,57,57,22,0,35,182,27,27,27,27,27,27,27,27,27,27,27,27,27,21,1,15,15,14,1,1,1,15,1,1,1,20,20,20,20,1,32,0,0,35,0,22,137] except [Floor44.e4838381679034,Floor44.e4786764320378,Floor44.e4786764214714,Floor44.e4786842071482]
end Blc.SelfintSingleObject.Compact44
