import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf435 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,2,0,1,0]
certRow f435s0 on (rf435 0) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f435s1 on (rf435 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28]
certRow f435s2 on (rf435 2) using bank tags [3,3,3,3,3]
certRow f435s3 on (rf435 3) using bank tags [3,3,3,3]
certRow f435s4 on (rf435 4) using bank tags [3,3,3,3,3]
certRow f435s5 on (rf435 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f435s6 on (rf435 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f435s7 on (rf435 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f435s8 on (rf435 8) using bank tags []
certRow f435s9 on (rf435 9) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f435s10 on (rf435 10) using bank tags []
certRow f435s11 on (rf435 11) using bank tags [3,3,3,3,3,28,28,28]
theorem f435 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,2,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,2,0,1,0] (.cons (f435s0) (.cons (f435s1) (.cons (f435s2) (.cons (f435s3) (.cons (f435s4) (.cons (f435s5) (.cons (f435s6) (.cons (f435s7) (.cons (f435s8) (.cons (f435s9) (.cons (f435s10) (.cons (f435s11) .nil))))))))))))
private abbrev rf436 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,2,1,0,0]
certRow f436s0 on (rf436 0) using bank tags [3,3,3,3,3,3,28,28,28,28,28]
certRow f436s1 on (rf436 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28,28]
certRow f436s2 on (rf436 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28]
certRow f436s3 on (rf436 3) using bank tags [3,3,3,3,3,3,3,28,28]
certRow f436s4 on (rf436 4) using bank tags [3,3,3,3,3,3]
certRow f436s5 on (rf436 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f436s6 on (rf436 6) using bank tags []
certRow f436s7 on (rf436 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3]
theorem f436 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,2,1,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,2,1,0,0] (.cons (f436s0) (.cons (f436s1) (.cons (f436s2) (.cons (f436s3) (.cons (f436s4) (.cons (f436s5) (.cons (f436s6) (.cons (f436s7) .nil))))))))
private abbrev rf437 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,0,3,0,0,0]
certRow f437s0 on (rf437 0) using bank tags [28,28,28]
certRow f437s1 on (rf437 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f437s2 on (rf437 2) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28]
certRow f437s3 on (rf437 3) using bank tags [28,28,28,28]
certRow f437s4 on (rf437 4) using bank tags [28,28,28,28,28]
certRow f437s5 on (rf437 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f437s6 on (rf437 6) using bank tags [28,28,28,28]
certRow f437s7 on (rf437 7) using bank tags []
theorem f437 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,0,3,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,0,3,0,0,0] (.cons (f437s0) (.cons (f437s1) (.cons (f437s2) (.cons (f437s3) (.cons (f437s4) (.cons (f437s5) (.cons (f437s6) (.cons (f437s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
