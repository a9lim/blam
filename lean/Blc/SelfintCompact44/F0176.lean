import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf977 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [2,0,3,3]
certRow f977s0 on (rf977 0) using bank tags [28,1,1]
certRow f977s1 on (rf977 1) using bank tags [3,3,3,3,3,3,1,27]
certRow f977s2 on (rf977 2) using bank tags [3,3,3,27,27]
certRow f977s3 on (rf977 3) using bank tags [3,3,19,18]
certRow f977s4 on (rf977 4) using bank tags [3,3,3,3,28]
certRow f977s5 on (rf977 5) using bank tags [3,3,3]
certRow f977s6 on (rf977 6) using bank tags []
certRow f977s7 on (rf977 7) using bank tags [3]
theorem f977 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,0,3,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [2,0,3,3] (.cons (f977s0) (.cons (f977s1) (.cons (f977s2) (.cons (f977s3) (.cons (f977s4) (.cons (f977s5) (.cons (f977s6) (.cons (f977s7) .nil))))))))
certRow f978 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,0,4,2]) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,1,24,1,1,1,27,27,27]
certRow f979 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,0,5,1]) using bank tags [28,28,13,1,24,1,1,27]
certRow f980 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,1,0,5]) using bank tags [13,13,1,1,26,1,1,1,27,27,27]
private abbrev rf981 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [2,1,1,4]
certRow f981s0 on (rf981 0) using bank tags [28,28,28,28,1]
certRow f981s1 on (rf981 1) using bank tags [3,27,27,27]
certRow f981s2 on (rf981 2) using bank tags [3,3,28]
certRow f981s3 on (rf981 3) using bank tags [3,3,3,18,1]
certRow f981s4 on (rf981 4) using bank tags [3,3,3,3,28]
certRow f981s5 on (rf981 5) using bank tags [3,3,3,28,27]
certRow f981s6 on (rf981 6) using bank tags []
certRow f981s7 on (rf981 7) using bank tags [3,3]
theorem f981 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,1,1,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [2,1,1,4] (.cons (f981s0) (.cons (f981s1) (.cons (f981s2) (.cons (f981s3) (.cons (f981s4) (.cons (f981s5) (.cons (f981s6) (.cons (f981s7) .nil))))))))
private abbrev rf982 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [2,1,2,3]
certRow f982s0 on (rf982 0) using bank tags [3,3,3,3,28,28,28,28,28,14,1,1]
certRow f982s1 on (rf982 1) using bank tags [3,3,3,3,28,28,27]
certRow f982s2 on (rf982 2) using bank tags [3,3,3,27,27,27]
certRow f982s3 on (rf982 3) using bank tags [3,3,1]
certRow f982s4 on (rf982 4) using bank tags [3,3,3,28,27]
certRow f982s5 on (rf982 5) using bank tags [3,3,3,28,28,27]
certRow f982s6 on (rf982 6) using bank tags []
certRow f982s7 on (rf982 7) using bank tags []
theorem f982 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [2,1,2,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [2,1,2,3] (.cons (f982s0) (.cons (f982s1) (.cons (f982s2) (.cons (f982s3) (.cons (f982s4) (.cons (f982s5) (.cons (f982s6) (.cons (f982s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
