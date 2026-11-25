import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3415 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [1,2,1,0]
certRow f3415s0 on (rf3415 0) using bank tags []
certRow f3415s1 on (rf3415 1) using bank tags []
certRow f3415s2 on (rf3415 2) using bank tags []
certRow f3415s3 on (rf3415 3) using bank tags []
certRow f3415s4 on (rf3415 4) using bank tags []
certRow f3415s5 on (rf3415 5) using bank tags []
certRow f3415s6 on (rf3415 6) using bank tags []
certRow f3415s7 on (rf3415 7) using bank tags []
certRow f3415s8 on (rf3415 8) using bank tags []
certRow f3415s9 on (rf3415 9) using bank tags []
certRow f3415s10 on (rf3415 10) using bank tags []
certRow f3415s11 on (rf3415 11) using bank tags []
theorem f3415 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [1,2,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [1,2,1,0] (.cons (f3415s0) (.cons (f3415s1) (.cons (f3415s2) (.cons (f3415s3) (.cons (f3415s4) (.cons (f3415s5) (.cons (f3415s6) (.cons (f3415s7) (.cons (f3415s8) (.cons (f3415s9) (.cons (f3415s10) (.cons (f3415s11) .nil))))))))))))
private abbrev rf3416 (i : Nat) := Split43.four 12 i ⟨1,2,0,6,4,4⟩ [0,0] [1,3,0,0]
certRow f3416s0 on (rf3416 0) using bank tags []
certRow f3416s1 on (rf3416 1) using bank tags []
certRow f3416s2 on (rf3416 2) using bank tags []
certRow f3416s3 on (rf3416 3) using bank tags []
certRow f3416s4 on (rf3416 4) using bank tags []
certRow f3416s5 on (rf3416 5) using bank tags []
certRow f3416s6 on (rf3416 6) using bank tags []
certRow f3416s7 on (rf3416 7) using bank tags []
certRow f3416s8 on (rf3416 8) using bank tags []
certRow f3416s9 on (rf3416 9) using bank tags []
certRow f3416s10 on (rf3416 10) using bank tags []
certRow f3416s11 on (rf3416 11) using bank tags []
theorem f3416 : BadRow (Grammar43.fourRow ⟨1,2,0,6,4,4⟩ [0,0] [1,3,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,0,6,4,4⟩ [0,0] [1,3,0,0] (.cons (f3416s0) (.cons (f3416s1) (.cons (f3416s2) (.cons (f3416s3) (.cons (f3416s4) (.cons (f3416s5) (.cons (f3416s6) (.cons (f3416s7) (.cons (f3416s8) (.cons (f3416s9) (.cons (f3416s10) (.cons (f3416s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
