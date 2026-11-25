import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf693 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,2,2]
certRow f693s0 on (rf693 0) using bank tags [3,3,3,28,28,28,28,28,28]
certRow f693s1 on (rf693 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f693s2 on (rf693 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28]
certRow f693s3 on (rf693 3) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,26,1]
certRow f693s4 on (rf693 4) using bank tags [3,3,3,3,3]
certRow f693s5 on (rf693 5) using bank tags [3,3,3,28,28,28]
certRow f693s6 on (rf693 6) using bank tags [1]
certRow f693s7 on (rf693 7) using bank tags [3,3]
certRow f693s8 on (rf693 8) using bank tags [3,3,3,28,28]
certRow f693s9 on (rf693 9) using bank tags [3,3,3,3,3,28,28,28]
certRow f693s10 on (rf693 10) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f693s11 on (rf693 11) using bank tags [28,28,28,1,1,77,19,78,19,18,6,18,61,19,6,35,0] except [Floor44.e4846363271406]
theorem f693 (hard : BadRow [Floor44.e4846363271406]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,2,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,2,2] (.cons (f693s0) (.cons (f693s1) (.cons (f693s2) (.cons (f693s3) (.cons (f693s4) (.cons (f693s5) (.cons (f693s6) (.cons (f693s7) (.cons (f693s8) (.cons (f693s9) (.cons (f693s10) (.cons (f693s11 (.cons (hard.get (by decide : Floor44.e4846363271406 ∈ [Floor44.e4846363271406])) .nil)) .nil))))))))))))
private abbrev rf694 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,3,1]
certRow f694s0 on (rf694 0) using bank tags [3,3,3,28,28,3,28,28,3,28,3,28,28,28,28,28]
certRow f694s1 on (rf694 1) using bank tags [28,28,28,28,28,28,28,28]
certRow f694s2 on (rf694 2) using bank tags [3,3,28,28,28,28]
certRow f694s3 on (rf694 3) using bank tags [3,3,3,3,3,28,28,3,28,28,3,28,3,3,3,3,3,3,28,28,28,28]
certRow f694s4 on (rf694 4) using bank tags [3,3,3,3,3]
certRow f694s5 on (rf694 5) using bank tags [3,3,3,28,28,3,28]
certRow f694s6 on (rf694 6) using bank tags [3,28,28]
certRow f694s7 on (rf694 7) using bank tags [3,28,3,28]
certRow f694s8 on (rf694 8) using bank tags [28,28,28,1]
certRow f694s9 on (rf694 9) using bank tags [28,28,28,3,28,28,28]
certRow f694s10 on (rf694 10) using bank tags [3,3,3,3,3,28,3,3,28,3,3,28,28,28,28,45]
certRow f694s11 on (rf694 11) using bank tags [13,13,13,13,13,145,6,18,6,61,62]
theorem f694 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,3,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,1,3,1] (.cons (f694s0) (.cons (f694s1) (.cons (f694s2) (.cons (f694s3) (.cons (f694s4) (.cons (f694s5) (.cons (f694s6) (.cons (f694s7) (.cons (f694s8) (.cons (f694s9) (.cons (f694s10) (.cons (f694s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
