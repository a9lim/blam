import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf716 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,2,2,0]
certRow f716s0 on (rf716 0) using bank tags [3,3,3,3]
certRow f716s1 on (rf716 1) using bank tags []
certRow f716s2 on (rf716 2) using bank tags [3,3,3,3,3,3,3,3,3,28,28,28]
certRow f716s3 on (rf716 3) using bank tags [3,3]
certRow f716s4 on (rf716 4) using bank tags [3,3,28,35]
certRow f716s5 on (rf716 5) using bank tags [3,28,28,28,28,28,28,28,28]
certRow f716s6 on (rf716 6) using bank tags [3,3,28]
certRow f716s7 on (rf716 7) using bank tags [3,3,28,24]
theorem f716 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,2,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,2,2,0] (.cons (f716s0) (.cons (f716s1) (.cons (f716s2) (.cons (f716s3) (.cons (f716s4) (.cons (f716s5) (.cons (f716s6) (.cons (f716s7) .nil))))))))
private abbrev rf717 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,3,0,1]
certRow f717s0 on (rf717 0) using bank tags [3,3,3,28]
certRow f717s1 on (rf717 1) using bank tags [28,28,28,3]
certRow f717s2 on (rf717 2) using bank tags [3,3,3,28,3,3,3,28,28,28,28,28,28,28,187]
certRow f717s3 on (rf717 3) using bank tags [28,28,3,28,3]
certRow f717s4 on (rf717 4) using bank tags [3,3]
certRow f717s5 on (rf717 5) using bank tags [28,28,28,28,28,28]
certRow f717s6 on (rf717 6) using bank tags [3,3,28,28]
certRow f717s7 on (rf717 7) using bank tags [28,3,3,28,28,3,28,3,28,28,1,1,6,18,82]
theorem f717 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,3,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,3,0,1] (.cons (f717s0) (.cons (f717s1) (.cons (f717s2) (.cons (f717s3) (.cons (f717s4) (.cons (f717s5) (.cons (f717s6) (.cons (f717s7) .nil))))))))
private abbrev rf718 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,2,3,1,0]
certRow f718s0 on (rf718 0) using bank tags [3,3,3,28]
certRow f718s1 on (rf718 1) using bank tags [3]
certRow f718s2 on (rf718 2) using bank tags [3,3,28,28,28,28,3,3,3,28,28,28,28,28]
certRow f718s3 on (rf718 3) using bank tags [28,3,28]
certRow f718s4 on (rf718 4) using bank tags [3,3,28,216]
certRow f718s5 on (rf718 5) using bank tags [28,28,28,28,28]
certRow f718s6 on (rf718 6) using bank tags [3,28,28]
certRow f718s7 on (rf718 7) using bank tags [3,28,3,28,28,18,16,18]
theorem f718 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,3,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,2,3,1,0] (.cons (f718s0) (.cons (f718s1) (.cons (f718s2) (.cons (f718s3) (.cons (f718s4) (.cons (f718s5) (.cons (f718s6) (.cons (f718s7) .nil))))))))
certRow f719 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,2,4,0,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,13,13,13,18]
end Blc.SelfintSingleObject.Compact44
