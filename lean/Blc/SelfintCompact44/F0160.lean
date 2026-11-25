import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf808 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,1,1,1,1]
certRow f808s0 on (rf808 0) using bank tags [3,3,3,3]
certRow f808s1 on (rf808 1) using bank tags [28,28,28,28,28,28]
certRow f808s2 on (rf808 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f808s3 on (rf808 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f808s4 on (rf808 4) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f808s5 on (rf808 5) using bank tags [3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f808s6 on (rf808 6) using bank tags [3,3,28,28,28,28]
certRow f808s7 on (rf808 7) using bank tags [3,3]
theorem f808 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,1,1,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,1,1,1,1] (.cons (f808s0) (.cons (f808s1) (.cons (f808s2) (.cons (f808s3) (.cons (f808s4) (.cons (f808s5) (.cons (f808s6) (.cons (f808s7) .nil))))))))
private abbrev rf809 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,1,1,2,0]
certRow f809s0 on (rf809 0) using bank tags [3,3,3]
certRow f809s1 on (rf809 1) using bank tags [3,3,3,3,3]
certRow f809s2 on (rf809 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f809s3 on (rf809 3) using bank tags [3,3,3,3,3,3,3,3]
certRow f809s4 on (rf809 4) using bank tags []
certRow f809s5 on (rf809 5) using bank tags [3,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f809s6 on (rf809 6) using bank tags [3,3,28]
certRow f809s7 on (rf809 7) using bank tags []
theorem f809 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,1,1,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,1,1,2,0] (.cons (f809s0) (.cons (f809s1) (.cons (f809s2) (.cons (f809s3) (.cons (f809s4) (.cons (f809s5) (.cons (f809s6) (.cons (f809s7) .nil))))))))
private abbrev rf810 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,1,2,0,1]
certRow f810s0 on (rf810 0) using bank tags [3,3,3,3]
certRow f810s1 on (rf810 1) using bank tags [3,3,3,3,3,3,3,3,28]
certRow f810s2 on (rf810 2) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow f810s3 on (rf810 3) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f810s4 on (rf810 4) using bank tags [3,3,3,3,3,28,28]
certRow f810s5 on (rf810 5) using bank tags [3,3,28,28,28,28,28]
certRow f810s6 on (rf810 6) using bank tags [3,3]
certRow f810s7 on (rf810 7) using bank tags []
theorem f810 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,1,2,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,1,2,0,1] (.cons (f810s0) (.cons (f810s1) (.cons (f810s2) (.cons (f810s3) (.cons (f810s4) (.cons (f810s5) (.cons (f810s6) (.cons (f810s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
