import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf447 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,1,2,0,0,0]
certRow f447s0 on (rf447 0) using bank tags [3,3,3,3,28,28]
certRow f447s1 on (rf447 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f447s2 on (rf447 2) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f447s3 on (rf447 3) using bank tags []
certRow f447s4 on (rf447 4) using bank tags [3,3,3,3,28,28,28,28,28]
certRow f447s5 on (rf447 5) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f447s6 on (rf447 6) using bank tags [28,28]
certRow f447s7 on (rf447 7) using bank tags [3,3,3,3,3,3,3,3,3]
theorem f447 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,1,2,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,1,2,0,0,0] (.cons (f447s0) (.cons (f447s1) (.cons (f447s2) (.cons (f447s3) (.cons (f447s4) (.cons (f447s5) (.cons (f447s6) (.cons (f447s7) .nil))))))))
private abbrev rf448 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,2,0,0,0,1]
certRow f448s0 on (rf448 0) using bank tags []
certRow f448s1 on (rf448 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f448s2 on (rf448 2) using bank tags [3,3,3,3,3]
certRow f448s3 on (rf448 3) using bank tags [3,3,3,3]
certRow f448s4 on (rf448 4) using bank tags [3,3,3,3,3]
certRow f448s5 on (rf448 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f448s6 on (rf448 6) using bank tags []
certRow f448s7 on (rf448 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28]
theorem f448 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,2,0,0,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,2,0,0,0,1] (.cons (f448s0) (.cons (f448s1) (.cons (f448s2) (.cons (f448s3) (.cons (f448s4) (.cons (f448s5) (.cons (f448s6) (.cons (f448s7) .nil))))))))
private abbrev rf449 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,2,0,0,1,0]
certRow f449s0 on (rf449 0) using bank tags [3,3,3,3,3]
certRow f449s1 on (rf449 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f449s2 on (rf449 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f449s3 on (rf449 3) using bank tags [3,3,3,3]
certRow f449s4 on (rf449 4) using bank tags [3,3,3,3,3]
certRow f449s5 on (rf449 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28]
certRow f449s6 on (rf449 6) using bank tags []
certRow f449s7 on (rf449 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
theorem f449 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,2,0,0,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,2,0,0,1,0] (.cons (f449s0) (.cons (f449s1) (.cons (f449s2) (.cons (f449s3) (.cons (f449s4) (.cons (f449s5) (.cons (f449s6) (.cons (f449s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
