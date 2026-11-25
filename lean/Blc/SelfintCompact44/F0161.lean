import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf811 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,1,2,1,0]
certRow f811s0 on (rf811 0) using bank tags [3,3,3,3]
certRow f811s1 on (rf811 1) using bank tags [3,3,3,3,3]
certRow f811s2 on (rf811 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow f811s3 on (rf811 3) using bank tags [3,3,3,3,3,3,3,3]
certRow f811s4 on (rf811 4) using bank tags []
certRow f811s5 on (rf811 5) using bank tags [3,28,28,28,28,28,28,28,28]
certRow f811s6 on (rf811 6) using bank tags [3,3]
certRow f811s7 on (rf811 7) using bank tags []
theorem f811 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,1,2,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,1,2,1,0] (.cons (f811s0) (.cons (f811s1) (.cons (f811s2) (.cons (f811s3) (.cons (f811s4) (.cons (f811s5) (.cons (f811s6) (.cons (f811s7) .nil))))))))
certRow f812 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,1,3,0,0]) using bank tags [3,3,3,3,3,3,28,28,28,3,28,28,28,28,28,28,28]
certRow f813 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,2,0,0,2]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
private abbrev rf814 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,2,0,1,1]
certRow f814s0 on (rf814 0) using bank tags [3]
certRow f814s1 on (rf814 1) using bank tags [3,3,3,3,3,3,3,3,3,3,28]
certRow f814s2 on (rf814 2) using bank tags [3,3,3,3,3,3,3,3,3,28]
certRow f814s3 on (rf814 3) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f814s4 on (rf814 4) using bank tags [3,3,3,3,3,28,28]
certRow f814s5 on (rf814 5) using bank tags [3,3,3,28,28,28,28]
certRow f814s6 on (rf814 6) using bank tags [3,3,28,28,28]
certRow f814s7 on (rf814 7) using bank tags [3,3,28,28]
theorem f814 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,2,0,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,2,0,1,1] (.cons (f814s0) (.cons (f814s1) (.cons (f814s2) (.cons (f814s3) (.cons (f814s4) (.cons (f814s5) (.cons (f814s6) (.cons (f814s7) .nil))))))))
certRow f815 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,2,0,2,0]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28]
private abbrev rf816 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,2,1,0,1]
certRow f816s0 on (rf816 0) using bank tags [3,3,3,3]
certRow f816s1 on (rf816 1) using bank tags [3,3,3,3,3,3,3,3,28]
certRow f816s2 on (rf816 2) using bank tags [3,3,3,3,3,3,3,3,28,28]
certRow f816s3 on (rf816 3) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f816s4 on (rf816 4) using bank tags [3,3,3,3,3,28,28]
certRow f816s5 on (rf816 5) using bank tags [3,3,28,28,28]
certRow f816s6 on (rf816 6) using bank tags [3,3,28,28]
certRow f816s7 on (rf816 7) using bank tags [28,28]
theorem f816 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,2,1,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,2,1,0,1] (.cons (f816s0) (.cons (f816s1) (.cons (f816s2) (.cons (f816s3) (.cons (f816s4) (.cons (f816s5) (.cons (f816s6) (.cons (f816s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
