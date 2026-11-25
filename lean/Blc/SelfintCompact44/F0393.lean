import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3392 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,0,0,4]
certRow f3392s0 on (rf3392 0) using bank tags []
certRow f3392s1 on (rf3392 1) using bank tags []
certRow f3392s2 on (rf3392 2) using bank tags []
certRow f3392s3 on (rf3392 3) using bank tags []
certRow f3392s4 on (rf3392 4) using bank tags []
certRow f3392s5 on (rf3392 5) using bank tags []
certRow f3392s6 on (rf3392 6) using bank tags []
certRow f3392s7 on (rf3392 7) using bank tags []
certRow f3392s8 on (rf3392 8) using bank tags []
certRow f3392s9 on (rf3392 9) using bank tags []
certRow f3392s10 on (rf3392 10) using bank tags []
certRow f3392s11 on (rf3392 11) using bank tags []
theorem f3392 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,0,0,4]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,0,0,4] (.cons (f3392s0) (.cons (f3392s1) (.cons (f3392s2) (.cons (f3392s3) (.cons (f3392s4) (.cons (f3392s5) (.cons (f3392s6) (.cons (f3392s7) (.cons (f3392s8) (.cons (f3392s9) (.cons (f3392s10) (.cons (f3392s11) .nil))))))))))))
private abbrev rf3393 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,0,1,3]
certRow f3393s0 on (rf3393 0) using bank tags []
certRow f3393s1 on (rf3393 1) using bank tags []
certRow f3393s2 on (rf3393 2) using bank tags []
certRow f3393s3 on (rf3393 3) using bank tags []
certRow f3393s4 on (rf3393 4) using bank tags []
certRow f3393s5 on (rf3393 5) using bank tags []
certRow f3393s6 on (rf3393 6) using bank tags []
certRow f3393s7 on (rf3393 7) using bank tags []
certRow f3393s8 on (rf3393 8) using bank tags []
certRow f3393s9 on (rf3393 9) using bank tags []
certRow f3393s10 on (rf3393 10) using bank tags []
certRow f3393s11 on (rf3393 11) using bank tags []
theorem f3393 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,0,1,3]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,0,1,3] (.cons (f3393s0) (.cons (f3393s1) (.cons (f3393s2) (.cons (f3393s3) (.cons (f3393s4) (.cons (f3393s5) (.cons (f3393s6) (.cons (f3393s7) (.cons (f3393s8) (.cons (f3393s9) (.cons (f3393s10) (.cons (f3393s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
