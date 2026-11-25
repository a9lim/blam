import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf786 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [1,4,0,1,0]
certRow f786s0 on (rf786 0) using bank tags [28]
certRow f786s1 on (rf786 1) using bank tags [28,28,28,28,28]
certRow f786s2 on (rf786 2) using bank tags [28,28,28,28,28]
certRow f786s3 on (rf786 3) using bank tags [28,28]
certRow f786s4 on (rf786 4) using bank tags [28,28,28,28,28]
certRow f786s5 on (rf786 5) using bank tags [28,28]
certRow f786s6 on (rf786 6) using bank tags [28,28]
certRow f786s7 on (rf786 7) using bank tags [28,28,13,13,13,13,13]
theorem f786 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,4,0,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [1,4,0,1,0] (.cons (f786s0) (.cons (f786s1) (.cons (f786s2) (.cons (f786s3) (.cons (f786s4) (.cons (f786s5) (.cons (f786s6) (.cons (f786s7) .nil))))))))
certRow f787 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [1,4,1,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,13,13,13]
private abbrev rf788 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,0,4]
certRow f788s0 on (rf788 0) using bank tags []
certRow f788s1 on (rf788 1) using bank tags [28,28,28,28,28,28,28,28,28,28]
certRow f788s2 on (rf788 2) using bank tags [28,28]
certRow f788s3 on (rf788 3) using bank tags [28,28,28,28,28,28,28]
certRow f788s4 on (rf788 4) using bank tags [28,28,28,28,28]
certRow f788s5 on (rf788 5) using bank tags [28,28]
certRow f788s6 on (rf788 6) using bank tags []
certRow f788s7 on (rf788 7) using bank tags [28,28]
theorem f788 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,0,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,0,4] (.cons (f788s0) (.cons (f788s1) (.cons (f788s2) (.cons (f788s3) (.cons (f788s4) (.cons (f788s5) (.cons (f788s6) (.cons (f788s7) .nil))))))))
private abbrev rf789 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,1,3]
certRow f789s0 on (rf789 0) using bank tags [28,28,28,28]
certRow f789s1 on (rf789 1) using bank tags [3,3,3,3,3]
certRow f789s2 on (rf789 2) using bank tags [3,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f789s3 on (rf789 3) using bank tags [3,3,28,3,3,3,28,28,28,28,28,28,28]
certRow f789s4 on (rf789 4) using bank tags []
certRow f789s5 on (rf789 5) using bank tags [3,3,28,28,28,28]
certRow f789s6 on (rf789 6) using bank tags [3,3,3,3]
certRow f789s7 on (rf789 7) using bank tags [3,3]
theorem f789 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,1,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [2,0,0,1,3] (.cons (f789s0) (.cons (f789s1) (.cons (f789s2) (.cons (f789s3) (.cons (f789s4) (.cons (f789s5) (.cons (f789s6) (.cons (f789s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
