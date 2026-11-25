import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf690 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,0,4,1]
certRow f690s0 on (rf690 0) using bank tags []
certRow f690s1 on (rf690 1) using bank tags [28,28,28,28,28]
certRow f690s2 on (rf690 2) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f690s3 on (rf690 3) using bank tags [28,28,28,28,28,28,28]
certRow f690s4 on (rf690 4) using bank tags [28,28,28,28,28,28,28,28,28,28,1,1]
certRow f690s5 on (rf690 5) using bank tags [28,28,28,28,28,28,28,28]
certRow f690s6 on (rf690 6) using bank tags [28,28,28,28,28]
certRow f690s7 on (rf690 7) using bank tags [28,28,28,28,28,26,1,13,13,13,13,13,13,13,13,13,13,6,6,6,24,6,0] except [Floor44.e4846363263478]
theorem f690 (hard : BadRow [Floor44.e4846363263478]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,0,4,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,0,4,1] (.cons (f690s0) (.cons (f690s1) (.cons (f690s2) (.cons (f690s3) (.cons (f690s4) (.cons (f690s5) (.cons (f690s6) (.cons (f690s7 (.cons (hard.get (by decide : Floor44.e4846363263478 ∈ [Floor44.e4846363263478])) .nil)) .nil))))))))
private abbrev rf691 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,0,4]
certRow f691s0 on (rf691 0) using bank tags [28,28]
certRow f691s1 on (rf691 1) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f691s2 on (rf691 2) using bank tags [28,28,28,28,28,28,28]
certRow f691s3 on (rf691 3) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f691s4 on (rf691 4) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f691s5 on (rf691 5) using bank tags [28,28,28,28]
certRow f691s6 on (rf691 6) using bank tags [28,28,28,28,28]
certRow f691s7 on (rf691 7) using bank tags [28,28,28,28,28,28,28,26,1,1,1,13,13,13,13,13,13,13,13,13,13,6,6,19,6,19,24,24,6,119,0,19] except [Floor44.e4846363318334]
theorem f691 (hard : BadRow [Floor44.e4846363318334]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,0,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,0,4] (.cons (f691s0) (.cons (f691s1) (.cons (f691s2) (.cons (f691s3) (.cons (f691s4) (.cons (f691s5) (.cons (f691s6) (.cons (f691s7 (.cons (hard.get (by decide : Floor44.e4846363318334 ∈ [Floor44.e4846363318334])) .nil)) .nil))))))))
private abbrev rf692 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,1,3]
certRow f692s0 on (rf692 0) using bank tags [3,3,3,28,3,28,28,28,28,28,3,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f692s1 on (rf692 1) using bank tags [28]
certRow f692s2 on (rf692 2) using bank tags [3,3,28,28,28,28,28,28,28]
certRow f692s3 on (rf692 3) using bank tags [3,3,3,3,3,28,3,28,28,28,28,28,3,3,3,3,3,28,28,28,28,28,28,28,1]
certRow f692s4 on (rf692 4) using bank tags [3,3,3,3,3]
certRow f692s5 on (rf692 5) using bank tags [3,3,3,3,3,28,28]
certRow f692s6 on (rf692 6) using bank tags [3,28]
certRow f692s7 on (rf692 7) using bank tags [3,3,3,3]
certRow f692s8 on (rf692 8) using bank tags [28,28,28]
certRow f692s9 on (rf692 9) using bank tags [3,3,3,3,3,28,28,28,28,28,28]
certRow f692s10 on (rf692 10) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f692s11 on (rf692 11) using bank tags [1,13,13,13,13,13,13,6,30,18,18,6,19,6,22,35,62]
theorem f692 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,1,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,1,3] (.cons (f692s0) (.cons (f692s1) (.cons (f692s2) (.cons (f692s3) (.cons (f692s4) (.cons (f692s5) (.cons (f692s6) (.cons (f692s7) (.cons (f692s8) (.cons (f692s9) (.cons (f692s10) (.cons (f692s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
