import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf52 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,2,0,2]
certRow f52s0 on (rf52 0) using bank tags []
certRow f52s1 on (rf52 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f52s2 on (rf52 2) using bank tags [1,1,1,1,1]
certRow f52s3 on (rf52 3) using bank tags [1,1,1,1,1,1,1,1,1]
certRow f52s4 on (rf52 4) using bank tags [1,1,1,1,1]
certRow f52s5 on (rf52 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f52s6 on (rf52 6) using bank tags []
certRow f52s7 on (rf52 7) using bank tags [35,35,35,35,35,6,6,6,6,35,35,6,6,6,6,6,6,6,6]
theorem f52 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,2,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,2,0,2] (.cons (f52s0) (.cons (f52s1) (.cons (f52s2) (.cons (f52s3) (.cons (f52s4) (.cons (f52s5) (.cons (f52s6) (.cons (f52s7) .nil))))))))
private abbrev rf53 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,2,1,1]
certRow f53s0 on (rf53 0) using bank tags [6,6,6,6]
certRow f53s1 on (rf53 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f53s2 on (rf53 2) using bank tags [28,28,28,28,28]
certRow f53s3 on (rf53 3) using bank tags [28,28,28,28]
certRow f53s4 on (rf53 4) using bank tags [28,28,28,28,28,6]
certRow f53s5 on (rf53 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f53s6 on (rf53 6) using bank tags []
certRow f53s7 on (rf53 7) using bank tags [6,30,6,6,6,6,6,6,6]
theorem f53 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,2,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,2,1,1] (.cons (f53s0) (.cons (f53s1) (.cons (f53s2) (.cons (f53s3) (.cons (f53s4) (.cons (f53s5) (.cons (f53s6) (.cons (f53s7) .nil))))))))
private abbrev rf54 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,2,2,0]
certRow f54s0 on (rf54 0) using bank tags [6,6,6]
certRow f54s1 on (rf54 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f54s2 on (rf54 2) using bank tags [30,1,1,1,1]
certRow f54s3 on (rf54 3) using bank tags [1,1,30,1,1,1,1]
certRow f54s4 on (rf54 4) using bank tags [1,1,1,1,1]
certRow f54s5 on (rf54 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f54s6 on (rf54 6) using bank tags []
certRow f54s7 on (rf54 7) using bank tags [35,35,35,6,6,6,6,6,6,6,6,6,6]
theorem f54 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,2,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,1,2,2,0] (.cons (f54s0) (.cons (f54s1) (.cons (f54s2) (.cons (f54s3) (.cons (f54s4) (.cons (f54s5) (.cons (f54s6) (.cons (f54s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
