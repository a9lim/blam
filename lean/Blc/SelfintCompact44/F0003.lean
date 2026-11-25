import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf14 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,1,1,0,2,2]
certRow f14s0 on (rf14 0) using bank tags []
certRow f14s1 on (rf14 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f14s2 on (rf14 2) using bank tags [1,1,1,1,1]
certRow f14s3 on (rf14 3) using bank tags [1,1,1,1,1,1,1,1,1,35,35,35,35,35,19,19,35,19,35,35,19,35,19,19,19,19,19,19]
certRow f14s4 on (rf14 4) using bank tags [1,1,1,1,1]
certRow f14s5 on (rf14 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f14s6 on (rf14 6) using bank tags []
certRow f14s7 on (rf14 7) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
theorem f14 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,1,0,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,1,1,0,2,2] (.cons (f14s0) (.cons (f14s1) (.cons (f14s2) (.cons (f14s3) (.cons (f14s4) (.cons (f14s5) (.cons (f14s6) (.cons (f14s7) .nil))))))))
certRow f15 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,1,1,1,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f16 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,1,1,2,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
private abbrev rf17 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,1,1,2,0,2]
certRow f17s0 on (rf17 0) using bank tags []
certRow f17s1 on (rf17 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f17s2 on (rf17 2) using bank tags [1,1,1,1,1]
certRow f17s3 on (rf17 3) using bank tags [1,1,1,1,1,1,1,1,1,35,35,19,35,19,19,19,19,19,35,19,19,19,19,19,19,19,19,19]
certRow f17s4 on (rf17 4) using bank tags [1,1,1,1,1]
certRow f17s5 on (rf17 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f17s6 on (rf17 6) using bank tags []
certRow f17s7 on (rf17 7) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
theorem f17 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,1,2,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,1,1,2,0,2] (.cons (f17s0) (.cons (f17s1) (.cons (f17s2) (.cons (f17s3) (.cons (f17s4) (.cons (f17s5) (.cons (f17s6) (.cons (f17s7) .nil))))))))
certRow f18 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,1,2,1,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
private abbrev rf19 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,1,1,2,2,0]
certRow f19s0 on (rf19 0) using bank tags []
certRow f19s1 on (rf19 1) using bank tags [1,1,1,1,1,1,1,1,1]
certRow f19s2 on (rf19 2) using bank tags [1,1,1,1,1]
certRow f19s3 on (rf19 3) using bank tags [1,1,1,1,1,1,1,35,19,19,19,19,19,19,19,19,19,19,19]
certRow f19s4 on (rf19 4) using bank tags [1,1,1,1,1]
certRow f19s5 on (rf19 5) using bank tags [1,1,1,1,1,1,1,1,1]
certRow f19s6 on (rf19 6) using bank tags []
certRow f19s7 on (rf19 7) using bank tags [31,1,1,1,1,31,1,1,1,1,1,1]
theorem f19 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,1,2,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,1,1,2,2,0] (.cons (f19s0) (.cons (f19s1) (.cons (f19s2) (.cons (f19s3) (.cons (f19s4) (.cons (f19s5) (.cons (f19s6) (.cons (f19s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
