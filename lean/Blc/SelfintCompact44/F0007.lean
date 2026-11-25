import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf33 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,0,1,2]
certRow f33s0 on (rf33 0) using bank tags []
certRow f33s1 on (rf33 1) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,15]
certRow f33s2 on (rf33 2) using bank tags [6,6,6,6,6]
certRow f33s3 on (rf33 3) using bank tags [6,6,6,6,0,0,35,35,35,19,19,35,19,35,35,19,35,19] except [Floor44.e4846341704942,Floor44.e4846341704558]
certRow f33s4 on (rf33 4) using bank tags [6,6,6,6,6]
certRow f33s5 on (rf33 5) using bank tags [6,6,6,6,15,6,6,6,6,6,6,6,6,6]
certRow f33s6 on (rf33 6) using bank tags []
certRow f33s7 on (rf33 7) using bank tags [1,1,1,1,1,1,1,1,14,1,1,14,14,14]
theorem f33 (hard : BadRow [Floor44.e4846341704942,Floor44.e4846341704558]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,0,1,2] (.cons (f33s0) (.cons (f33s1) (.cons (f33s2) (.cons (f33s3 (.cons (hard.get (by decide : Floor44.e4846341704942 ∈ [Floor44.e4846341704942,Floor44.e4846341704558])) (.cons (hard.get (by decide : Floor44.e4846341704558 ∈ [Floor44.e4846341704942,Floor44.e4846341704558])) .nil))) (.cons (f33s4) (.cons (f33s5) (.cons (f33s6) (.cons (f33s7) .nil))))))))
private abbrev rf34 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,0,2,1]
certRow f34s0 on (rf34 0) using bank tags [1,1,1,1,1]
certRow f34s1 on (rf34 1) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6]
certRow f34s2 on (rf34 2) using bank tags [6,6,6,6,6]
certRow f34s3 on (rf34 3) using bank tags [6,6,6,0,0,35,35,35,19,35,35,35,19,35,19] except [Floor44.e4846341704950,Floor44.e4846341704566]
certRow f34s4 on (rf34 4) using bank tags [6,6,6]
certRow f34s5 on (rf34 5) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,6]
certRow f34s6 on (rf34 6) using bank tags []
certRow f34s7 on (rf34 7) using bank tags [1,1,1,1,1,1,1,1,1,1,1,14]
theorem f34 (hard : BadRow [Floor44.e4846341704950,Floor44.e4846341704566]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,0,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,0,2,1] (.cons (f34s0) (.cons (f34s1) (.cons (f34s2) (.cons (f34s3 (.cons (hard.get (by decide : Floor44.e4846341704950 ∈ [Floor44.e4846341704950,Floor44.e4846341704566])) (.cons (hard.get (by decide : Floor44.e4846341704566 ∈ [Floor44.e4846341704950,Floor44.e4846341704566])) .nil))) (.cons (f34s4) (.cons (f34s5) (.cons (f34s6) (.cons (f34s7) .nil))))))))
private abbrev rf35 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,1,0,2]
certRow f35s0 on (rf35 0) using bank tags []
certRow f35s1 on (rf35 1) using bank tags [6,6,6,6,6,6,6,6,6,6,6,6,6,15]
certRow f35s2 on (rf35 2) using bank tags [6,6,6,6,6]
certRow f35s3 on (rf35 3) using bank tags [6,6,6,6,0,0,19,35,19,19,19,19,19,0,19,19,19,19] except [Floor44.e4846341705326,Floor44.e4846341704622,Floor44.e4846339912622]
certRow f35s4 on (rf35 4) using bank tags [6,6,6,6,6]
certRow f35s5 on (rf35 5) using bank tags [6,6,6,6,15,6,6,6,6,6,6,6,6,6]
certRow f35s6 on (rf35 6) using bank tags []
certRow f35s7 on (rf35 7) using bank tags [1,1,1,1,1,1,1,1,14,1,1,14,14,14]
theorem f35 (hard : BadRow [Floor44.e4846341705326,Floor44.e4846341704622,Floor44.e4846339912622]) : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,1,0,2] (.cons (f35s0) (.cons (f35s1) (.cons (f35s2) (.cons (f35s3 (.cons (hard.get (by decide : Floor44.e4846341705326 ∈ [Floor44.e4846341705326,Floor44.e4846341704622,Floor44.e4846339912622])) (.cons (hard.get (by decide : Floor44.e4846341704622 ∈ [Floor44.e4846341705326,Floor44.e4846341704622,Floor44.e4846339912622])) (.cons (hard.get (by decide : Floor44.e4846339912622 ∈ [Floor44.e4846341705326,Floor44.e4846341704622,Floor44.e4846339912622])) .nil)))) (.cons (f35s4) (.cons (f35s5) (.cons (f35s6) (.cons (f35s7) .nil))))))))
certRow f36 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,1,1,1,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
end Blc.SelfintSingleObject.Compact44
