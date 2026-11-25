import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf930 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [0,2,3,3]
certRow f930s0 on (rf930 0) using bank tags [3,3,28,28,28]
certRow f930s1 on (rf930 1) using bank tags [3,3,28,28,28,14,6]
certRow f930s2 on (rf930 2) using bank tags [3,3,3,3,28,28,57,6,1]
certRow f930s3 on (rf930 3) using bank tags [3,3,24,18,24]
certRow f930s4 on (rf930 4) using bank tags [3,3,28]
certRow f930s5 on (rf930 5) using bank tags [3,28,28,28,28]
certRow f930s6 on (rf930 6) using bank tags []
certRow f930s7 on (rf930 7) using bank tags [3]
theorem f930 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,2,3,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [0,2,3,3] (.cons (f930s0) (.cons (f930s1) (.cons (f930s2) (.cons (f930s3) (.cons (f930s4) (.cons (f930s5) (.cons (f930s6) (.cons (f930s7) .nil))))))))
private abbrev rf931 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [0,2,4,2]
certRow f931s0 on (rf931 0) using bank tags [28]
certRow f931s1 on (rf931 1) using bank tags [3,28,28,3]
certRow f931s2 on (rf931 2) using bank tags [3,3,3,28,28,14,6]
certRow f931s3 on (rf931 3) using bank tags [3,3,3,28,28,28,57,6,1,13,24]
certRow f931s4 on (rf931 4) using bank tags [28]
certRow f931s5 on (rf931 5) using bank tags [28,28,3,28]
certRow f931s6 on (rf931 6) using bank tags []
certRow f931s7 on (rf931 7) using bank tags []
theorem f931 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,2,4,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [0,2,4,2] (.cons (f931s0) (.cons (f931s1) (.cons (f931s2) (.cons (f931s3) (.cons (f931s4) (.cons (f931s5) (.cons (f931s6) (.cons (f931s7) .nil))))))))
certRow f932 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,2,5,1]) using bank tags [28,28,28,28,28,28,28,28,28,28,14,6,13,13]
certRow f933 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,3,0,5]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,13,13,1,24]
private abbrev rf934 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [0,3,1,4]
certRow f934s0 on (rf934 0) using bank tags [28,28,28]
certRow f934s1 on (rf934 1) using bank tags [3,3,28,6]
certRow f934s2 on (rf934 2) using bank tags [28,28,28]
certRow f934s3 on (rf934 3) using bank tags [3,3,24,24,6,11]
certRow f934s4 on (rf934 4) using bank tags [28]
certRow f934s5 on (rf934 5) using bank tags [3,3,28,28,6,3,3,28,28,28,28]
certRow f934s6 on (rf934 6) using bank tags []
certRow f934s7 on (rf934 7) using bank tags [3]
theorem f934 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,3,1,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [0,3,1,4] (.cons (f934s0) (.cons (f934s1) (.cons (f934s2) (.cons (f934s3) (.cons (f934s4) (.cons (f934s5) (.cons (f934s6) (.cons (f934s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
