import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf834 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [3,1,0,1,1]
certRow f834s0 on (rf834 0) using bank tags [28]
certRow f834s1 on (rf834 1) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f834s2 on (rf834 2) using bank tags [3,3,28,28,28,28,28,28,28]
certRow f834s3 on (rf834 3) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28]
certRow f834s4 on (rf834 4) using bank tags [3,3,3,3,3]
certRow f834s5 on (rf834 5) using bank tags [28,28,28]
certRow f834s6 on (rf834 6) using bank tags [28,28]
certRow f834s7 on (rf834 7) using bank tags [28,28,28]
theorem f834 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,1,0,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [3,1,0,1,1] (.cons (f834s0) (.cons (f834s1) (.cons (f834s2) (.cons (f834s3) (.cons (f834s4) (.cons (f834s5) (.cons (f834s6) (.cons (f834s7) .nil))))))))
certRow f835 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,1,0,2,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
private abbrev rf836 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [3,1,1,0,1]
certRow f836s0 on (rf836 0) using bank tags [28,28,28,28]
certRow f836s1 on (rf836 1) using bank tags [3,3,3,3,3,28,28,28]
certRow f836s2 on (rf836 2) using bank tags [3,3,28,28,28,28,28,28]
certRow f836s3 on (rf836 3) using bank tags [3,3,28,28,28,28,28,28,28]
certRow f836s4 on (rf836 4) using bank tags [3,3,3,3,3]
certRow f836s5 on (rf836 5) using bank tags [28,28]
certRow f836s6 on (rf836 6) using bank tags [28,28]
certRow f836s7 on (rf836 7) using bank tags []
theorem f836 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,1,1,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [3,1,1,0,1] (.cons (f836s0) (.cons (f836s1) (.cons (f836s2) (.cons (f836s3) (.cons (f836s4) (.cons (f836s5) (.cons (f836s6) (.cons (f836s7) .nil))))))))
private abbrev rf837 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [3,1,1,1,0]
certRow f837s0 on (rf837 0) using bank tags [28,28,28,28]
certRow f837s1 on (rf837 1) using bank tags [3,3,3,3,3]
certRow f837s2 on (rf837 2) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28]
certRow f837s3 on (rf837 3) using bank tags [3,3,28,28,28,28,28,28]
certRow f837s4 on (rf837 4) using bank tags []
certRow f837s5 on (rf837 5) using bank tags [28]
certRow f837s6 on (rf837 6) using bank tags [28,28]
certRow f837s7 on (rf837 7) using bank tags []
theorem f837 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,1,1,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [3,1,1,1,0] (.cons (f837s0) (.cons (f837s1) (.cons (f837s2) (.cons (f837s3) (.cons (f837s4) (.cons (f837s5) (.cons (f837s6) (.cons (f837s7) .nil))))))))
certRow f838 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,1,2,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f839 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,2,0,0,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f840 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,2,0,1,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28]
certRow f841 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,2,1,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f842 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,3,0,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
