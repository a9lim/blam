import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3413 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [1,1,2,0]
certRow f3413s0 on (rf3413 0) using bank tags []
certRow f3413s1 on (rf3413 1) using bank tags []
certRow f3413s2 on (rf3413 2) using bank tags []
certRow f3413s3 on (rf3413 3) using bank tags []
certRow f3413s4 on (rf3413 4) using bank tags []
certRow f3413s5 on (rf3413 5) using bank tags []
certRow f3413s6 on (rf3413 6) using bank tags []
certRow f3413s7 on (rf3413 7) using bank tags []
certRow f3413s8 on (rf3413 8) using bank tags []
certRow f3413s9 on (rf3413 9) using bank tags []
certRow f3413s10 on (rf3413 10) using bank tags []
certRow f3413s11 on (rf3413 11) using bank tags []
theorem f3413 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [1,1,2,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [1,1,2,0] (.cons (f3413s0) (.cons (f3413s1) (.cons (f3413s2) (.cons (f3413s3) (.cons (f3413s4) (.cons (f3413s5) (.cons (f3413s6) (.cons (f3413s7) (.cons (f3413s8) (.cons (f3413s9) (.cons (f3413s10) (.cons (f3413s11) .nil))))))))))))
private abbrev rf3414 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [1,2,0,1]
certRow f3414s0 on (rf3414 0) using bank tags []
certRow f3414s1 on (rf3414 1) using bank tags []
certRow f3414s2 on (rf3414 2) using bank tags []
certRow f3414s3 on (rf3414 3) using bank tags []
certRow f3414s4 on (rf3414 4) using bank tags []
certRow f3414s5 on (rf3414 5) using bank tags []
certRow f3414s6 on (rf3414 6) using bank tags []
certRow f3414s7 on (rf3414 7) using bank tags []
certRow f3414s8 on (rf3414 8) using bank tags []
certRow f3414s9 on (rf3414 9) using bank tags []
certRow f3414s10 on (rf3414 10) using bank tags []
certRow f3414s11 on (rf3414 11) using bank tags []
theorem f3414 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [1,2,0,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [1,2,0,1] (.cons (f3414s0) (.cons (f3414s1) (.cons (f3414s2) (.cons (f3414s3) (.cons (f3414s4) (.cons (f3414s5) (.cons (f3414s6) (.cons (f3414s7) (.cons (f3414s8) (.cons (f3414s9) (.cons (f3414s10) (.cons (f3414s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
