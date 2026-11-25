import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3394 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,0,2,2]
certRow f3394s0 on (rf3394 0) using bank tags []
certRow f3394s1 on (rf3394 1) using bank tags []
certRow f3394s2 on (rf3394 2) using bank tags []
certRow f3394s3 on (rf3394 3) using bank tags []
certRow f3394s4 on (rf3394 4) using bank tags []
certRow f3394s5 on (rf3394 5) using bank tags []
certRow f3394s6 on (rf3394 6) using bank tags []
certRow f3394s7 on (rf3394 7) using bank tags []
certRow f3394s8 on (rf3394 8) using bank tags []
certRow f3394s9 on (rf3394 9) using bank tags []
certRow f3394s10 on (rf3394 10) using bank tags []
certRow f3394s11 on (rf3394 11) using bank tags []
theorem f3394 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,0,2,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,0,2,2] (.cons (f3394s0) (.cons (f3394s1) (.cons (f3394s2) (.cons (f3394s3) (.cons (f3394s4) (.cons (f3394s5) (.cons (f3394s6) (.cons (f3394s7) (.cons (f3394s8) (.cons (f3394s9) (.cons (f3394s10) (.cons (f3394s11) .nil))))))))))))
private abbrev rf3395 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,0,3,1]
certRow f3395s0 on (rf3395 0) using bank tags []
certRow f3395s1 on (rf3395 1) using bank tags []
certRow f3395s2 on (rf3395 2) using bank tags []
certRow f3395s3 on (rf3395 3) using bank tags []
certRow f3395s4 on (rf3395 4) using bank tags []
certRow f3395s5 on (rf3395 5) using bank tags []
certRow f3395s6 on (rf3395 6) using bank tags []
certRow f3395s7 on (rf3395 7) using bank tags []
certRow f3395s8 on (rf3395 8) using bank tags []
certRow f3395s9 on (rf3395 9) using bank tags []
certRow f3395s10 on (rf3395 10) using bank tags []
certRow f3395s11 on (rf3395 11) using bank tags []
theorem f3395 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,0,3,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,0,3,1] (.cons (f3395s0) (.cons (f3395s1) (.cons (f3395s2) (.cons (f3395s3) (.cons (f3395s4) (.cons (f3395s5) (.cons (f3395s6) (.cons (f3395s7) (.cons (f3395s8) (.cons (f3395s9) (.cons (f3395s10) (.cons (f3395s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
