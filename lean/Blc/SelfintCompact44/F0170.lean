import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f924 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,1,2,5]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,14,1,1,28,28,13,13,13,1,24]
certRow f925 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,1,3,4]) using bank tags [3,3,3,3,28,28,28,3,3,28,3,28,28,28,28,1,1,3,28,28,13,1,1]
certRow f926 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,1,4,3]) using bank tags [3,3,3,28,28,3,28,28,28,3,28,28,28,28,28,1,1,3,28,28,28,13,1,1,24]
certRow f927 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,1,5,2]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,1,1,28,13,13,13,1]
private abbrev rf928 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [0,2,1,5]
certRow f928s0 on (rf928 0) using bank tags [28,28,57,6]
certRow f928s1 on (rf928 1) using bank tags [28,28,28]
certRow f928s2 on (rf928 2) using bank tags []
certRow f928s3 on (rf928 3) using bank tags [28,28,28,13,13,13,13,13,24,1,6]
certRow f928s4 on (rf928 4) using bank tags [28,28,28,6]
certRow f928s5 on (rf928 5) using bank tags [28,28,28,28,28,28]
certRow f928s6 on (rf928 6) using bank tags []
certRow f928s7 on (rf928 7) using bank tags [28]
theorem f928 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,2,1,5]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [0,2,1,5] (.cons (f928s0) (.cons (f928s1) (.cons (f928s2) (.cons (f928s3) (.cons (f928s4) (.cons (f928s5) (.cons (f928s6) (.cons (f928s7) .nil))))))))
private abbrev rf929 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [0,2,2,4]
certRow f929s0 on (rf929 0) using bank tags [28,28,28,22,22]
certRow f929s1 on (rf929 1) using bank tags [3,3,3,28,28,57,6,1]
certRow f929s2 on (rf929 2) using bank tags [3,28]
certRow f929s3 on (rf929 3) using bank tags [3,3,3,28,13,18,24]
certRow f929s4 on (rf929 4) using bank tags [3,28,28,57]
certRow f929s5 on (rf929 5) using bank tags [28,28,28,14,3,28,28]
certRow f929s6 on (rf929 6) using bank tags []
certRow f929s7 on (rf929 7) using bank tags [3]
theorem f929 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,2,2,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [0,2,2,4] (.cons (f929s0) (.cons (f929s1) (.cons (f929s2) (.cons (f929s3) (.cons (f929s4) (.cons (f929s5) (.cons (f929s6) (.cons (f929s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
