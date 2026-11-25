import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf438 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,1,0,0,0,2]
certRow f438s0 on (rf438 0) using bank tags [28,28]
certRow f438s1 on (rf438 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f438s2 on (rf438 2) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f438s3 on (rf438 3) using bank tags [3,3,3,3]
certRow f438s4 on (rf438 4) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f438s5 on (rf438 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f438s6 on (rf438 6) using bank tags [28,28]
certRow f438s7 on (rf438 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
theorem f438 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,1,0,0,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,1,0,0,0,2] (.cons (f438s0) (.cons (f438s1) (.cons (f438s2) (.cons (f438s3) (.cons (f438s4) (.cons (f438s5) (.cons (f438s6) (.cons (f438s7) .nil))))))))
certRow f439 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,1,0,0,1,1]) using bank tags []
private abbrev rf440 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,1,0,0,2,0]
certRow f440s0 on (rf440 0) using bank tags [3,3,3,3,3,28,28]
certRow f440s1 on (rf440 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f440s2 on (rf440 2) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f440s3 on (rf440 3) using bank tags [3,3,3,3]
certRow f440s4 on (rf440 4) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f440s5 on (rf440 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f440s6 on (rf440 6) using bank tags [28,28]
certRow f440s7 on (rf440 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
theorem f440 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,1,0,0,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,1,0,0,2,0] (.cons (f440s0) (.cons (f440s1) (.cons (f440s2) (.cons (f440s3) (.cons (f440s4) (.cons (f440s5) (.cons (f440s6) (.cons (f440s7) .nil))))))))
certRow f441 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,1,0,1,0,1]) using bank tags []
certRow f442 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,1,0,1,1,0]) using bank tags []
private abbrev rf443 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [1,1,0,2,0,0]
certRow f443s0 on (rf443 0) using bank tags [3,3,3,3,3,3,3,28,28]
certRow f443s1 on (rf443 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f443s2 on (rf443 2) using bank tags [3,3,3,3,3,28,28,28,28,28]
certRow f443s3 on (rf443 3) using bank tags [3,3,3,3]
certRow f443s4 on (rf443 4) using bank tags [3,3,3,3,3,3,3,28,28,28,28,28]
certRow f443s5 on (rf443 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f443s6 on (rf443 6) using bank tags [28,28]
certRow f443s7 on (rf443 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
theorem f443 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,1,0,2,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [1,1,0,2,0,0] (.cons (f443s0) (.cons (f443s1) (.cons (f443s2) (.cons (f443s3) (.cons (f443s4) (.cons (f443s5) (.cons (f443s6) (.cons (f443s7) .nil))))))))
certRow f444 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,1,1,0,0,1]) using bank tags []
certRow f445 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,1,1,0,1,0]) using bank tags []
certRow f446 on (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [1,1,1,1,0,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
