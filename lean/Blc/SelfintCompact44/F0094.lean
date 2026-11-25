import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf470 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [3,0,0,1,0,0]
certRow f470s0 on (rf470 0) using bank tags []
certRow f470s1 on (rf470 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f470s2 on (rf470 2) using bank tags [28,28,28,28,28]
certRow f470s3 on (rf470 3) using bank tags [28,28,28,28]
certRow f470s4 on (rf470 4) using bank tags [28,28,28,28,28]
certRow f470s5 on (rf470 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f470s6 on (rf470 6) using bank tags []
certRow f470s7 on (rf470 7) using bank tags []
theorem f470 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [3,0,0,1,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [3,0,0,1,0,0] (.cons (f470s0) (.cons (f470s1) (.cons (f470s2) (.cons (f470s3) (.cons (f470s4) (.cons (f470s5) (.cons (f470s6) (.cons (f470s7) .nil))))))))
private abbrev rf471 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [3,0,1,0,0,0]
certRow f471s0 on (rf471 0) using bank tags []
certRow f471s1 on (rf471 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f471s2 on (rf471 2) using bank tags [28,28,28,28,28]
certRow f471s3 on (rf471 3) using bank tags [28,28,28,28]
certRow f471s4 on (rf471 4) using bank tags [28,28,28,28,28]
certRow f471s5 on (rf471 5) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f471s6 on (rf471 6) using bank tags []
certRow f471s7 on (rf471 7) using bank tags []
theorem f471 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [3,0,1,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [3,0,1,0,0,0] (.cons (f471s0) (.cons (f471s1) (.cons (f471s2) (.cons (f471s3) (.cons (f471s4) (.cons (f471s5) (.cons (f471s6) (.cons (f471s7) .nil))))))))
private abbrev rf472 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [3,1,0,0,0,0]
certRow f472s0 on (rf472 0) using bank tags []
certRow f472s1 on (rf472 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f472s2 on (rf472 2) using bank tags []
certRow f472s3 on (rf472 3) using bank tags [28,28]
certRow f472s4 on (rf472 4) using bank tags [28,28,28]
certRow f472s5 on (rf472 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f472s6 on (rf472 6) using bank tags []
certRow f472s7 on (rf472 7) using bank tags []
theorem f472 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [3,1,0,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [3,1,0,0,0,0] (.cons (f472s0) (.cons (f472s1) (.cons (f472s2) (.cons (f472s3) (.cons (f472s4) (.cons (f472s5) (.cons (f472s6) (.cons (f472s7) .nil))))))))
certRow f473 on (Grammar43.fourRow ⟨0,3,0,3,4,8⟩ [0,0,0] [0,2,3,3]) using bank tags [1,1,1,6,6,6]
certRow f474 on (Grammar43.fourRow ⟨0,3,0,3,4,8⟩ [0,0,0] [0,3,2,3]) using bank tags [1,1,1,6,6,6]
certRow f475 on (Grammar43.fourRow ⟨0,3,0,3,4,8⟩ [0,0,0] [0,3,3,2]) using bank tags [1,1,1,6,6,6]
certRow f476 on (Grammar43.fourRow ⟨0,3,0,3,4,8⟩ [0,0,0] [1,1,3,3]) using bank tags [1,1,1,1]
certRow f477 on (Grammar43.fourRow ⟨0,3,0,3,4,8⟩ [0,0,0] [1,2,2,3]) using bank tags [57,57,57,1,1,1]
certRow f478 on (Grammar43.fourRow ⟨0,3,0,3,4,8⟩ [0,0,0] [1,2,3,2]) using bank tags [57,57,57,1,1,1]
end Blc.SelfintSingleObject.Compact44
