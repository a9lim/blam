import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3398 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,1,1,2]
certRow f3398s0 on (rf3398 0) using bank tags []
certRow f3398s1 on (rf3398 1) using bank tags []
certRow f3398s2 on (rf3398 2) using bank tags []
certRow f3398s3 on (rf3398 3) using bank tags []
certRow f3398s4 on (rf3398 4) using bank tags []
certRow f3398s5 on (rf3398 5) using bank tags []
certRow f3398s6 on (rf3398 6) using bank tags []
certRow f3398s7 on (rf3398 7) using bank tags []
certRow f3398s8 on (rf3398 8) using bank tags []
certRow f3398s9 on (rf3398 9) using bank tags []
certRow f3398s10 on (rf3398 10) using bank tags []
certRow f3398s11 on (rf3398 11) using bank tags []
theorem f3398 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,1,1,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,1,1,2] (.cons (f3398s0) (.cons (f3398s1) (.cons (f3398s2) (.cons (f3398s3) (.cons (f3398s4) (.cons (f3398s5) (.cons (f3398s6) (.cons (f3398s7) (.cons (f3398s8) (.cons (f3398s9) (.cons (f3398s10) (.cons (f3398s11) .nil))))))))))))
private abbrev rf3399 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,1,2,1]
certRow f3399s0 on (rf3399 0) using bank tags []
certRow f3399s1 on (rf3399 1) using bank tags []
certRow f3399s2 on (rf3399 2) using bank tags []
certRow f3399s3 on (rf3399 3) using bank tags []
certRow f3399s4 on (rf3399 4) using bank tags []
certRow f3399s5 on (rf3399 5) using bank tags []
certRow f3399s6 on (rf3399 6) using bank tags []
certRow f3399s7 on (rf3399 7) using bank tags []
certRow f3399s8 on (rf3399 8) using bank tags []
certRow f3399s9 on (rf3399 9) using bank tags []
certRow f3399s10 on (rf3399 10) using bank tags []
certRow f3399s11 on (rf3399 11) using bank tags []
theorem f3399 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,1,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,1,2,1] (.cons (f3399s0) (.cons (f3399s1) (.cons (f3399s2) (.cons (f3399s3) (.cons (f3399s4) (.cons (f3399s5) (.cons (f3399s6) (.cons (f3399s7) (.cons (f3399s8) (.cons (f3399s9) (.cons (f3399s10) (.cons (f3399s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
