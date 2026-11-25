import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf775 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,2,1,2,0]
certRow f775s0 on (rf775 0) using bank tags [3,3,3,3]
certRow f775s1 on (rf775 1) using bank tags [3,3,3,3,3,3]
certRow f775s2 on (rf775 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow f775s3 on (rf775 3) using bank tags [3,3,3,3,3,3,3,3,11]
certRow f775s4 on (rf775 4) using bank tags [3,3,3,6,16]
certRow f775s5 on (rf775 5) using bank tags [3,28,28,28,28,28,28,28,28,28,28,28]
certRow f775s6 on (rf775 6) using bank tags [3,3,3,3,3]
certRow f775s7 on (rf775 7) using bank tags [28,28,1,6,35]
theorem f775 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,2,1,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,2,1,2,0] (.cons (f775s0) (.cons (f775s1) (.cons (f775s2) (.cons (f775s3) (.cons (f775s4) (.cons (f775s5) (.cons (f775s6) (.cons (f775s7) .nil))))))))
private abbrev rf776 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,2,2,0,1]
certRow f776s0 on (rf776 0) using bank tags [3,3,3]
certRow f776s1 on (rf776 1) using bank tags [3,3,3,3,3,3,3,3]
certRow f776s2 on (rf776 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow f776s3 on (rf776 3) using bank tags [3,3,3,3,3,3,3,3,3,11,11]
certRow f776s4 on (rf776 4) using bank tags [3,3,3,3,3,3,3,3,3,28,28]
certRow f776s5 on (rf776 5) using bank tags [3,3,28,28,28,28,28]
certRow f776s6 on (rf776 6) using bank tags [3,3,3,3,3,3,3,28,28]
certRow f776s7 on (rf776 7) using bank tags [28,28,18,18]
theorem f776 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,2,2,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,2,2,0,1] (.cons (f776s0) (.cons (f776s1) (.cons (f776s2) (.cons (f776s3) (.cons (f776s4) (.cons (f776s5) (.cons (f776s6) (.cons (f776s7) .nil))))))))
private abbrev rf777 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,2,2,1,0]
certRow f777s0 on (rf777 0) using bank tags [3,3,3]
certRow f777s1 on (rf777 1) using bank tags [3,3,3,3,3,3]
certRow f777s2 on (rf777 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow f777s3 on (rf777 3) using bank tags [3,3,3,3,3,3,3,3,11]
certRow f777s4 on (rf777 4) using bank tags [3,3,3,16]
certRow f777s5 on (rf777 5) using bank tags [3,28,28,28,28,28,28,28]
certRow f777s6 on (rf777 6) using bank tags [3,3,3,3,3,28]
certRow f777s7 on (rf777 7) using bank tags [28,28,18,16]
theorem f777 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,2,2,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,2,2,1,0] (.cons (f777s0) (.cons (f777s1) (.cons (f777s2) (.cons (f777s3) (.cons (f777s4) (.cons (f777s5) (.cons (f777s6) (.cons (f777s7) .nil))))))))
certRow f778 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,2,3,0,0]) using bank tags [3,3,3,3,3,28,28,3,28,3,3,3,3,28,28,28]
end Blc.SelfintSingleObject.Compact44
