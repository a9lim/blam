import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf779 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,3,0,0,2]
certRow f779s0 on (rf779 0) using bank tags [3]
certRow f779s1 on (rf779 1) using bank tags [28,28,28,28,28,28]
certRow f779s2 on (rf779 2) using bank tags [3,3,28]
certRow f779s3 on (rf779 3) using bank tags [28,28,28,28,28]
certRow f779s4 on (rf779 4) using bank tags [3,3,3,3,3,28,28]
certRow f779s5 on (rf779 5) using bank tags [28,28,28,28]
certRow f779s6 on (rf779 6) using bank tags [3,3,3,3,3,3,3,28,28]
certRow f779s7 on (rf779 7) using bank tags [28,28,28,28,1,1,44,24,1]
theorem f779 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,3,0,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,3,0,0,2] (.cons (f779s0) (.cons (f779s1) (.cons (f779s2) (.cons (f779s3) (.cons (f779s4) (.cons (f779s5) (.cons (f779s6) (.cons (f779s7) .nil))))))))
private abbrev rf780 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,3,0,1,1]
certRow f780s0 on (rf780 0) using bank tags [3]
certRow f780s1 on (rf780 1) using bank tags [3,3,3,3,3,28,28,28,28,28,3,3,28]
certRow f780s2 on (rf780 2) using bank tags [3,3,28,28,28,3,28,28,3]
certRow f780s3 on (rf780 3) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28]
certRow f780s4 on (rf780 4) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28]
certRow f780s5 on (rf780 5) using bank tags [28,28,28,28,28]
certRow f780s6 on (rf780 6) using bank tags [3,3,28,28,28]
certRow f780s7 on (rf780 7) using bank tags [28,28,28,1,1,1,44,1,44,24,1]
theorem f780 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,3,0,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,3,0,1,1] (.cons (f780s0) (.cons (f780s1) (.cons (f780s2) (.cons (f780s3) (.cons (f780s4) (.cons (f780s5) (.cons (f780s6) (.cons (f780s7) .nil))))))))
private abbrev rf781 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,3,0,2,0]
certRow f781s0 on (rf781 0) using bank tags [3]
certRow f781s1 on (rf781 1) using bank tags [3,3]
certRow f781s2 on (rf781 2) using bank tags [28,28,28,3,28,28,3,28]
certRow f781s3 on (rf781 3) using bank tags [28,28,28]
certRow f781s4 on (rf781 4) using bank tags [3,3,3,3,3]
certRow f781s5 on (rf781 5) using bank tags [28,28,28,28,28]
certRow f781s6 on (rf781 6) using bank tags [3,3,3,3,3,3,3,28]
certRow f781s7 on (rf781 7) using bank tags [28,28,1,1,44]
theorem f781 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,3,0,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,3,0,2,0] (.cons (f781s0) (.cons (f781s1) (.cons (f781s2) (.cons (f781s3) (.cons (f781s4) (.cons (f781s5) (.cons (f781s6) (.cons (f781s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
