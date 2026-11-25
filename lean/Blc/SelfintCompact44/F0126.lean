import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf699 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,2,3,0]
certRow f699s0 on (rf699 0) using bank tags [28,28,28,28]
certRow f699s1 on (rf699 1) using bank tags [3,28]
certRow f699s2 on (rf699 2) using bank tags [3,3,3,3,3,28,28,28,28,3,28]
certRow f699s3 on (rf699 3) using bank tags [3,28,45]
certRow f699s4 on (rf699 4) using bank tags [3,3,28,3,3]
certRow f699s5 on (rf699 5) using bank tags [3,28,28,28,28,28,28,28]
certRow f699s6 on (rf699 6) using bank tags [28]
certRow f699s7 on (rf699 7) using bank tags [3,3,3,28,13,82]
theorem f699 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,2,3,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,2,3,0] (.cons (f699s0) (.cons (f699s1) (.cons (f699s2) (.cons (f699s3) (.cons (f699s4) (.cons (f699s5) (.cons (f699s6) (.cons (f699s7) .nil))))))))
private abbrev rf700 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,3,0,2]
certRow f700s0 on (rf700 0) using bank tags [3,3,28]
certRow f700s1 on (rf700 1) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f700s2 on (rf700 2) using bank tags [3,28,3,3,28,3,3,28,28,28,28,28,28,28]
certRow f700s3 on (rf700 3) using bank tags [3,28,28,28,3,28,28,3,78,22]
certRow f700s4 on (rf700 4) using bank tags [3,3,28,28,28,3,28,28,3,3,3,28,28,28,28]
certRow f700s5 on (rf700 5) using bank tags [28,28,28,28,28,28]
certRow f700s6 on (rf700 6) using bank tags [28,28]
certRow f700s7 on (rf700 7) using bank tags [28,28,3,3,3,3,3,3,28,28,28,28,13,13,13,13,13,6,16,6,241,6,31]
theorem f700 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,3,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,3,0,2] (.cons (f700s0) (.cons (f700s1) (.cons (f700s2) (.cons (f700s3) (.cons (f700s4) (.cons (f700s5) (.cons (f700s6) (.cons (f700s7) .nil))))))))
private abbrev rf701 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,3,1,1]
certRow f701s0 on (rf701 0) using bank tags [3,3,28,28,28,28,28,3,28,28,28,28,28,28,28]
certRow f701s1 on (rf701 1) using bank tags [28,28,28,28,28,28]
certRow f701s2 on (rf701 2) using bank tags [3,3,28,28,28]
certRow f701s3 on (rf701 3) using bank tags [3,3,3,3,28,28,28,28,28,3,28,28,3,3,3,28,28,28]
certRow f701s4 on (rf701 4) using bank tags [3,3,3,3,3]
certRow f701s5 on (rf701 5) using bank tags [3,3,28,28,28,28]
certRow f701s6 on (rf701 6) using bank tags [28]
certRow f701s7 on (rf701 7) using bank tags [28,28,28]
certRow f701s8 on (rf701 8) using bank tags [3,3,3,28]
certRow f701s9 on (rf701 9) using bank tags [28,28,28,3,28,28,28,28]
certRow f701s10 on (rf701 10) using bank tags [3,3,3,28,28,3,3,28,28,28,28,3,3,3,28,28,65]
certRow f701s11 on (rf701 11) using bank tags [13,13,13,13,13,13,13,0,18,61,0,6] except [Floor44.e4846339783110,Floor44.e4846363146694]
theorem f701 (hard : BadRow [Floor44.e4846339783110,Floor44.e4846363146694]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,3,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,3,1,1] (.cons (f701s0) (.cons (f701s1) (.cons (f701s2) (.cons (f701s3) (.cons (f701s4) (.cons (f701s5) (.cons (f701s6) (.cons (f701s7) (.cons (f701s8) (.cons (f701s9) (.cons (f701s10) (.cons (f701s11 (.cons (hard.get (by decide : Floor44.e4846339783110 ∈ [Floor44.e4846339783110,Floor44.e4846363146694])) (.cons (hard.get (by decide : Floor44.e4846363146694 ∈ [Floor44.e4846339783110,Floor44.e4846363146694])) .nil))) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
