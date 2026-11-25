import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf983 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [2,1,3,2]
certRow f983s0 on (rf983 0) using bank tags [3,3,28,28,1,1]
certRow f983s1 on (rf983 1) using bank tags [3,3,3,3,3]
certRow f983s2 on (rf983 2) using bank tags [3,3,3,28,27]
certRow f983s3 on (rf983 3) using bank tags [3,3,3,26,27,27,27]
certRow f983s4 on (rf983 4) using bank tags [3,3,3,3]
certRow f983s5 on (rf983 5) using bank tags [3,3,3,3,28]
certRow f983s6 on (rf983 6) using bank tags []
certRow f983s7 on (rf983 7) using bank tags [3,3]
theorem f983 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,1,3,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [2,1,3,2] (.cons (f983s0) (.cons (f983s1) (.cons (f983s2) (.cons (f983s3) (.cons (f983s4) (.cons (f983s5) (.cons (f983s6) (.cons (f983s7) .nil))))))))
certRow f984 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,1,4,1]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,28,28,3,24,28,1,28,27]
certRow f985 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,1,5,0]) using bank tags [28,28,13,1]
certRow f986 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,2,0,4]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,13,13,19,27,11,19,27]
private abbrev rf987 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [2,2,1,3]
certRow f987s0 on (rf987 0) using bank tags [3,3,28,28,13,13,13]
certRow f987s1 on (rf987 1) using bank tags [3,3,3,28,11,19]
certRow f987s2 on (rf987 2) using bank tags [3,3,3,3,27,27]
certRow f987s3 on (rf987 3) using bank tags [3]
certRow f987s4 on (rf987 4) using bank tags [3,3,3,3,19]
certRow f987s5 on (rf987 5) using bank tags [3,3,3,3,28]
certRow f987s6 on (rf987 6) using bank tags [3,27]
certRow f987s7 on (rf987 7) using bank tags []
theorem f987 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,2,1,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [2,2,1,3] (.cons (f987s0) (.cons (f987s1) (.cons (f987s2) (.cons (f987s3) (.cons (f987s4) (.cons (f987s5) (.cons (f987s6) (.cons (f987s7) .nil))))))))
certRow f988 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,2,2,2]) using bank tags [3,3,3,3,3,3,3,28,13,13,28,27,28,27,28,28,11,19,27,27,27]
certRow f989 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,2,3,1]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,13,13,28,28,28,11,19,27]
certRow f990 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,2,4,0]) using bank tags [3,3,3,3,3,13,28]
certRow f991 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,3,0,3]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,16,19,11,27,24,27]
certRow f992 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,3,1,2]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,3,3,1,18,11,28,27,24,27,27]
end Blc.SelfintSingleObject.Compact44
