import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf466 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [2,1,1,0,0,0]
certRow f466s0 on (rf466 0) using bank tags [28,28,28,28]
certRow f466s1 on (rf466 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f466s2 on (rf466 2) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,28]
certRow f466s3 on (rf466 3) using bank tags []
certRow f466s4 on (rf466 4) using bank tags [3,3,3,28,28,28,28,28]
certRow f466s5 on (rf466 5) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f466s6 on (rf466 6) using bank tags [28,28,28,28]
certRow f466s7 on (rf466 7) using bank tags []
theorem f466 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,1,1,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [2,1,1,0,0,0] (.cons (f466s0) (.cons (f466s1) (.cons (f466s2) (.cons (f466s3) (.cons (f466s4) (.cons (f466s5) (.cons (f466s6) (.cons (f466s7) .nil))))))))
certRow f467 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [2,2,0,0,0,0]) using bank tags []
private abbrev rf468 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [3,0,0,0,0,1]
certRow f468s0 on (rf468 0) using bank tags []
certRow f468s1 on (rf468 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f468s2 on (rf468 2) using bank tags [28,28,28,28,28]
certRow f468s3 on (rf468 3) using bank tags [28,28,28,28]
certRow f468s4 on (rf468 4) using bank tags [28,28,28,28,28]
certRow f468s5 on (rf468 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f468s6 on (rf468 6) using bank tags []
certRow f468s7 on (rf468 7) using bank tags []
theorem f468 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [3,0,0,0,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [3,0,0,0,0,1] (.cons (f468s0) (.cons (f468s1) (.cons (f468s2) (.cons (f468s3) (.cons (f468s4) (.cons (f468s5) (.cons (f468s6) (.cons (f468s7) .nil))))))))
private abbrev rf469 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [3,0,0,0,1,0]
certRow f469s0 on (rf469 0) using bank tags []
certRow f469s1 on (rf469 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f469s2 on (rf469 2) using bank tags [28,28,28,28,28]
certRow f469s3 on (rf469 3) using bank tags [28,28,28,28]
certRow f469s4 on (rf469 4) using bank tags [28,28,28,28,28]
certRow f469s5 on (rf469 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f469s6 on (rf469 6) using bank tags []
certRow f469s7 on (rf469 7) using bank tags []
theorem f469 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [3,0,0,0,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [3,0,0,0,1,0] (.cons (f469s0) (.cons (f469s1) (.cons (f469s2) (.cons (f469s3) (.cons (f469s4) (.cons (f469s5) (.cons (f469s6) (.cons (f469s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
