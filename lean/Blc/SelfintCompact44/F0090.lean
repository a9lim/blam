import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf456 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,1,0,1]
certRow f456s0 on (rf456 0) using bank tags []
certRow f456s1 on (rf456 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow f456s2 on (rf456 2) using bank tags [3,3,3,3,3]
certRow f456s3 on (rf456 3) using bank tags [3,3,3,3,28,28,28,28,28]
certRow f456s4 on (rf456 4) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f456s5 on (rf456 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f456s6 on (rf456 6) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f456s7 on (rf456 7) using bank tags []
certRow f456s8 on (rf456 8) using bank tags []
certRow f456s9 on (rf456 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f456s10 on (rf456 10) using bank tags []
certRow f456s11 on (rf456 11) using bank tags [28,28,28,28,28,28,28]
theorem f456 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,1,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,1,0,1] (.cons (f456s0) (.cons (f456s1) (.cons (f456s2) (.cons (f456s3) (.cons (f456s4) (.cons (f456s5) (.cons (f456s6) (.cons (f456s7) (.cons (f456s8) (.cons (f456s9) (.cons (f456s10) (.cons (f456s11) .nil))))))))))))
private abbrev rf457 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,1,1,0]
certRow f457s0 on (rf457 0) using bank tags []
certRow f457s1 on (rf457 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f457s2 on (rf457 2) using bank tags [3,3,3,3,3]
certRow f457s3 on (rf457 3) using bank tags [3,3,3,3]
certRow f457s4 on (rf457 4) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f457s5 on (rf457 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f457s6 on (rf457 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f457s7 on (rf457 7) using bank tags []
certRow f457s8 on (rf457 8) using bank tags []
certRow f457s9 on (rf457 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f457s10 on (rf457 10) using bank tags []
certRow f457s11 on (rf457 11) using bank tags [28,28,28,28,28]
theorem f457 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,1,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,1,1,0] (.cons (f457s0) (.cons (f457s1) (.cons (f457s2) (.cons (f457s3) (.cons (f457s4) (.cons (f457s5) (.cons (f457s6) (.cons (f457s7) (.cons (f457s8) (.cons (f457s9) (.cons (f457s10) (.cons (f457s11) .nil))))))))))))
certRow f458 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,0,0,2,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
end Blc.SelfintSingleObject.Compact44
