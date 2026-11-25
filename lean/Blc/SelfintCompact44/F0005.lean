import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf24 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,1,2,0]
certRow f24s0 on (rf24 0) using bank tags []
certRow f24s1 on (rf24 1) using bank tags [1,1,1,1,1,1,1,1]
certRow f24s2 on (rf24 2) using bank tags [1,1,1,1,1]
certRow f24s3 on (rf24 3) using bank tags [1,1,1,1,1,1,35,19,19,19,19,19,19,19,19,19,19]
certRow f24s4 on (rf24 4) using bank tags [1,1,1,1,1]
certRow f24s5 on (rf24 5) using bank tags [1,1,1,1,1,1,1,1]
certRow f24s6 on (rf24 6) using bank tags []
certRow f24s7 on (rf24 7) using bank tags [1,1,1,1,1,1,1,1,1,1,1]
theorem f24 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,1,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,1,2,0] (.cons (f24s0) (.cons (f24s1) (.cons (f24s2) (.cons (f24s3) (.cons (f24s4) (.cons (f24s5) (.cons (f24s6) (.cons (f24s7) .nil))))))))
private abbrev rf25 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,2,0,1]
certRow f25s0 on (rf25 0) using bank tags [1,1,1]
certRow f25s1 on (rf25 1) using bank tags [1,31,1,1,1,1,1,1,1,30,1,1,1,1]
certRow f25s2 on (rf25 2) using bank tags [1,31,1,1,1]
certRow f25s3 on (rf25 3) using bank tags [1,1,1,1,1,1,1,1,1,35,35,19,35,19,19,19,19,19,6,19,19,19,19,19,19,19,19,19]
certRow f25s4 on (rf25 4) using bank tags [1,1,1,1,1]
certRow f25s5 on (rf25 5) using bank tags [30,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f25s6 on (rf25 6) using bank tags []
certRow f25s7 on (rf25 7) using bank tags [31,15,1,1,1,1,14,1,1,31,1,1,1,1,1,1,1,1,1]
theorem f25 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,2,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,2,0,1] (.cons (f25s0) (.cons (f25s1) (.cons (f25s2) (.cons (f25s3) (.cons (f25s4) (.cons (f25s5) (.cons (f25s6) (.cons (f25s7) .nil))))))))
private abbrev rf26 (i : Nat) := Split43.four 8 i ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,2,1,0]
certRow f26s0 on (rf26 0) using bank tags []
certRow f26s1 on (rf26 1) using bank tags [1,31,1,1,1,1,1,1,1]
certRow f26s2 on (rf26 2) using bank tags [1,31,1,1,1]
certRow f26s3 on (rf26 3) using bank tags [1,1,1,1,1,1,1,35,19,19,19,19,19,19,19,19,19,19,19]
certRow f26s4 on (rf26 4) using bank tags [1,1,1,1,1]
certRow f26s5 on (rf26 5) using bank tags [1,1,1,1,1,1,1,1,1]
certRow f26s6 on (rf26 6) using bank tags []
certRow f26s7 on (rf26 7) using bank tags [31,15,1,1,1,1,14,1,1,1,1,1]
theorem f26 : BadRow (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,2,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,2,6,6⟩ [0,0] [0,1,2,2,1,0] (.cons (f26s0) (.cons (f26s1) (.cons (f26s2) (.cons (f26s3) (.cons (f26s4) (.cons (f26s5) (.cons (f26s6) (.cons (f26s7) .nil))))))))
certRow f27 on (Grammar43.fourRow ⟨0,2,0,2,6,6⟩ [0,0] [0,2,0,0,2,2]) using bank tags []
end Blc.SelfintSingleObject.Compact44
