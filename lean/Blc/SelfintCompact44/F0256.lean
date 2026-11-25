import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1234 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [6,0,0,0]
certRow f1234s0 on (rf1234 0) using bank tags []
certRow f1234s1 on (rf1234 1) using bank tags []
certRow f1234s2 on (rf1234 2) using bank tags []
certRow f1234s3 on (rf1234 3) using bank tags []
certRow f1234s4 on (rf1234 4) using bank tags []
certRow f1234s5 on (rf1234 5) using bank tags []
certRow f1234s6 on (rf1234 6) using bank tags []
certRow f1234s7 on (rf1234 7) using bank tags []
certRow f1234s8 on (rf1234 8) using bank tags []
certRow f1234s9 on (rf1234 9) using bank tags []
certRow f1234s10 on (rf1234 10) using bank tags []
certRow f1234s11 on (rf1234 11) using bank tags []
theorem f1234 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [6,0,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [6,0,0,0] (.cons (f1234s0) (.cons (f1234s1) (.cons (f1234s2) (.cons (f1234s3) (.cons (f1234s4) (.cons (f1234s5) (.cons (f1234s6) (.cons (f1234s7) (.cons (f1234s8) (.cons (f1234s9) (.cons (f1234s10) (.cons (f1234s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
