import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf67 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,2,2,0]
certRow f67s0 on (rf67 0) using bank tags [1,1,1,1,1]
certRow f67s1 on (rf67 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f67s2 on (rf67 2) using bank tags [1,1,1,1,1]
certRow f67s3 on (rf67 3) using bank tags [1,1,1,1]
certRow f67s4 on (rf67 4) using bank tags [1,1,1,1,1]
certRow f67s5 on (rf67 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f67s6 on (rf67 6) using bank tags []
certRow f67s7 on (rf67 7) using bank tags [1,1,1,1,1,6,6,6,6,1,1,1,1,1]
theorem f67 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,2,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,0,2,2,0] (.cons (f67s0) (.cons (f67s1) (.cons (f67s2) (.cons (f67s3) (.cons (f67s4) (.cons (f67s5) (.cons (f67s6) (.cons (f67s7) .nil))))))))
private abbrev rf68 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,0,1,2]
certRow f68s0 on (rf68 0) using bank tags []
certRow f68s1 on (rf68 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f68s2 on (rf68 2) using bank tags [28,28,28,28,28]
certRow f68s3 on (rf68 3) using bank tags [28,28,28,28,19,19,19,19,19,19]
certRow f68s4 on (rf68 4) using bank tags [28,28,28,28,28]
certRow f68s5 on (rf68 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f68s6 on (rf68 6) using bank tags []
certRow f68s7 on (rf68 7) using bank tags [1,1,1,1,1,6,6,1,1,1,1,1,1,1,35,35,35,35,35,35,19,19,19]
theorem f68 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,0,1,2] (.cons (f68s0) (.cons (f68s1) (.cons (f68s2) (.cons (f68s3) (.cons (f68s4) (.cons (f68s5) (.cons (f68s6) (.cons (f68s7) .nil))))))))
private abbrev rf69 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,0,2,1]
certRow f69s0 on (rf69 0) using bank tags [1,1,1,1,1,6,6,19,19]
certRow f69s1 on (rf69 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f69s2 on (rf69 2) using bank tags [28,28,28,28,28]
certRow f69s3 on (rf69 3) using bank tags [28,28,28,28,19,19,19,19,19,19]
certRow f69s4 on (rf69 4) using bank tags [28,28,28,28,28]
certRow f69s5 on (rf69 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f69s6 on (rf69 6) using bank tags []
certRow f69s7 on (rf69 7) using bank tags [1,1,1,1,1,6,6,6,6,1,1,1,1,1,35,35,35,35,35,19,19,6,6,19,19]
theorem f69 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,0,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,1,1,0,2,1] (.cons (f69s0) (.cons (f69s1) (.cons (f69s2) (.cons (f69s3) (.cons (f69s4) (.cons (f69s5) (.cons (f69s6) (.cons (f69s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
