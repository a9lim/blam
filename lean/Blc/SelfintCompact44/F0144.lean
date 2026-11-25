import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf754 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,0,4]
certRow f754s0 on (rf754 0) using bank tags [28,28]
certRow f754s1 on (rf754 1) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f754s2 on (rf754 2) using bank tags [28,28,28,28,28,28,28]
certRow f754s3 on (rf754 3) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f754s4 on (rf754 4) using bank tags [28,28,28,28,28]
certRow f754s5 on (rf754 5) using bank tags [28,28,28,28]
certRow f754s6 on (rf754 6) using bank tags []
certRow f754s7 on (rf754 7) using bank tags [28,28,13,13,13,13,13,1,1,1,1,1,1,1,6,1,1]
theorem f754 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,0,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,0,4] (.cons (f754s0) (.cons (f754s1) (.cons (f754s2) (.cons (f754s3) (.cons (f754s4) (.cons (f754s5) (.cons (f754s6) (.cons (f754s7) .nil))))))))
private abbrev rf755 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,1,3]
certRow f755s0 on (rf755 0) using bank tags [28]
certRow f755s1 on (rf755 1) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,11]
certRow f755s2 on (rf755 2) using bank tags [3,3,28,28,28,28,28,28,28,3,3,28,28,28]
certRow f755s3 on (rf755 3) using bank tags [3,3,3,3,3,28,3,3,3,3,28,28]
certRow f755s4 on (rf755 4) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow f755s5 on (rf755 5) using bank tags [3,3,3,28,28]
certRow f755s6 on (rf755 6) using bank tags [28,28,28,28,28]
certRow f755s7 on (rf755 7) using bank tags [3,3,3,3,1,1,1,1,1,1]
theorem f755 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,1,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,1,3] (.cons (f755s0) (.cons (f755s1) (.cons (f755s2) (.cons (f755s3) (.cons (f755s4) (.cons (f755s5) (.cons (f755s6) (.cons (f755s7) .nil))))))))
private abbrev rf756 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,2,2]
certRow f756s0 on (rf756 0) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28]
certRow f756s1 on (rf756 1) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,11,11]
certRow f756s2 on (rf756 2) using bank tags [3,3,28,28,28,28,28,28,28,28]
certRow f756s3 on (rf756 3) using bank tags [3,3,3,3,3,3,3,3,3,3,30,1,1,6,1,1,1,1]
certRow f756s4 on (rf756 4) using bank tags [3,3,3,3,3,47,32]
certRow f756s5 on (rf756 5) using bank tags [3,3,3,28,28,28]
certRow f756s6 on (rf756 6) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28]
certRow f756s7 on (rf756 7) using bank tags [3,3,3,3]
certRow f756s8 on (rf756 8) using bank tags [3,28,28]
certRow f756s9 on (rf756 9) using bank tags [3,3,3,3,3,28]
certRow f756s10 on (rf756 10) using bank tags [3,3,3,3,3,3,3]
certRow f756s11 on (rf756 11) using bank tags [28,28,28,28,28]
theorem f756 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,2,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,0,2,2] (.cons (f756s0) (.cons (f756s1) (.cons (f756s2) (.cons (f756s3) (.cons (f756s4) (.cons (f756s5) (.cons (f756s6) (.cons (f756s7) (.cons (f756s8) (.cons (f756s9) (.cons (f756s10) (.cons (f756s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
