import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf677 (i : Nat) := Split43.four 12 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,2,2]
certRow f677s0 on (rf677 0) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28]
certRow f677s1 on (rf677 1) using bank tags [28,28,28,28,28]
certRow f677s2 on (rf677 2) using bank tags [28,28,28,28,28,28,28,28]
certRow f677s3 on (rf677 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f677s4 on (rf677 4) using bank tags []
certRow f677s5 on (rf677 5) using bank tags [28]
certRow f677s6 on (rf677 6) using bank tags [1,1]
certRow f677s7 on (rf677 7) using bank tags [3,3,3,3]
certRow f677s8 on (rf677 8) using bank tags [3,3,28,28]
certRow f677s9 on (rf677 9) using bank tags [3,3,3,3,3,28,28,19]
certRow f677s10 on (rf677 10) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f677s11 on (rf677 11) using bank tags [28,26,1,1,1,1,1,1,1,82,243]
theorem f677 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,2,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,2,2] (.cons (f677s0) (.cons (f677s1) (.cons (f677s2) (.cons (f677s3) (.cons (f677s4) (.cons (f677s5) (.cons (f677s6) (.cons (f677s7) (.cons (f677s8) (.cons (f677s9) (.cons (f677s10) (.cons (f677s11) .nil))))))))))))
private abbrev rf678 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,3,1]
certRow f678s0 on (rf678 0) using bank tags [28,28]
certRow f678s1 on (rf678 1) using bank tags [28,28,28,3,28,28,19]
certRow f678s2 on (rf678 2) using bank tags [3,3,3,28,3,3,3,3,28,28,3,28,28,28,28,28,37]
certRow f678s3 on (rf678 3) using bank tags [3,28,28,28,28,3,3,3,28]
certRow f678s4 on (rf678 4) using bank tags [3,28,3,3,3,28,3,1,1]
certRow f678s5 on (rf678 5) using bank tags [3,28,28,28,28,28,28,28,28,28]
certRow f678s6 on (rf678 6) using bank tags []
certRow f678s7 on (rf678 7) using bank tags [28,28,3,28,28,28,3,3,3,3,28,28,28,28,3,28,3,28,32,31,13,6,13,1,1,1,1,6,61]
theorem f678 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,3,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,3,1] (.cons (f678s0) (.cons (f678s1) (.cons (f678s2) (.cons (f678s3) (.cons (f678s4) (.cons (f678s5) (.cons (f678s6) (.cons (f678s7) .nil))))))))
private abbrev rf679 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,4,0]
certRow f679s0 on (rf679 0) using bank tags []
certRow f679s1 on (rf679 1) using bank tags [28,28,28,28,19]
certRow f679s2 on (rf679 2) using bank tags [28,28,28,28,28]
certRow f679s3 on (rf679 3) using bank tags [28,28,28]
certRow f679s4 on (rf679 4) using bank tags [28,28,28,28,28,28,28,28,6,22]
certRow f679s5 on (rf679 5) using bank tags []
certRow f679s6 on (rf679 6) using bank tags []
certRow f679s7 on (rf679 7) using bank tags [28,13,13,13,6,13,6]
theorem f679 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,4,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,0,2,4,0] (.cons (f679s0) (.cons (f679s1) (.cons (f679s2) (.cons (f679s3) (.cons (f679s4) (.cons (f679s5) (.cons (f679s6) (.cons (f679s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
