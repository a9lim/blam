import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf74 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,2,1,0]
certRow f74s0 on (rf74 0) using bank tags []
certRow f74s1 on (rf74 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f74s2 on (rf74 2) using bank tags [28,28,28,28,28]
certRow f74s3 on (rf74 3) using bank tags [28,28,28,28,19,19,19,19]
certRow f74s4 on (rf74 4) using bank tags [28,28,28,28,28]
certRow f74s5 on (rf74 5) using bank tags []
certRow f74s6 on (rf74 6) using bank tags []
certRow f74s7 on (rf74 7) using bank tags [1,1,1,1,1,6,6,1,1,35,35,35,35,19,19,19]
theorem f74 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,2,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,2,1,0] (.cons (f74s0) (.cons (f74s1) (.cons (f74s2) (.cons (f74s3) (.cons (f74s4) (.cons (f74s5) (.cons (f74s6) (.cons (f74s7) .nil))))))))
private abbrev rf75 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,0,0,2]
certRow f75s0 on (rf75 0) using bank tags []
certRow f75s1 on (rf75 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f75s2 on (rf75 2) using bank tags [1,1,1,1,1]
certRow f75s3 on (rf75 3) using bank tags [1,1,1,1]
certRow f75s4 on (rf75 4) using bank tags [1,1,1,1,1]
certRow f75s5 on (rf75 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f75s6 on (rf75 6) using bank tags []
certRow f75s7 on (rf75 7) using bank tags [1,1,1,1,1,6,6,6,6,1,1,1,1,1]
theorem f75 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,0,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,0,0,2] (.cons (f75s0) (.cons (f75s1) (.cons (f75s2) (.cons (f75s3) (.cons (f75s4) (.cons (f75s5) (.cons (f75s6) (.cons (f75s7) .nil))))))))
private abbrev rf76 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,0,1,1]
certRow f76s0 on (rf76 0) using bank tags [1,1,1,1,1,35,19,19,19,1]
certRow f76s1 on (rf76 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f76s2 on (rf76 2) using bank tags [28,28,28,28,28]
certRow f76s3 on (rf76 3) using bank tags [28,28,28,28,19,19,19,19,19]
certRow f76s4 on (rf76 4) using bank tags [28,28,28,28,28,1]
certRow f76s5 on (rf76 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f76s6 on (rf76 6) using bank tags []
certRow f76s7 on (rf76 7) using bank tags [1,1,1,1,1,6,6,1,1,1,1,1,1,1,35,35,19,35,19,35,19]
theorem f76 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,0,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,2,0,1,1] (.cons (f76s0) (.cons (f76s1) (.cons (f76s2) (.cons (f76s3) (.cons (f76s4) (.cons (f76s5) (.cons (f76s6) (.cons (f76s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
