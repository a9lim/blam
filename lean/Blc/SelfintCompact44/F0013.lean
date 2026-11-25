import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf55 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,0,1,2]
certRow f55s0 on (rf55 0) using bank tags []
certRow f55s1 on (rf55 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f55s2 on (rf55 2) using bank tags [1,1,1,1,1]
certRow f55s3 on (rf55 3) using bank tags [1,1,1,1,1,1,1,1,1]
certRow f55s4 on (rf55 4) using bank tags [1,1,1,1,1]
certRow f55s5 on (rf55 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f55s6 on (rf55 6) using bank tags []
certRow f55s7 on (rf55 7) using bank tags [35,35,19,35,19,19,19,19,19,35,19,19,19,19,6,6,6,6,6]
theorem f55 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,0,1,2] (.cons (f55s0) (.cons (f55s1) (.cons (f55s2) (.cons (f55s3) (.cons (f55s4) (.cons (f55s5) (.cons (f55s6) (.cons (f55s7) .nil))))))))
private abbrev rf56 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,0,2,1]
certRow f56s0 on (rf56 0) using bank tags []
certRow f56s1 on (rf56 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f56s2 on (rf56 2) using bank tags [1,1,1,1,1]
certRow f56s3 on (rf56 3) using bank tags [6,6,1,1,1,1,1,1,1]
certRow f56s4 on (rf56 4) using bank tags [1,1,1,1,1]
certRow f56s5 on (rf56 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f56s6 on (rf56 6) using bank tags []
certRow f56s7 on (rf56 7) using bank tags [35,19,19,19,19,19,19,19,19,19,19,19,19,19,6,6,6,6,6]
theorem f56 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,0,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,0,2,1] (.cons (f56s0) (.cons (f56s1) (.cons (f56s2) (.cons (f56s3) (.cons (f56s4) (.cons (f56s5) (.cons (f56s6) (.cons (f56s7) .nil))))))))
private abbrev rf57 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,1,0,2]
certRow f57s0 on (rf57 0) using bank tags []
certRow f57s1 on (rf57 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f57s2 on (rf57 2) using bank tags [1,1,1,1,1]
certRow f57s3 on (rf57 3) using bank tags [1,1,1,1,1,1,1,1,1]
certRow f57s4 on (rf57 4) using bank tags [6,6,1,1,1]
certRow f57s5 on (rf57 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f57s6 on (rf57 6) using bank tags []
certRow f57s7 on (rf57 7) using bank tags [35,35,35,35,35,19,19,6,19,35,35,19,6,19,6,6,6,6,6]
theorem f57 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,1,0,2] (.cons (f57s0) (.cons (f57s1) (.cons (f57s2) (.cons (f57s3) (.cons (f57s4) (.cons (f57s5) (.cons (f57s6) (.cons (f57s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
