import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf58 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,1,1,1]
certRow f58s0 on (rf58 0) using bank tags [19,6,19,19]
certRow f58s1 on (rf58 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f58s2 on (rf58 2) using bank tags [28,28,28,28,28]
certRow f58s3 on (rf58 3) using bank tags [28,28,28,28]
certRow f58s4 on (rf58 4) using bank tags [28,28,28,28,28,19]
certRow f58s5 on (rf58 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f58s6 on (rf58 6) using bank tags []
certRow f58s7 on (rf58 7) using bank tags [19,19,6,19,6,18,19,6,19]
theorem f58 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,1,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,1,1,1] (.cons (f58s0) (.cons (f58s1) (.cons (f58s2) (.cons (f58s3) (.cons (f58s4) (.cons (f58s5) (.cons (f58s6) (.cons (f58s7) .nil))))))))
private abbrev rf59 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,1,2,0]
certRow f59s0 on (rf59 0) using bank tags [19,6,19]
certRow f59s1 on (rf59 1) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f59s2 on (rf59 2) using bank tags [1,1,1,1,1]
certRow f59s3 on (rf59 3) using bank tags [1,1,1,1,1,1,1]
certRow f59s4 on (rf59 4) using bank tags [1,1,1,1,1]
certRow f59s5 on (rf59 5) using bank tags [1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f59s6 on (rf59 6) using bank tags []
certRow f59s7 on (rf59 7) using bank tags [35,35,35,19,19,6,19,19,6,19,6,6,6]
theorem f59 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,1,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,1,2,0] (.cons (f59s0) (.cons (f59s1) (.cons (f59s2) (.cons (f59s3) (.cons (f59s4) (.cons (f59s5) (.cons (f59s6) (.cons (f59s7) .nil))))))))
private abbrev rf60 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,2,0,1]
certRow f60s0 on (rf60 0) using bank tags []
certRow f60s1 on (rf60 1) using bank tags [1,31,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f60s2 on (rf60 2) using bank tags [30,31,1,1,1]
certRow f60s3 on (rf60 3) using bank tags [1,1,1,1,1,1,1,1,1]
certRow f60s4 on (rf60 4) using bank tags [1,1,1,1,1]
certRow f60s5 on (rf60 5) using bank tags [30,1,1,1,1,30,1,1,1,1,1,1,1,1]
certRow f60s6 on (rf60 6) using bank tags []
certRow f60s7 on (rf60 7) using bank tags [35,19,19,19,19,19,19,19,19,19,19,19,19,19,6,6,6,6,6]
theorem f60 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,2,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [1,0,2,2,0,1] (.cons (f60s0) (.cons (f60s1) (.cons (f60s2) (.cons (f60s3) (.cons (f60s4) (.cons (f60s5) (.cons (f60s6) (.cons (f60s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
