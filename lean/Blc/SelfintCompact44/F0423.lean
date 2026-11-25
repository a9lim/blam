import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3459 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [1,0,2,0]
certRow f3459s0 on (rf3459 0) using bank tags []
certRow f3459s1 on (rf3459 1) using bank tags []
certRow f3459s2 on (rf3459 2) using bank tags []
certRow f3459s3 on (rf3459 3) using bank tags []
certRow f3459s4 on (rf3459 4) using bank tags []
certRow f3459s5 on (rf3459 5) using bank tags []
certRow f3459s6 on (rf3459 6) using bank tags []
certRow f3459s7 on (rf3459 7) using bank tags []
certRow f3459s8 on (rf3459 8) using bank tags []
certRow f3459s9 on (rf3459 9) using bank tags []
certRow f3459s10 on (rf3459 10) using bank tags []
certRow f3459s11 on (rf3459 11) using bank tags []
theorem f3459 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [1,0,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [1,0,2,0] (.cons (f3459s0) (.cons (f3459s1) (.cons (f3459s2) (.cons (f3459s3) (.cons (f3459s4) (.cons (f3459s5) (.cons (f3459s6) (.cons (f3459s7) (.cons (f3459s8) (.cons (f3459s9) (.cons (f3459s10) (.cons (f3459s11) .nil))))))))))))
certRow f3460 on (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [1,1,0,1]) using bank tags []
certRow f3461 on (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [1,1,1,0]) using bank tags []
private abbrev rf3462 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [1,2,0,0]
certRow f3462s0 on (rf3462 0) using bank tags []
certRow f3462s1 on (rf3462 1) using bank tags []
certRow f3462s2 on (rf3462 2) using bank tags []
certRow f3462s3 on (rf3462 3) using bank tags []
certRow f3462s4 on (rf3462 4) using bank tags []
certRow f3462s5 on (rf3462 5) using bank tags []
certRow f3462s6 on (rf3462 6) using bank tags []
certRow f3462s7 on (rf3462 7) using bank tags []
certRow f3462s8 on (rf3462 8) using bank tags []
certRow f3462s9 on (rf3462 9) using bank tags []
certRow f3462s10 on (rf3462 10) using bank tags []
certRow f3462s11 on (rf3462 11) using bank tags []
theorem f3462 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [1,2,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [1,2,0,0] (.cons (f3462s0) (.cons (f3462s1) (.cons (f3462s2) (.cons (f3462s3) (.cons (f3462s4) (.cons (f3462s5) (.cons (f3462s6) (.cons (f3462s7) (.cons (f3462s8) (.cons (f3462s9) (.cons (f3462s10) (.cons (f3462s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
