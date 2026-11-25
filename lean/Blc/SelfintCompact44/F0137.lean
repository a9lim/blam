import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf734 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,4,1,1,0]
certRow f734s0 on (rf734 0) using bank tags [28,28]
certRow f734s1 on (rf734 1) using bank tags [28,28,28]
certRow f734s2 on (rf734 2) using bank tags [28,28,28,28,28,28]
certRow f734s3 on (rf734 3) using bank tags [28,28]
certRow f734s4 on (rf734 4) using bank tags [28,28,28]
certRow f734s5 on (rf734 5) using bank tags [28,28]
certRow f734s6 on (rf734 6) using bank tags [28,28,28,28,28]
certRow f734s7 on (rf734 7) using bank tags [28,28,13,13,13]
theorem f734 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,4,1,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,4,1,1,0] (.cons (f734s0) (.cons (f734s1) (.cons (f734s2) (.cons (f734s3) (.cons (f734s4) (.cons (f734s5) (.cons (f734s6) (.cons (f734s7) .nil))))))))
certRow f735 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,4,2,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,13,13,13,22]
private abbrev rf736 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,0,1,4]
certRow f736s0 on (rf736 0) using bank tags [28,28,28,28]
certRow f736s1 on (rf736 1) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f736s2 on (rf736 2) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f736s3 on (rf736 3) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f736s4 on (rf736 4) using bank tags [28,28,28,28,28]
certRow f736s5 on (rf736 5) using bank tags [28,28,28,28,28,28]
certRow f736s6 on (rf736 6) using bank tags []
certRow f736s7 on (rf736 7) using bank tags [28,28,28,28,13,13,13,13,1,1,1,19,6,6,19,6,1]
theorem f736 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,0,1,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,0,1,4] (.cons (f736s0) (.cons (f736s1) (.cons (f736s2) (.cons (f736s3) (.cons (f736s4) (.cons (f736s5) (.cons (f736s6) (.cons (f736s7) .nil))))))))
private abbrev rf737 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,0,0,2,3]
certRow f737s0 on (rf737 0) using bank tags [28,28]
certRow f737s1 on (rf737 1) using bank tags [3,3,3,3,3]
certRow f737s2 on (rf737 2) using bank tags [28,28,28,28,28,3,28,28,28,28,28,28,28,28]
certRow f737s3 on (rf737 3) using bank tags [3,3,3,28,3,3,3,3,28,28,28,28,28,28,28]
certRow f737s4 on (rf737 4) using bank tags [3,3,3,3,28,28,28,28,28]
certRow f737s5 on (rf737 5) using bank tags [3,3,3,28,28,28,28]
certRow f737s6 on (rf737 6) using bank tags [3,3,3]
certRow f737s7 on (rf737 7) using bank tags [3,3,3,3,1,1,1,22,19,6,19,19,6,19,6,6,1,1]
theorem f737 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,0,0,2,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,0,0,2,3] (.cons (f737s0) (.cons (f737s1) (.cons (f737s2) (.cons (f737s3) (.cons (f737s4) (.cons (f737s5) (.cons (f737s6) (.cons (f737s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
