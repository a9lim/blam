import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3456 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [0,3,0,0]
certRow f3456s0 on (rf3456 0) using bank tags []
certRow f3456s1 on (rf3456 1) using bank tags []
certRow f3456s2 on (rf3456 2) using bank tags []
certRow f3456s3 on (rf3456 3) using bank tags []
certRow f3456s4 on (rf3456 4) using bank tags []
certRow f3456s5 on (rf3456 5) using bank tags []
certRow f3456s6 on (rf3456 6) using bank tags []
certRow f3456s7 on (rf3456 7) using bank tags []
certRow f3456s8 on (rf3456 8) using bank tags []
certRow f3456s9 on (rf3456 9) using bank tags []
certRow f3456s10 on (rf3456 10) using bank tags []
certRow f3456s11 on (rf3456 11) using bank tags []
theorem f3456 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [0,3,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [0,3,0,0] (.cons (f3456s0) (.cons (f3456s1) (.cons (f3456s2) (.cons (f3456s3) (.cons (f3456s4) (.cons (f3456s5) (.cons (f3456s6) (.cons (f3456s7) (.cons (f3456s8) (.cons (f3456s9) (.cons (f3456s10) (.cons (f3456s11) .nil))))))))))))
private abbrev rf3457 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [1,0,0,2]
certRow f3457s0 on (rf3457 0) using bank tags []
certRow f3457s1 on (rf3457 1) using bank tags []
certRow f3457s2 on (rf3457 2) using bank tags []
certRow f3457s3 on (rf3457 3) using bank tags []
certRow f3457s4 on (rf3457 4) using bank tags []
certRow f3457s5 on (rf3457 5) using bank tags []
certRow f3457s6 on (rf3457 6) using bank tags []
certRow f3457s7 on (rf3457 7) using bank tags []
certRow f3457s8 on (rf3457 8) using bank tags []
certRow f3457s9 on (rf3457 9) using bank tags []
certRow f3457s10 on (rf3457 10) using bank tags []
certRow f3457s11 on (rf3457 11) using bank tags []
theorem f3457 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [1,0,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [1,0,0,2] (.cons (f3457s0) (.cons (f3457s1) (.cons (f3457s2) (.cons (f3457s3) (.cons (f3457s4) (.cons (f3457s5) (.cons (f3457s6) (.cons (f3457s7) (.cons (f3457s8) (.cons (f3457s9) (.cons (f3457s10) (.cons (f3457s11) .nil))))))))))))
certRow f3458 on (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
