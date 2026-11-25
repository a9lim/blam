import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf772 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,2,0,3,0]
certRow f772s0 on (rf772 0) using bank tags [28]
certRow f772s1 on (rf772 1) using bank tags [3,3]
certRow f772s2 on (rf772 2) using bank tags [3,3,3,28,3,3,28,28,28,28]
certRow f772s3 on (rf772 3) using bank tags [3,3,3]
certRow f772s4 on (rf772 4) using bank tags [3,3,3,3,3,6,19]
certRow f772s5 on (rf772 5) using bank tags [3,28,28,28,28,28,28,28,28]
certRow f772s6 on (rf772 6) using bank tags [3,3,3,3,3,28,28,28]
certRow f772s7 on (rf772 7) using bank tags [1,6,19]
theorem f772 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,2,0,3,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,2,0,3,0] (.cons (f772s0) (.cons (f772s1) (.cons (f772s2) (.cons (f772s3) (.cons (f772s4) (.cons (f772s5) (.cons (f772s6) (.cons (f772s7) .nil))))))))
private abbrev rf773 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,2,1,0,2]
certRow f773s0 on (rf773 0) using bank tags [3,3,3,3,6]
certRow f773s1 on (rf773 1) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28]
certRow f773s2 on (rf773 2) using bank tags [3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f773s3 on (rf773 3) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28,11,11]
certRow f773s4 on (rf773 4) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,28,28,28]
certRow f773s5 on (rf773 5) using bank tags [3,3,28,28,28,28,28]
certRow f773s6 on (rf773 6) using bank tags [3,3,3,3,3,3,3]
certRow f773s7 on (rf773 7) using bank tags [3,3,3,28,28,1,1,18,6,18]
theorem f773 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,2,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,2,1,0,2] (.cons (f773s0) (.cons (f773s1) (.cons (f773s2) (.cons (f773s3) (.cons (f773s4) (.cons (f773s5) (.cons (f773s6) (.cons (f773s7) .nil))))))))
private abbrev rf774 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,2,1,1,1]
certRow f774s0 on (rf774 0) using bank tags [3,3]
certRow f774s1 on (rf774 1) using bank tags [3,3,28,28,28]
certRow f774s2 on (rf774 2) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,6,16]
certRow f774s3 on (rf774 3) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f774s4 on (rf774 4) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow f774s5 on (rf774 5) using bank tags [3,3,3,3,28,28,28,28]
certRow f774s6 on (rf774 6) using bank tags []
certRow f774s7 on (rf774 7) using bank tags [3,3,1,18,6,210,18]
theorem f774 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,2,1,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,2,1,1,1] (.cons (f774s0) (.cons (f774s1) (.cons (f774s2) (.cons (f774s3) (.cons (f774s4) (.cons (f774s5) (.cons (f774s6) (.cons (f774s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
