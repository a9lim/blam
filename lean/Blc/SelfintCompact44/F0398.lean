import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3402 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,2,1,1]
certRow f3402s0 on (rf3402 0) using bank tags []
certRow f3402s1 on (rf3402 1) using bank tags []
certRow f3402s2 on (rf3402 2) using bank tags []
certRow f3402s3 on (rf3402 3) using bank tags []
certRow f3402s4 on (rf3402 4) using bank tags []
certRow f3402s5 on (rf3402 5) using bank tags []
certRow f3402s6 on (rf3402 6) using bank tags []
certRow f3402s7 on (rf3402 7) using bank tags []
certRow f3402s8 on (rf3402 8) using bank tags []
certRow f3402s9 on (rf3402 9) using bank tags []
certRow f3402s10 on (rf3402 10) using bank tags []
certRow f3402s11 on (rf3402 11) using bank tags []
theorem f3402 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,2,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,2,1,1] (.cons (f3402s0) (.cons (f3402s1) (.cons (f3402s2) (.cons (f3402s3) (.cons (f3402s4) (.cons (f3402s5) (.cons (f3402s6) (.cons (f3402s7) (.cons (f3402s8) (.cons (f3402s9) (.cons (f3402s10) (.cons (f3402s11) .nil))))))))))))
private abbrev rf3403 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [0,2,2,0]
certRow f3403s0 on (rf3403 0) using bank tags []
certRow f3403s1 on (rf3403 1) using bank tags []
certRow f3403s2 on (rf3403 2) using bank tags []
certRow f3403s3 on (rf3403 3) using bank tags []
certRow f3403s4 on (rf3403 4) using bank tags []
certRow f3403s5 on (rf3403 5) using bank tags []
certRow f3403s6 on (rf3403 6) using bank tags []
certRow f3403s7 on (rf3403 7) using bank tags []
certRow f3403s8 on (rf3403 8) using bank tags []
certRow f3403s9 on (rf3403 9) using bank tags []
certRow f3403s10 on (rf3403 10) using bank tags []
certRow f3403s11 on (rf3403 11) using bank tags []
theorem f3403 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [0,2,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [0,2,2,0] (.cons (f3403s0) (.cons (f3403s1) (.cons (f3403s2) (.cons (f3403s3) (.cons (f3403s4) (.cons (f3403s5) (.cons (f3403s6) (.cons (f3403s7) (.cons (f3403s8) (.cons (f3403s9) (.cons (f3403s10) (.cons (f3403s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
