import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf1154 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,0,3,3]
certRow f1154s0 on (rf1154 0) using bank tags []
certRow f1154s1 on (rf1154 1) using bank tags [3,3,3,3,3,3,3,3]
certRow f1154s2 on (rf1154 2) using bank tags [3,3,3,3]
certRow f1154s3 on (rf1154 3) using bank tags [3,3]
certRow f1154s4 on (rf1154 4) using bank tags [3,3]
certRow f1154s5 on (rf1154 5) using bank tags [3,3,3,3,3,3]
certRow f1154s6 on (rf1154 6) using bank tags []
certRow f1154s7 on (rf1154 7) using bank tags [3,3,3,3]
certRow f1154s8 on (rf1154 8) using bank tags []
certRow f1154s9 on (rf1154 9) using bank tags [3,3,3,3]
certRow f1154s10 on (rf1154 10) using bank tags []
certRow f1154s11 on (rf1154 11) using bank tags []
theorem f1154 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,0,3,3]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,0,3,3] (.cons (f1154s0) (.cons (f1154s1) (.cons (f1154s2) (.cons (f1154s3) (.cons (f1154s4) (.cons (f1154s5) (.cons (f1154s6) (.cons (f1154s7) (.cons (f1154s8) (.cons (f1154s9) (.cons (f1154s10) (.cons (f1154s11) .nil))))))))))))
private abbrev rf1155 (i : Nat) := Split43.four 12 i ⟨0,2,0,6,4,6⟩ [0,0] [0,0,4,2]
certRow f1155s0 on (rf1155 0) using bank tags []
certRow f1155s1 on (rf1155 1) using bank tags [3,3,3,3,3,3,3]
certRow f1155s2 on (rf1155 2) using bank tags [3,3,3,3]
certRow f1155s3 on (rf1155 3) using bank tags [3,3,3,3]
certRow f1155s4 on (rf1155 4) using bank tags [3,3,3,3,3,3]
certRow f1155s5 on (rf1155 5) using bank tags [3,3,3,3]
certRow f1155s6 on (rf1155 6) using bank tags []
certRow f1155s7 on (rf1155 7) using bank tags [3,3]
certRow f1155s8 on (rf1155 8) using bank tags []
certRow f1155s9 on (rf1155 9) using bank tags [3,3,3]
certRow f1155s10 on (rf1155 10) using bank tags []
certRow f1155s11 on (rf1155 11) using bank tags []
theorem f1155 : BadRow (Grammar43.fourRow ⟨0,2,0,6,4,6⟩ [0,0] [0,0,4,2]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,6,4,6⟩ [0,0] [0,0,4,2] (.cons (f1155s0) (.cons (f1155s1) (.cons (f1155s2) (.cons (f1155s3) (.cons (f1155s4) (.cons (f1155s5) (.cons (f1155s6) (.cons (f1155s7) (.cons (f1155s8) (.cons (f1155s9) (.cons (f1155s10) (.cons (f1155s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
