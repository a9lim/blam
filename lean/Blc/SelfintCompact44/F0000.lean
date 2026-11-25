import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f0 on (Grammar43.fourRow ⟨0,2,0,2,5,10⟩ [0,0] [2,2,2,2,2]) using bank tags []
certRow f1 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,0,0,2,2,2]) using bank tags []
private abbrev rf2 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,0,1,1,2,2]
certRow f2s0 on (rf2 0) using bank tags []
certRow f2s1 on (rf2 1) using bank tags [1,1,1,1,1,1,1,1,1]
certRow f2s2 on (rf2 2) using bank tags []
certRow f2s3 on (rf2 3) using bank tags [1,1,6,6,1,1,1,1,1,1,1,1,1]
certRow f2s4 on (rf2 4) using bank tags [6,6,22,6,6]
certRow f2s5 on (rf2 5) using bank tags [1,1,1,1,1,6,6,1,6,1,1,22,1,6]
certRow f2s6 on (rf2 6) using bank tags []
certRow f2s7 on (rf2 7) using bank tags [1,1,1,1,1,1,1,1,1]
theorem f2 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,0,1,1,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,0,1,1,2,2] (.cons (f2s0) (.cons (f2s1) (.cons (f2s2) (.cons (f2s3) (.cons (f2s4) (.cons (f2s5) (.cons (f2s6) (.cons (f2s7) .nil))))))))
private abbrev rf3 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,0,1,2,1,2]
certRow f3s0 on (rf3 0) using bank tags []
certRow f3s1 on (rf3 1) using bank tags [1,1,1,1,1,1,1,1]
certRow f3s2 on (rf3 2) using bank tags []
certRow f3s3 on (rf3 3) using bank tags [6,6,22,22,1,1,1,1,1,1,1,1]
certRow f3s4 on (rf3 4) using bank tags [1,1,22]
certRow f3s5 on (rf3 5) using bank tags [1,1,1,1,1,6,6,1,22,1,1,6,1,6]
certRow f3s6 on (rf3 6) using bank tags []
certRow f3s7 on (rf3 7) using bank tags [1,1,1,1,1,1,1,1]
theorem f3 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,0,1,2,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,0,1,2,1,2] (.cons (f3s0) (.cons (f3s1) (.cons (f3s2) (.cons (f3s3) (.cons (f3s4) (.cons (f3s5) (.cons (f3s6) (.cons (f3s7) .nil))))))))
private abbrev rf4 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,0,1,2,2,1]
certRow f4s0 on (rf4 0) using bank tags [1,1,1]
certRow f4s1 on (rf4 1) using bank tags [1,1,1,1,1,1,1,1,1]
certRow f4s2 on (rf4 2) using bank tags []
certRow f4s3 on (rf4 3) using bank tags [6,6,22,22,1,1,1,1,1,1,1,1,1]
certRow f4s4 on (rf4 4) using bank tags [6,6,22,6,177]
certRow f4s5 on (rf4 5) using bank tags [1,1,1,1,1,6,6,1,22,1,1,6,1,35]
certRow f4s6 on (rf4 6) using bank tags []
certRow f4s7 on (rf4 7) using bank tags [31,1,1,1,1,1,1,1,1]
theorem f4 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,0,1,2,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,0,1,2,2,1] (.cons (f4s0) (.cons (f4s1) (.cons (f4s2) (.cons (f4s3) (.cons (f4s4) (.cons (f4s5) (.cons (f4s6) (.cons (f4s7) .nil))))))))
certRow f5 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,0,2,0,2,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
