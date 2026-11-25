import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3404 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,3,0,1]
certRow f3404s0 on (rf3404 0) using bank tags []
certRow f3404s1 on (rf3404 1) using bank tags []
certRow f3404s2 on (rf3404 2) using bank tags []
certRow f3404s3 on (rf3404 3) using bank tags []
certRow f3404s4 on (rf3404 4) using bank tags []
certRow f3404s5 on (rf3404 5) using bank tags []
certRow f3404s6 on (rf3404 6) using bank tags []
certRow f3404s7 on (rf3404 7) using bank tags []
certRow f3404s8 on (rf3404 8) using bank tags []
certRow f3404s9 on (rf3404 9) using bank tags []
certRow f3404s10 on (rf3404 10) using bank tags []
certRow f3404s11 on (rf3404 11) using bank tags []
theorem f3404 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,3,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,3,0,1] (.cons (f3404s0) (.cons (f3404s1) (.cons (f3404s2) (.cons (f3404s3) (.cons (f3404s4) (.cons (f3404s5) (.cons (f3404s6) (.cons (f3404s7) (.cons (f3404s8) (.cons (f3404s9) (.cons (f3404s10) (.cons (f3404s11) .nil))))))))))))
private abbrev rf3405 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,3,1,0]
certRow f3405s0 on (rf3405 0) using bank tags []
certRow f3405s1 on (rf3405 1) using bank tags []
certRow f3405s2 on (rf3405 2) using bank tags []
certRow f3405s3 on (rf3405 3) using bank tags []
certRow f3405s4 on (rf3405 4) using bank tags []
certRow f3405s5 on (rf3405 5) using bank tags []
certRow f3405s6 on (rf3405 6) using bank tags []
certRow f3405s7 on (rf3405 7) using bank tags []
certRow f3405s8 on (rf3405 8) using bank tags []
certRow f3405s9 on (rf3405 9) using bank tags []
certRow f3405s10 on (rf3405 10) using bank tags []
certRow f3405s11 on (rf3405 11) using bank tags []
theorem f3405 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,3,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,3,1,0] (.cons (f3405s0) (.cons (f3405s1) (.cons (f3405s2) (.cons (f3405s3) (.cons (f3405s4) (.cons (f3405s5) (.cons (f3405s6) (.cons (f3405s7) (.cons (f3405s8) (.cons (f3405s9) (.cons (f3405s10) (.cons (f3405s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
