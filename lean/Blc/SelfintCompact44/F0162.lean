import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf817 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,2,1,1,0]
certRow f817s0 on (rf817 0) using bank tags [3,3,3,3]
certRow f817s1 on (rf817 1) using bank tags [3,3,3,3,3]
certRow f817s2 on (rf817 2) using bank tags [3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f817s3 on (rf817 3) using bank tags [3,3,3,3,3,3,3]
certRow f817s4 on (rf817 4) using bank tags []
certRow f817s5 on (rf817 5) using bank tags [3,28,28,28,28,28]
certRow f817s6 on (rf817 6) using bank tags [3,3,28]
certRow f817s7 on (rf817 7) using bank tags [28,28]
theorem f817 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,2,1,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,2,1,1,0] (.cons (f817s0) (.cons (f817s1) (.cons (f817s2) (.cons (f817s3) (.cons (f817s4) (.cons (f817s5) (.cons (f817s6) (.cons (f817s7) .nil))))))))
certRow f818 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,2,2,0,0]) using bank tags [3,3,3,3,3,3,28,28]
certRow f819 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,3,0,0,1]) using bank tags [3,3,3,3,3,28,28,28,28,28,3,3,28,3,28,28,28,3,3,28,28,28,28,28]
certRow f820 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,3,0,1,0]) using bank tags [3,3,3,3,3,3,3,28,28,28,3,3,3,28,28,3,28,3,28,28,28,28,28]
certRow f821 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,3,1,0,0]) using bank tags [3,3,3,3,28,28,3,3,28,28,3,28,28,28,28]
certRow f822 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,4,0,0,0]) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f823 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,0,0,0,3]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
private abbrev rf824 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [3,0,0,1,2]
certRow f824s0 on (rf824 0) using bank tags []
certRow f824s1 on (rf824 1) using bank tags [28,28,28,28,28]
certRow f824s2 on (rf824 2) using bank tags [28,28,28,28,28]
certRow f824s3 on (rf824 3) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f824s4 on (rf824 4) using bank tags []
certRow f824s5 on (rf824 5) using bank tags [28,28,28,28]
certRow f824s6 on (rf824 6) using bank tags []
certRow f824s7 on (rf824 7) using bank tags [28,28,28,28]
theorem f824 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [3,0,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [3,0,0,1,2] (.cons (f824s0) (.cons (f824s1) (.cons (f824s2) (.cons (f824s3) (.cons (f824s4) (.cons (f824s5) (.cons (f824s6) (.cons (f824s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
