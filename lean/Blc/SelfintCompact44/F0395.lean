import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3396 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,0,4,0]
certRow f3396s0 on (rf3396 0) using bank tags []
certRow f3396s1 on (rf3396 1) using bank tags []
certRow f3396s2 on (rf3396 2) using bank tags []
certRow f3396s3 on (rf3396 3) using bank tags []
certRow f3396s4 on (rf3396 4) using bank tags []
certRow f3396s5 on (rf3396 5) using bank tags []
certRow f3396s6 on (rf3396 6) using bank tags []
certRow f3396s7 on (rf3396 7) using bank tags []
certRow f3396s8 on (rf3396 8) using bank tags []
certRow f3396s9 on (rf3396 9) using bank tags []
certRow f3396s10 on (rf3396 10) using bank tags []
certRow f3396s11 on (rf3396 11) using bank tags []
theorem f3396 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,0,4,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,0,4,0] (.cons (f3396s0) (.cons (f3396s1) (.cons (f3396s2) (.cons (f3396s3) (.cons (f3396s4) (.cons (f3396s5) (.cons (f3396s6) (.cons (f3396s7) (.cons (f3396s8) (.cons (f3396s9) (.cons (f3396s10) (.cons (f3396s11) .nil))))))))))))
private abbrev rf3397 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,1,0,3]
certRow f3397s0 on (rf3397 0) using bank tags []
certRow f3397s1 on (rf3397 1) using bank tags []
certRow f3397s2 on (rf3397 2) using bank tags []
certRow f3397s3 on (rf3397 3) using bank tags []
certRow f3397s4 on (rf3397 4) using bank tags []
certRow f3397s5 on (rf3397 5) using bank tags []
certRow f3397s6 on (rf3397 6) using bank tags []
certRow f3397s7 on (rf3397 7) using bank tags []
certRow f3397s8 on (rf3397 8) using bank tags []
certRow f3397s9 on (rf3397 9) using bank tags []
certRow f3397s10 on (rf3397 10) using bank tags []
certRow f3397s11 on (rf3397 11) using bank tags []
theorem f3397 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,1,0,3]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,1,0,3] (.cons (f3397s0) (.cons (f3397s1) (.cons (f3397s2) (.cons (f3397s3) (.cons (f3397s4) (.cons (f3397s5) (.cons (f3397s6) (.cons (f3397s7) (.cons (f3397s8) (.cons (f3397s9) (.cons (f3397s10) (.cons (f3397s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
