import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf702 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,3,2,0]
certRow f702s0 on (rf702 0) using bank tags [3,3,28]
certRow f702s1 on (rf702 1) using bank tags [3,28]
certRow f702s2 on (rf702 2) using bank tags [3,3,28,28,28,3,3,28,3,28,28,28,28,28]
certRow f702s3 on (rf702 3) using bank tags [28,3,78]
certRow f702s4 on (rf702 4) using bank tags [3,28,3,3,3,28,65]
certRow f702s5 on (rf702 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f702s6 on (rf702 6) using bank tags [28]
certRow f702s7 on (rf702 7) using bank tags [3,3,3,28,28,13,16,18]
theorem f702 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,3,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,3,2,0] (.cons (f702s0) (.cons (f702s1) (.cons (f702s2) (.cons (f702s3) (.cons (f702s4) (.cons (f702s5) (.cons (f702s6) (.cons (f702s7) .nil))))))))
private abbrev rf703 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,4,0,1]
certRow f703s0 on (rf703 0) using bank tags [28,28,28]
certRow f703s1 on (rf703 1) using bank tags [28,28,28,28,28]
certRow f703s2 on (rf703 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow f703s3 on (rf703 3) using bank tags [28,28,28,28]
certRow f703s4 on (rf703 4) using bank tags [28,28,28,28,28,28,28]
certRow f703s5 on (rf703 5) using bank tags [28,28,28,28]
certRow f703s6 on (rf703 6) using bank tags [28,28,28,28,28]
certRow f703s7 on (rf703 7) using bank tags [28,28,13,13,13,13,13,13,13,58,102,24,24]
theorem f703 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,4,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,4,0,1] (.cons (f703s0) (.cons (f703s1) (.cons (f703s2) (.cons (f703s3) (.cons (f703s4) (.cons (f703s5) (.cons (f703s6) (.cons (f703s7) .nil))))))))
private abbrev rf704 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,1,4,1,0]
certRow f704s0 on (rf704 0) using bank tags [28,28,28]
certRow f704s1 on (rf704 1) using bank tags [28,28,28,28]
certRow f704s2 on (rf704 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow f704s3 on (rf704 3) using bank tags [28,28,28,28]
certRow f704s4 on (rf704 4) using bank tags [28,28,28,28,28,18]
certRow f704s5 on (rf704 5) using bank tags [28,28,28]
certRow f704s6 on (rf704 6) using bank tags [28,28,28]
certRow f704s7 on (rf704 7) using bank tags [28,13,13,13,13,13,58,24]
theorem f704 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,1,4,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,1,4,1,0] (.cons (f704s0) (.cons (f704s1) (.cons (f704s2) (.cons (f704s3) (.cons (f704s4) (.cons (f704s5) (.cons (f704s6) (.cons (f704s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
