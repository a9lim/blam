import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf6 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,0,2,1,1,2]
certRow f6s0 on (rf6 0) using bank tags []
certRow f6s1 on (rf6 1) using bank tags [6,6,6,6,6,6,6,6,6]
certRow f6s2 on (rf6 2) using bank tags []
certRow f6s3 on (rf6 3) using bank tags [6,6,6,6,1,1,1,1,1,1,1,1,1]
certRow f6s4 on (rf6 4) using bank tags [6,6,6,22,6]
certRow f6s5 on (rf6 5) using bank tags [6,6,6,6,6,6,6,22,6,6,6,6,22,6]
certRow f6s6 on (rf6 6) using bank tags []
certRow f6s7 on (rf6 7) using bank tags [1,1,1,1,1,14,1,1,1]
theorem f6 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,0,2,1,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,0,2,1,1,2] (.cons (f6s0) (.cons (f6s1) (.cons (f6s2) (.cons (f6s3) (.cons (f6s4) (.cons (f6s5) (.cons (f6s6) (.cons (f6s7) .nil))))))))
private abbrev rf7 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,0,2,1,2,1]
certRow f7s0 on (rf7 0) using bank tags [1,1,1]
certRow f7s1 on (rf7 1) using bank tags [6,6,6,6,6,6,6,6]
certRow f7s2 on (rf7 2) using bank tags []
certRow f7s3 on (rf7 3) using bank tags [6,6,6,6,1,1,1,1,1,1,1,1]
certRow f7s4 on (rf7 4) using bank tags [6,22,6]
certRow f7s5 on (rf7 5) using bank tags [6,6,6,6,6,6,6,22,6,6,6,6,22,6]
certRow f7s6 on (rf7 6) using bank tags []
certRow f7s7 on (rf7 7) using bank tags [1,1,1,1,1,1,1,1]
theorem f7 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,0,2,1,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,0,2,1,2,1] (.cons (f7s0) (.cons (f7s1) (.cons (f7s2) (.cons (f7s3) (.cons (f7s4) (.cons (f7s5) (.cons (f7s6) (.cons (f7s7) .nil))))))))
certRow f8 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,0,2,2,0,2]) using bank tags []
private abbrev rf9 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,0,2,2,1,1]
certRow f9s0 on (rf9 0) using bank tags [1,1,1]
certRow f9s1 on (rf9 1) using bank tags [22,22,22,22,22,22,6,22,6]
certRow f9s2 on (rf9 2) using bank tags []
certRow f9s3 on (rf9 3) using bank tags [6,6,22,22,1,1,1,1,1,1,1,1,1]
certRow f9s4 on (rf9 4) using bank tags [22,35,6,22,22]
certRow f9s5 on (rf9 5) using bank tags [22,22,6,22,6,6,6,22,22,22,35,6,22,6]
certRow f9s6 on (rf9 6) using bank tags []
certRow f9s7 on (rf9 7) using bank tags [1,14,1,1,31,1,1,1,1]
theorem f9 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,0,2,2,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,0,2,2,1,1] (.cons (f9s0) (.cons (f9s1) (.cons (f9s2) (.cons (f9s3) (.cons (f9s4) (.cons (f9s5) (.cons (f9s6) (.cons (f9s7) .nil))))))))
certRow f10 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,0,2,2,2,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
