import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3417 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [2,0,0,2]
certRow f3417s0 on (rf3417 0) using bank tags []
certRow f3417s1 on (rf3417 1) using bank tags []
certRow f3417s2 on (rf3417 2) using bank tags []
certRow f3417s3 on (rf3417 3) using bank tags []
certRow f3417s4 on (rf3417 4) using bank tags []
certRow f3417s5 on (rf3417 5) using bank tags []
certRow f3417s6 on (rf3417 6) using bank tags []
certRow f3417s7 on (rf3417 7) using bank tags []
certRow f3417s8 on (rf3417 8) using bank tags []
certRow f3417s9 on (rf3417 9) using bank tags []
certRow f3417s10 on (rf3417 10) using bank tags []
certRow f3417s11 on (rf3417 11) using bank tags []
theorem f3417 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [2,0,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [2,0,0,2] (.cons (f3417s0) (.cons (f3417s1) (.cons (f3417s2) (.cons (f3417s3) (.cons (f3417s4) (.cons (f3417s5) (.cons (f3417s6) (.cons (f3417s7) (.cons (f3417s8) (.cons (f3417s9) (.cons (f3417s10) (.cons (f3417s11) .nil))))))))))))
private abbrev rf3418 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [2,0,1,1]
certRow f3418s0 on (rf3418 0) using bank tags []
certRow f3418s1 on (rf3418 1) using bank tags []
certRow f3418s2 on (rf3418 2) using bank tags []
certRow f3418s3 on (rf3418 3) using bank tags []
certRow f3418s4 on (rf3418 4) using bank tags []
certRow f3418s5 on (rf3418 5) using bank tags []
certRow f3418s6 on (rf3418 6) using bank tags []
certRow f3418s7 on (rf3418 7) using bank tags []
certRow f3418s8 on (rf3418 8) using bank tags []
certRow f3418s9 on (rf3418 9) using bank tags []
certRow f3418s10 on (rf3418 10) using bank tags []
certRow f3418s11 on (rf3418 11) using bank tags []
theorem f3418 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [2,0,1,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [2,0,1,1] (.cons (f3418s0) (.cons (f3418s1) (.cons (f3418s2) (.cons (f3418s3) (.cons (f3418s4) (.cons (f3418s5) (.cons (f3418s6) (.cons (f3418s7) (.cons (f3418s8) (.cons (f3418s9) (.cons (f3418s10) (.cons (f3418s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
