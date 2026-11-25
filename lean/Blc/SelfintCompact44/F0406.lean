import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3419 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [2,0,2,0]
certRow f3419s0 on (rf3419 0) using bank tags []
certRow f3419s1 on (rf3419 1) using bank tags []
certRow f3419s2 on (rf3419 2) using bank tags []
certRow f3419s3 on (rf3419 3) using bank tags []
certRow f3419s4 on (rf3419 4) using bank tags []
certRow f3419s5 on (rf3419 5) using bank tags []
certRow f3419s6 on (rf3419 6) using bank tags []
certRow f3419s7 on (rf3419 7) using bank tags []
certRow f3419s8 on (rf3419 8) using bank tags []
certRow f3419s9 on (rf3419 9) using bank tags []
certRow f3419s10 on (rf3419 10) using bank tags []
certRow f3419s11 on (rf3419 11) using bank tags []
theorem f3419 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [2,0,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [2,0,2,0] (.cons (f3419s0) (.cons (f3419s1) (.cons (f3419s2) (.cons (f3419s3) (.cons (f3419s4) (.cons (f3419s5) (.cons (f3419s6) (.cons (f3419s7) (.cons (f3419s8) (.cons (f3419s9) (.cons (f3419s10) (.cons (f3419s11) .nil))))))))))))
private abbrev rf3420 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [2,1,0,1]
certRow f3420s0 on (rf3420 0) using bank tags []
certRow f3420s1 on (rf3420 1) using bank tags []
certRow f3420s2 on (rf3420 2) using bank tags []
certRow f3420s3 on (rf3420 3) using bank tags []
certRow f3420s4 on (rf3420 4) using bank tags []
certRow f3420s5 on (rf3420 5) using bank tags []
certRow f3420s6 on (rf3420 6) using bank tags []
certRow f3420s7 on (rf3420 7) using bank tags []
certRow f3420s8 on (rf3420 8) using bank tags []
certRow f3420s9 on (rf3420 9) using bank tags []
certRow f3420s10 on (rf3420 10) using bank tags []
certRow f3420s11 on (rf3420 11) using bank tags []
theorem f3420 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [2,1,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [2,1,0,1] (.cons (f3420s0) (.cons (f3420s1) (.cons (f3420s2) (.cons (f3420s3) (.cons (f3420s4) (.cons (f3420s5) (.cons (f3420s6) (.cons (f3420s7) (.cons (f3420s8) (.cons (f3420s9) (.cons (f3420s10) (.cons (f3420s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
