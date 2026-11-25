import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3406 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,4,0,0]
certRow f3406s0 on (rf3406 0) using bank tags []
certRow f3406s1 on (rf3406 1) using bank tags []
certRow f3406s2 on (rf3406 2) using bank tags []
certRow f3406s3 on (rf3406 3) using bank tags []
certRow f3406s4 on (rf3406 4) using bank tags []
certRow f3406s5 on (rf3406 5) using bank tags []
certRow f3406s6 on (rf3406 6) using bank tags []
certRow f3406s7 on (rf3406 7) using bank tags []
certRow f3406s8 on (rf3406 8) using bank tags []
certRow f3406s9 on (rf3406 9) using bank tags []
certRow f3406s10 on (rf3406 10) using bank tags []
certRow f3406s11 on (rf3406 11) using bank tags []
theorem f3406 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,4,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,4,0,0] (.cons (f3406s0) (.cons (f3406s1) (.cons (f3406s2) (.cons (f3406s3) (.cons (f3406s4) (.cons (f3406s5) (.cons (f3406s6) (.cons (f3406s7) (.cons (f3406s8) (.cons (f3406s9) (.cons (f3406s10) (.cons (f3406s11) .nil))))))))))))
private abbrev rf3407 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [1,0,0,3]
certRow f3407s0 on (rf3407 0) using bank tags []
certRow f3407s1 on (rf3407 1) using bank tags []
certRow f3407s2 on (rf3407 2) using bank tags []
certRow f3407s3 on (rf3407 3) using bank tags []
certRow f3407s4 on (rf3407 4) using bank tags []
certRow f3407s5 on (rf3407 5) using bank tags []
certRow f3407s6 on (rf3407 6) using bank tags []
certRow f3407s7 on (rf3407 7) using bank tags []
certRow f3407s8 on (rf3407 8) using bank tags []
certRow f3407s9 on (rf3407 9) using bank tags []
certRow f3407s10 on (rf3407 10) using bank tags []
certRow f3407s11 on (rf3407 11) using bank tags []
theorem f3407 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [1,0,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [1,0,0,3] (.cons (f3407s0) (.cons (f3407s1) (.cons (f3407s2) (.cons (f3407s3) (.cons (f3407s4) (.cons (f3407s5) (.cons (f3407s6) (.cons (f3407s7) (.cons (f3407s8) (.cons (f3407s9) (.cons (f3407s10) (.cons (f3407s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
