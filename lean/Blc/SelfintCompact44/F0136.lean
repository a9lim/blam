import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf731 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,4,0,1,1]
certRow f731s0 on (rf731 0) using bank tags [28]
certRow f731s1 on (rf731 1) using bank tags [28,28,28,28,28]
certRow f731s2 on (rf731 2) using bank tags [28,28,28,28,28]
certRow f731s3 on (rf731 3) using bank tags [28,28]
certRow f731s4 on (rf731 4) using bank tags [28,28,28,28,28]
certRow f731s5 on (rf731 5) using bank tags [28,28]
certRow f731s6 on (rf731 6) using bank tags [28,28,28,28,28,28,28]
certRow f731s7 on (rf731 7) using bank tags [28,28,13,13,13,13,13]
theorem f731 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,4,0,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,4,0,1,1] (.cons (f731s0) (.cons (f731s1) (.cons (f731s2) (.cons (f731s3) (.cons (f731s4) (.cons (f731s5) (.cons (f731s6) (.cons (f731s7) .nil))))))))
private abbrev rf732 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,4,0,2,0]
certRow f732s0 on (rf732 0) using bank tags [28]
certRow f732s1 on (rf732 1) using bank tags [28,28,28,28,28,28,28]
certRow f732s2 on (rf732 2) using bank tags [28,28,28,28]
certRow f732s3 on (rf732 3) using bank tags [28,28]
certRow f732s4 on (rf732 4) using bank tags [28,28,28,28,28,28,28,28,28,28,6,18]
certRow f732s5 on (rf732 5) using bank tags []
certRow f732s6 on (rf732 6) using bank tags [28,28]
certRow f732s7 on (rf732 7) using bank tags [13,13,13,13,13]
theorem f732 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,4,0,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,4,0,2,0] (.cons (f732s0) (.cons (f732s1) (.cons (f732s2) (.cons (f732s3) (.cons (f732s4) (.cons (f732s5) (.cons (f732s6) (.cons (f732s7) .nil))))))))
private abbrev rf733 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,4,1,0,1]
certRow f733s0 on (rf733 0) using bank tags [28,28]
certRow f733s1 on (rf733 1) using bank tags [28,28,28,28,28]
certRow f733s2 on (rf733 2) using bank tags [28,28,28,28,28,28]
certRow f733s3 on (rf733 3) using bank tags [28,28]
certRow f733s4 on (rf733 4) using bank tags [28,28,28,28,28]
certRow f733s5 on (rf733 5) using bank tags [28,28]
certRow f733s6 on (rf733 6) using bank tags [28,28,28,28,28,28,28]
certRow f733s7 on (rf733 7) using bank tags [28,28,13,13,13,13,13]
theorem f733 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,4,1,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,4,1,0,1] (.cons (f733s0) (.cons (f733s1) (.cons (f733s2) (.cons (f733s3) (.cons (f733s4) (.cons (f733s5) (.cons (f733s6) (.cons (f733s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
