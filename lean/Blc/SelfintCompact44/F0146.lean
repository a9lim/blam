import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf760 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,1,1,2]
certRow f760s0 on (rf760 0) using bank tags [3,3,3,3]
certRow f760s1 on (rf760 1) using bank tags [11]
certRow f760s2 on (rf760 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f760s3 on (rf760 3) using bank tags [3,3,3,3,3,3]
certRow f760s4 on (rf760 4) using bank tags [3,3,3,3,3,3,3]
certRow f760s5 on (rf760 5) using bank tags [3,28,28,28,28,28,28,28,28]
certRow f760s6 on (rf760 6) using bank tags [3,3,28]
certRow f760s7 on (rf760 7) using bank tags [1]
theorem f760 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,1,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,1,1,2] (.cons (f760s0) (.cons (f760s1) (.cons (f760s2) (.cons (f760s3) (.cons (f760s4) (.cons (f760s5) (.cons (f760s6) (.cons (f760s7) .nil))))))))
private abbrev rf761 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,1,2,1]
certRow f761s0 on (rf761 0) using bank tags [3,3,3,3]
certRow f761s1 on (rf761 1) using bank tags [3,28,28,28,28,11]
certRow f761s2 on (rf761 2) using bank tags [3,3,3,3,3,3,3,28,28,28,1]
certRow f761s3 on (rf761 3) using bank tags [3,3,3,3,3,3,3]
certRow f761s4 on (rf761 4) using bank tags [3,3,3,3,3,3,28,28,28,28,28,28]
certRow f761s5 on (rf761 5) using bank tags [3,3,28]
certRow f761s6 on (rf761 6) using bank tags [3,3,28,28]
certRow f761s7 on (rf761 7) using bank tags [3,3,6,1]
theorem f761 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,1,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,1,2,1] (.cons (f761s0) (.cons (f761s1) (.cons (f761s2) (.cons (f761s3) (.cons (f761s4) (.cons (f761s5) (.cons (f761s6) (.cons (f761s7) .nil))))))))
private abbrev rf762 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,1,1,3,0]
certRow f762s0 on (rf762 0) using bank tags [28,28,28,28]
certRow f762s1 on (rf762 1) using bank tags [3,3,3,3,3,3]
certRow f762s2 on (rf762 2) using bank tags [3,3,3,3,3,28,3,28,28,28,28,28,3,28]
certRow f762s3 on (rf762 3) using bank tags [3,3,3,28,3,3,3,28]
certRow f762s4 on (rf762 4) using bank tags [3,3,3,3,3,3,1]
certRow f762s5 on (rf762 5) using bank tags [3,28,28,28,28,28,28,28]
certRow f762s6 on (rf762 6) using bank tags [28,28,28]
certRow f762s7 on (rf762 7) using bank tags [1,1,1]
theorem f762 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,1,1,3,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,1,1,3,0] (.cons (f762s0) (.cons (f762s1) (.cons (f762s2) (.cons (f762s3) (.cons (f762s4) (.cons (f762s5) (.cons (f762s6) (.cons (f762s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
