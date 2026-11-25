import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1174 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,4,1,1]
certRow f1174s0 on (rf1174 0) using bank tags [3]
certRow f1174s1 on (rf1174 1) using bank tags [3,3,3,3]
certRow f1174s2 on (rf1174 2) using bank tags [3,3,3,3,3,3,3]
certRow f1174s3 on (rf1174 3) using bank tags [3,3,3]
certRow f1174s4 on (rf1174 4) using bank tags [3,3,3]
certRow f1174s5 on (rf1174 5) using bank tags [3,3]
certRow f1174s6 on (rf1174 6) using bank tags []
certRow f1174s7 on (rf1174 7) using bank tags []
certRow f1174s8 on (rf1174 8) using bank tags []
certRow f1174s9 on (rf1174 9) using bank tags [3,3]
certRow f1174s10 on (rf1174 10) using bank tags [3]
certRow f1174s11 on (rf1174 11) using bank tags [3]
theorem f1174 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,4,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,4,1,1] (.cons (f1174s0) (.cons (f1174s1) (.cons (f1174s2) (.cons (f1174s3) (.cons (f1174s4) (.cons (f1174s5) (.cons (f1174s6) (.cons (f1174s7) (.cons (f1174s8) (.cons (f1174s9) (.cons (f1174s10) (.cons (f1174s11) .nil))))))))))))
private abbrev rf1175 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,4,2,0]
certRow f1175s0 on (rf1175 0) using bank tags [3]
certRow f1175s1 on (rf1175 1) using bank tags [3]
certRow f1175s2 on (rf1175 2) using bank tags [3,3,3]
certRow f1175s3 on (rf1175 3) using bank tags [3,3,3]
certRow f1175s4 on (rf1175 4) using bank tags [3]
certRow f1175s5 on (rf1175 5) using bank tags [3,3]
certRow f1175s6 on (rf1175 6) using bank tags []
certRow f1175s7 on (rf1175 7) using bank tags []
certRow f1175s8 on (rf1175 8) using bank tags []
certRow f1175s9 on (rf1175 9) using bank tags []
certRow f1175s10 on (rf1175 10) using bank tags []
certRow f1175s11 on (rf1175 11) using bank tags [3]
theorem f1175 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,4,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,4,2,0] (.cons (f1175s0) (.cons (f1175s1) (.cons (f1175s2) (.cons (f1175s3) (.cons (f1175s4) (.cons (f1175s5) (.cons (f1175s6) (.cons (f1175s7) (.cons (f1175s8) (.cons (f1175s9) (.cons (f1175s10) (.cons (f1175s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
