import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f948 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,0,2,5]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,14,1,28,28,14,1,1,13,1,13]
certRow f949 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,0,3,4]) using bank tags [3,3,3,3,3,3,28,3,3,3,3,3,28,28,28,1,28,1,1,1,13,13]
certRow f950 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,0,4,3]) using bank tags [3,3,3,3,28,3,28,3,28,3,28,28,28,1,28,1,1,1,13,13]
certRow f951 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,0,5,2]) using bank tags [28,28,28,28,28,28,28,1,1,1,13,1,13]
certRow f952 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,1,1,5]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,13,24,26]
certRow f953 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,1,2,4]) using bank tags [3,3,3,3,3,28,3,3,3,3,3,3,28,3,3,28,28,3,3,3,28,28,28,14,28,1]
private abbrev rf954 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [1,1,3,3]
certRow f954s0 on (rf954 0) using bank tags [3,3,3,3,28,28,28,28]
certRow f954s1 on (rf954 1) using bank tags [3,3,3,28,28]
certRow f954s2 on (rf954 2) using bank tags [3,28,1]
certRow f954s3 on (rf954 3) using bank tags [3,3,3,3]
certRow f954s4 on (rf954 4) using bank tags [28]
certRow f954s5 on (rf954 5) using bank tags [3,3,3,28,26]
certRow f954s6 on (rf954 6) using bank tags []
certRow f954s7 on (rf954 7) using bank tags [3,3]
theorem f954 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,1,3,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [1,1,3,3] (.cons (f954s0) (.cons (f954s1) (.cons (f954s2) (.cons (f954s3) (.cons (f954s4) (.cons (f954s5) (.cons (f954s6) (.cons (f954s7) .nil))))))))
private abbrev rf955 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [1,1,4,2]
certRow f955s0 on (rf955 0) using bank tags [3,3,28,28]
certRow f955s1 on (rf955 1) using bank tags [3,28,28,3,3,28,3]
certRow f955s2 on (rf955 2) using bank tags [3,28]
certRow f955s3 on (rf955 3) using bank tags [3,3,3,3,28,1]
certRow f955s4 on (rf955 4) using bank tags [3,3,3,28]
certRow f955s5 on (rf955 5) using bank tags [3,3,28,28,24]
certRow f955s6 on (rf955 6) using bank tags []
certRow f955s7 on (rf955 7) using bank tags []
theorem f955 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,1,4,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [1,1,4,2] (.cons (f955s0) (.cons (f955s1) (.cons (f955s2) (.cons (f955s3) (.cons (f955s4) (.cons (f955s5) (.cons (f955s6) (.cons (f955s7) .nil))))))))
certRow f956 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,1,5,1]) using bank tags [28,28,28,28,28,28,28,28,28,13]
certRow f957 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,2,0,5]) using bank tags [28,28,28,28,28,28,1,57,6,57,1,13,13,1,24,13,13]
end Blc.SelfintSingleObject.Compact44
