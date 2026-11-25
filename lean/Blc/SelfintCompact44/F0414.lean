import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3436 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [0,3,0,0]
certRow f3436s0 on (rf3436 0) using bank tags []
certRow f3436s1 on (rf3436 1) using bank tags []
certRow f3436s2 on (rf3436 2) using bank tags []
certRow f3436s3 on (rf3436 3) using bank tags []
certRow f3436s4 on (rf3436 4) using bank tags []
certRow f3436s5 on (rf3436 5) using bank tags []
certRow f3436s6 on (rf3436 6) using bank tags []
certRow f3436s7 on (rf3436 7) using bank tags []
certRow f3436s8 on (rf3436 8) using bank tags []
certRow f3436s9 on (rf3436 9) using bank tags []
certRow f3436s10 on (rf3436 10) using bank tags []
certRow f3436s11 on (rf3436 11) using bank tags []
theorem f3436 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [0,3,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [0,3,0,0] (.cons (f3436s0) (.cons (f3436s1) (.cons (f3436s2) (.cons (f3436s3) (.cons (f3436s4) (.cons (f3436s5) (.cons (f3436s6) (.cons (f3436s7) (.cons (f3436s8) (.cons (f3436s9) (.cons (f3436s10) (.cons (f3436s11) .nil))))))))))))
private abbrev rf3437 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [0,1] [1,0,0,2]
certRow f3437s0 on (rf3437 0) using bank tags []
certRow f3437s1 on (rf3437 1) using bank tags [3,3]
certRow f3437s2 on (rf3437 2) using bank tags [3]
certRow f3437s3 on (rf3437 3) using bank tags [3,3]
certRow f3437s4 on (rf3437 4) using bank tags []
certRow f3437s5 on (rf3437 5) using bank tags []
certRow f3437s6 on (rf3437 6) using bank tags []
certRow f3437s7 on (rf3437 7) using bank tags []
certRow f3437s8 on (rf3437 8) using bank tags []
certRow f3437s9 on (rf3437 9) using bank tags []
certRow f3437s10 on (rf3437 10) using bank tags []
certRow f3437s11 on (rf3437 11) using bank tags []
theorem f3437 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [1,0,0,2]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [0,1] [1,0,0,2] (.cons (f3437s0) (.cons (f3437s1) (.cons (f3437s2) (.cons (f3437s3) (.cons (f3437s4) (.cons (f3437s5) (.cons (f3437s6) (.cons (f3437s7) (.cons (f3437s8) (.cons (f3437s9) (.cons (f3437s10) (.cons (f3437s11) .nil))))))))))))
certRow f3438 on (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [0,1] [1,0,1,1]) using bank tags []
end Blc.SelfintSingleObject.Compact44
