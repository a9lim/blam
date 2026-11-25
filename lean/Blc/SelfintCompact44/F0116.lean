import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf674 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,1,4,1]
certRow f674s0 on (rf674 0) using bank tags []
certRow f674s1 on (rf674 1) using bank tags [28,28,28,19]
certRow f674s2 on (rf674 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow f674s3 on (rf674 3) using bank tags [28,28,28,28,28,28,28]
certRow f674s4 on (rf674 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,1]
certRow f674s5 on (rf674 5) using bank tags [28,28,28,28,28,28,28,28]
certRow f674s6 on (rf674 6) using bank tags [28,28,28]
certRow f674s7 on (rf674 7) using bank tags [28,28,28,28,28,13,13,13,13,13,13,13,13,13,1,1,1,6]
theorem f674 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,1,4,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,1,4,1] (.cons (f674s0) (.cons (f674s1) (.cons (f674s2) (.cons (f674s3) (.cons (f674s4) (.cons (f674s5) (.cons (f674s6) (.cons (f674s7) .nil))))))))
private abbrev rf675 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,0,4]
certRow f675s0 on (rf675 0) using bank tags []
certRow f675s1 on (rf675 1) using bank tags [28,28,28,28,28,28,28,28,28,28,19,19,19,19]
certRow f675s2 on (rf675 2) using bank tags [28,28,28,28]
certRow f675s3 on (rf675 3) using bank tags [28,28,28,28,28,28,28]
certRow f675s4 on (rf675 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f675s5 on (rf675 5) using bank tags [28,28]
certRow f675s6 on (rf675 6) using bank tags []
certRow f675s7 on (rf675 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,13,13,13,13,13,111,26,22,22,22,13,13,6,6,6,6,6,119]
theorem f675 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,0,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,0,4] (.cons (f675s0) (.cons (f675s1) (.cons (f675s2) (.cons (f675s3) (.cons (f675s4) (.cons (f675s5) (.cons (f675s6) (.cons (f675s7) .nil))))))))
private abbrev rf676 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,1,3]
certRow f676s0 on (rf676 0) using bank tags [3,3,3,28,3,3,28,28,3,3,28,28,28,28,28]
certRow f676s1 on (rf676 1) using bank tags []
certRow f676s2 on (rf676 2) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f676s3 on (rf676 3) using bank tags [3,3,28,3,28,3,3,28,28,28,28,3,3,28,3,3,3,28,28,3,3,28,28,28,28,28,28,28,28,28,3,3,28,28]
certRow f676s4 on (rf676 4) using bank tags [1]
certRow f676s5 on (rf676 5) using bank tags [3,3,28,28]
certRow f676s6 on (rf676 6) using bank tags [3,3]
certRow f676s7 on (rf676 7) using bank tags [3,3]
certRow f676s8 on (rf676 8) using bank tags [28,28,28,28,28,28]
certRow f676s9 on (rf676 9) using bank tags [3,3,3,3,3,28,28,28,28,19,19]
certRow f676s10 on (rf676 10) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f676s11 on (rf676 11) using bank tags [28,28,28,28,28,3,3,28,28,26,13,13,22,22,13,26,1,1,1,1,1,1,1,1,58,65,22,35]
theorem f676 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,1,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,1,3] (.cons (f676s0) (.cons (f676s1) (.cons (f676s2) (.cons (f676s3) (.cons (f676s4) (.cons (f676s5) (.cons (f676s6) (.cons (f676s7) (.cons (f676s8) (.cons (f676s9) (.cons (f676s10) (.cons (f676s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
