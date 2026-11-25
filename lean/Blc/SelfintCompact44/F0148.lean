import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf766 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,3,0,1]
certRow f766s0 on (rf766 0) using bank tags [3,3,3,28]
certRow f766s1 on (rf766 1) using bank tags [3,3,3,3,3,28,28,28,3,28]
certRow f766s2 on (rf766 2) using bank tags [3,3,3,28,3,3,3,28,3,3,28,28,28]
certRow f766s3 on (rf766 3) using bank tags [3,3,28,28,28,3,28,28,3]
certRow f766s4 on (rf766 4) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f766s5 on (rf766 5) using bank tags [28,28,28]
certRow f766s6 on (rf766 6) using bank tags [28,28]
certRow f766s7 on (rf766 7) using bank tags [18,1,16]
theorem f766 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,3,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,3,0,1] (.cons (f766s0) (.cons (f766s1) (.cons (f766s2) (.cons (f766s3) (.cons (f766s4) (.cons (f766s5) (.cons (f766s6) (.cons (f766s7) .nil))))))))
private abbrev rf767 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,3,1,0]
certRow f767s0 on (rf767 0) using bank tags [3,3,3,28]
certRow f767s1 on (rf767 1) using bank tags [3,3,3,3,3,3]
certRow f767s2 on (rf767 2) using bank tags [3,3,3,3,3,28,28,3,28,28,3,28,3,28,28]
certRow f767s3 on (rf767 3) using bank tags [3,3,28,3,3,28,28,3]
certRow f767s4 on (rf767 4) using bank tags [3,3,3,3,3,3]
certRow f767s5 on (rf767 5) using bank tags [28,28,28,28,28]
certRow f767s6 on (rf767 6) using bank tags [28,28]
certRow f767s7 on (rf767 7) using bank tags [16,16]
theorem f767 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,3,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,3,1,0] (.cons (f767s0) (.cons (f767s1) (.cons (f767s2) (.cons (f767s3) (.cons (f767s4) (.cons (f767s5) (.cons (f767s6) (.cons (f767s7) .nil))))))))
certRow f768 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,4,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,13,13,13]
private abbrev rf769 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,2,0,0,3]
certRow f769s0 on (rf769 0) using bank tags [28,28,28]
certRow f769s1 on (rf769 1) using bank tags [3,3,3,3,3,28]
certRow f769s2 on (rf769 2) using bank tags [28,28,28,28,28,28,28]
certRow f769s3 on (rf769 3) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f769s4 on (rf769 4) using bank tags [3,3,3,3,3,28,28]
certRow f769s5 on (rf769 5) using bank tags [3,3,28,28]
certRow f769s6 on (rf769 6) using bank tags [3,3,3,3,3,28,28,28,28]
certRow f769s7 on (rf769 7) using bank tags [3,3,1,19,19,19,19]
theorem f769 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,2,0,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,2,0,0,3] (.cons (f769s0) (.cons (f769s1) (.cons (f769s2) (.cons (f769s3) (.cons (f769s4) (.cons (f769s5) (.cons (f769s6) (.cons (f769s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
