import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf705 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,0,4]
certRow f705s0 on (rf705 0) using bank tags []
certRow f705s1 on (rf705 1) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f705s2 on (rf705 2) using bank tags [28,28]
certRow f705s3 on (rf705 3) using bank tags [28,28,28,28,28,28,28]
certRow f705s4 on (rf705 4) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f705s5 on (rf705 5) using bank tags [28,28]
certRow f705s6 on (rf705 6) using bank tags []
certRow f705s7 on (rf705 7) using bank tags [28,28,28,28,28,28,28,13,13,13,13,13,1,1,24,24,22]
theorem f705 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,0,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,0,4] (.cons (f705s0) (.cons (f705s1) (.cons (f705s2) (.cons (f705s3) (.cons (f705s4) (.cons (f705s5) (.cons (f705s6) (.cons (f705s7) .nil))))))))
private abbrev rf706 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,1,3]
certRow f706s0 on (rf706 0) using bank tags [3,3,3,3,3,28,28]
certRow f706s1 on (rf706 1) using bank tags [1]
certRow f706s2 on (rf706 2) using bank tags [28,28,28,28,28,28,28]
certRow f706s3 on (rf706 3) using bank tags [3,3,28,3,3,3,28,28,3,3,3,28,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f706s4 on (rf706 4) using bank tags [1,1]
certRow f706s5 on (rf706 5) using bank tags [3,3,28,28,28,28]
certRow f706s6 on (rf706 6) using bank tags [3,28,28,28,28,28]
certRow f706s7 on (rf706 7) using bank tags [3,3]
certRow f706s8 on (rf706 8) using bank tags [28,28,28,28,28]
certRow f706s9 on (rf706 9) using bank tags [3,3,3,3,3,28,28]
certRow f706s10 on (rf706 10) using bank tags [3,28,28,28,28,28,28,28]
certRow f706s11 on (rf706 11) using bank tags [28,28,28,28,28,1,24,6,1,1,1,1,1,1,1]
theorem f706 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,1,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,1,3] (.cons (f706s0) (.cons (f706s1) (.cons (f706s2) (.cons (f706s3) (.cons (f706s4) (.cons (f706s5) (.cons (f706s6) (.cons (f706s7) (.cons (f706s8) (.cons (f706s9) (.cons (f706s10) (.cons (f706s11) .nil))))))))))))
private abbrev rf707 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,2,2]
certRow f707s0 on (rf707 0) using bank tags [3,28,28]
certRow f707s1 on (rf707 1) using bank tags [3,3,3,3,3,28,1,1]
certRow f707s2 on (rf707 2) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28,1,15]
certRow f707s3 on (rf707 3) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f707s4 on (rf707 4) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow f707s5 on (rf707 5) using bank tags [3,3,3,3,28,28,28,28]
certRow f707s6 on (rf707 6) using bank tags [3,3,28,28,28]
certRow f707s7 on (rf707 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,1,1,1,1,1]
theorem f707 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,0,2,2] (.cons (f707s0) (.cons (f707s1) (.cons (f707s2) (.cons (f707s3) (.cons (f707s4) (.cons (f707s5) (.cons (f707s6) (.cons (f707s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
