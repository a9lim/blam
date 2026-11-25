import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf459 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [2,0,1,0,0,1]
certRow f459s0 on (rf459 0) using bank tags []
certRow f459s1 on (rf459 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28]
certRow f459s2 on (rf459 2) using bank tags [3,3,3,3,3,28,28,28,28]
certRow f459s3 on (rf459 3) using bank tags [3,3,3,3,28,28,28,28,28]
certRow f459s4 on (rf459 4) using bank tags [3,3,3,3,3,28,28,28]
certRow f459s5 on (rf459 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f459s6 on (rf459 6) using bank tags [28,28,28,28,28,28,28]
certRow f459s7 on (rf459 7) using bank tags []
certRow f459s8 on (rf459 8) using bank tags []
certRow f459s9 on (rf459 9) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f459s10 on (rf459 10) using bank tags []
certRow f459s11 on (rf459 11) using bank tags [28,28,28,28,28]
theorem f459 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,0,1,0,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [2,0,1,0,0,1] (.cons (f459s0) (.cons (f459s1) (.cons (f459s2) (.cons (f459s3) (.cons (f459s4) (.cons (f459s5) (.cons (f459s6) (.cons (f459s7) (.cons (f459s8) (.cons (f459s9) (.cons (f459s10) (.cons (f459s11) .nil))))))))))))
private abbrev rf460 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [2,0,1,0,1,0]
certRow f460s0 on (rf460 0) using bank tags [28,28,28]
certRow f460s1 on (rf460 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f460s2 on (rf460 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f460s3 on (rf460 3) using bank tags [3,3,3,3,28,28,28]
certRow f460s4 on (rf460 4) using bank tags [3,3,3,3,3]
certRow f460s5 on (rf460 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f460s6 on (rf460 6) using bank tags [28,28,28,28]
certRow f460s7 on (rf460 7) using bank tags []
theorem f460 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,0,1,0,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [2,0,1,0,1,0] (.cons (f460s0) (.cons (f460s1) (.cons (f460s2) (.cons (f460s3) (.cons (f460s4) (.cons (f460s5) (.cons (f460s6) (.cons (f460s7) .nil))))))))
private abbrev rf461 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [2,0,1,1,0,0]
certRow f461s0 on (rf461 0) using bank tags [28,28,28,28,28,28,28,28]
certRow f461s1 on (rf461 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f461s2 on (rf461 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f461s3 on (rf461 3) using bank tags [3,3,3,3,28,28]
certRow f461s4 on (rf461 4) using bank tags [3,3,3,3,3]
certRow f461s5 on (rf461 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f461s6 on (rf461 6) using bank tags [28,28,28,28]
certRow f461s7 on (rf461 7) using bank tags []
theorem f461 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,0,1,1,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [2,0,1,1,0,0] (.cons (f461s0) (.cons (f461s1) (.cons (f461s2) (.cons (f461s3) (.cons (f461s4) (.cons (f461s5) (.cons (f461s6) (.cons (f461s7) .nil))))))))
certRow f462 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,0,2,0,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
end Blc.SelfintSingleObject.Compact44
