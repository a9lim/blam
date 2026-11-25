import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf797 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,0,2,0,2]
certRow f797s0 on (rf797 0) using bank tags [3,3]
certRow f797s1 on (rf797 1) using bank tags [3,3,3,3,3,28,28]
certRow f797s2 on (rf797 2) using bank tags [3,3,3,28,28]
certRow f797s3 on (rf797 3) using bank tags [3,3,3,3,3,3,3]
certRow f797s4 on (rf797 4) using bank tags [28,28,28]
certRow f797s5 on (rf797 5) using bank tags [3,3]
certRow f797s6 on (rf797 6) using bank tags []
certRow f797s7 on (rf797 7) using bank tags [3,3]
theorem f797 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,2,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,0,2,0,2] (.cons (f797s0) (.cons (f797s1) (.cons (f797s2) (.cons (f797s3) (.cons (f797s4) (.cons (f797s5) (.cons (f797s6) (.cons (f797s7) .nil))))))))
private abbrev rf798 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,0,2,1,1]
certRow f798s0 on (rf798 0) using bank tags [3,3]
certRow f798s1 on (rf798 1) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow f798s2 on (rf798 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f798s3 on (rf798 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f798s4 on (rf798 4) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f798s5 on (rf798 5) using bank tags [3,3,3,3,3,28,28,28,28,28,28]
certRow f798s6 on (rf798 6) using bank tags []
certRow f798s7 on (rf798 7) using bank tags [3,3]
theorem f798 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,2,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,0,2,1,1] (.cons (f798s0) (.cons (f798s1) (.cons (f798s2) (.cons (f798s3) (.cons (f798s4) (.cons (f798s5) (.cons (f798s6) (.cons (f798s7) .nil))))))))
certRow f799 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,2,2,0]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
private abbrev rf800 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,0,3,0,1]
certRow f800s0 on (rf800 0) using bank tags [3,3]
certRow f800s1 on (rf800 1) using bank tags [28,28,28,28,28]
certRow f800s2 on (rf800 2) using bank tags [3,3,3,3,3,28,28,28,28]
certRow f800s3 on (rf800 3) using bank tags [28,28,28,3,28,28,3]
certRow f800s4 on (rf800 4) using bank tags []
certRow f800s5 on (rf800 5) using bank tags [28,28,28,28,28]
certRow f800s6 on (rf800 6) using bank tags [3,3,3,3,3,3,3]
certRow f800s7 on (rf800 7) using bank tags [28,28]
theorem f800 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,3,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,0,3,0,1] (.cons (f800s0) (.cons (f800s1) (.cons (f800s2) (.cons (f800s3) (.cons (f800s4) (.cons (f800s5) (.cons (f800s6) (.cons (f800s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
