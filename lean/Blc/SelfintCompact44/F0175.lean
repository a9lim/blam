import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf965 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [1,3,2,2]
certRow f965s0 on (rf965 0) using bank tags [3,3,28]
certRow f965s1 on (rf965 1) using bank tags [3,3,3,3,28,28,3,3]
certRow f965s2 on (rf965 2) using bank tags [28]
certRow f965s3 on (rf965 3) using bank tags [3,3,3,3,3,28,28,1,1]
certRow f965s4 on (rf965 4) using bank tags [3,3,28]
certRow f965s5 on (rf965 5) using bank tags [3,28,57,24,13,13]
certRow f965s6 on (rf965 6) using bank tags []
certRow f965s7 on (rf965 7) using bank tags [3,1]
theorem f965 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,3,2,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [1,3,2,2] (.cons (f965s0) (.cons (f965s1) (.cons (f965s2) (.cons (f965s3) (.cons (f965s4) (.cons (f965s5) (.cons (f965s6) (.cons (f965s7) .nil))))))))
certRow f966 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,3,3,1]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28]
certRow f967 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,3,4,0]) using bank tags [3,3,3]
certRow f968 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,4,0,3]) using bank tags [3,3,3,3,28,28,3,3,6,1,1,11]
certRow f969 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,4,1,2]) using bank tags [3,3,3,3,3,3,3,28,28,28,3,3,28,28,28,28,3,3,28,1,13,11]
certRow f970 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,4,2,1]) using bank tags [3,3,3,3,3,28,28,28,3,3,28,28,3,28,3,28,57,28,13,18]
certRow f971 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,4,3,0]) using bank tags [3,3,3,28]
certRow f972 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,5,0,2]) using bank tags [28,28,6,1,13,13]
certRow f973 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,5,1,1]) using bank tags [28,28,28]
certRow f974 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,5,2,0]) using bank tags [28,28,57,13]
certRow f975 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,0,1,5]) using bank tags [28,28,28,28,13,1,1,1,1,27,27,27]
private abbrev rf976 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [2,0,2,4]
certRow f976s0 on (rf976 0) using bank tags [28,28,14,1,1,1,27]
certRow f976s1 on (rf976 1) using bank tags [3,3,3,3,3,27,27]
certRow f976s2 on (rf976 2) using bank tags [3]
certRow f976s3 on (rf976 3) using bank tags [3,3,1,1]
certRow f976s4 on (rf976 4) using bank tags [3,3,3,28,28,27]
certRow f976s5 on (rf976 5) using bank tags [3,3]
certRow f976s6 on (rf976 6) using bank tags []
certRow f976s7 on (rf976 7) using bank tags [3]
theorem f976 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,0,2,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [2,0,2,4] (.cons (f976s0) (.cons (f976s1) (.cons (f976s2) (.cons (f976s3) (.cons (f976s4) (.cons (f976s5) (.cons (f976s6) (.cons (f976s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
