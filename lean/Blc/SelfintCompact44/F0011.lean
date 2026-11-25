import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf49 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,0,2,2]
certRow f49s0 on (rf49 0) using bank tags []
certRow f49s1 on (rf49 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f49s2 on (rf49 2) using bank tags [1,1,1,1,1]
certRow f49s3 on (rf49 3) using bank tags [1,1,1,1,1,1,1,1,1]
certRow f49s4 on (rf49 4) using bank tags [1,1,1,1,1]
certRow f49s5 on (rf49 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f49s6 on (rf49 6) using bank tags []
certRow f49s7 on (rf49 7) using bank tags [35,35,35,35,35,6,6,35,6,35,35,6,35,6,6,6,6,6,6]
theorem f49 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,0,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,0,2,2] (.cons (f49s0) (.cons (f49s1) (.cons (f49s2) (.cons (f49s3) (.cons (f49s4) (.cons (f49s5) (.cons (f49s6) (.cons (f49s7) .nil))))))))
private abbrev rf50 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,1,1,2]
certRow f50s0 on (rf50 0) using bank tags []
certRow f50s1 on (rf50 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f50s2 on (rf50 2) using bank tags [28,28,28,28,28]
certRow f50s3 on (rf50 3) using bank tags [28,28,28,28]
certRow f50s4 on (rf50 4) using bank tags [28,28,28,28,28]
certRow f50s5 on (rf50 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f50s6 on (rf50 6) using bank tags []
certRow f50s7 on (rf50 7) using bank tags [6,6,6,6,6,6,6,6,6]
theorem f50 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,1,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,1,1,2] (.cons (f50s0) (.cons (f50s1) (.cons (f50s2) (.cons (f50s3) (.cons (f50s4) (.cons (f50s5) (.cons (f50s6) (.cons (f50s7) .nil))))))))
private abbrev rf51 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,1,2,1]
certRow f51s0 on (rf51 0) using bank tags [6,6,6]
certRow f51s1 on (rf51 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f51s2 on (rf51 2) using bank tags [28,28,28,28,28]
certRow f51s3 on (rf51 3) using bank tags [28,28,28,28]
certRow f51s4 on (rf51 4) using bank tags [28,28,28,28,28]
certRow f51s5 on (rf51 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f51s6 on (rf51 6) using bank tags []
certRow f51s7 on (rf51 7) using bank tags [6,6,6,6,6,6,6,6,6]
theorem f51 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,1,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,1,2,1] (.cons (f51s0) (.cons (f51s1) (.cons (f51s2) (.cons (f51s3) (.cons (f51s4) (.cons (f51s5) (.cons (f51s6) (.cons (f51s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
