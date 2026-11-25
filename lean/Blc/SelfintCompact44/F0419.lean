import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3449 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [0,0,2,1]
certRow f3449s0 on (rf3449 0) using bank tags []
certRow f3449s1 on (rf3449 1) using bank tags []
certRow f3449s2 on (rf3449 2) using bank tags []
certRow f3449s3 on (rf3449 3) using bank tags []
certRow f3449s4 on (rf3449 4) using bank tags []
certRow f3449s5 on (rf3449 5) using bank tags []
certRow f3449s6 on (rf3449 6) using bank tags []
certRow f3449s7 on (rf3449 7) using bank tags []
certRow f3449s8 on (rf3449 8) using bank tags []
certRow f3449s9 on (rf3449 9) using bank tags []
certRow f3449s10 on (rf3449 10) using bank tags []
certRow f3449s11 on (rf3449 11) using bank tags []
theorem f3449 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [0,0,2,1]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [0,0,2,1] (.cons (f3449s0) (.cons (f3449s1) (.cons (f3449s2) (.cons (f3449s3) (.cons (f3449s4) (.cons (f3449s5) (.cons (f3449s6) (.cons (f3449s7) (.cons (f3449s8) (.cons (f3449s9) (.cons (f3449s10) (.cons (f3449s11) .nil))))))))))))
private abbrev rf3450 (i : Nat) := Split43.four 12 i ⟨1,2,1,6,4,3⟩ [1,0] [0,0,3,0]
certRow f3450s0 on (rf3450 0) using bank tags []
certRow f3450s1 on (rf3450 1) using bank tags []
certRow f3450s2 on (rf3450 2) using bank tags []
certRow f3450s3 on (rf3450 3) using bank tags []
certRow f3450s4 on (rf3450 4) using bank tags []
certRow f3450s5 on (rf3450 5) using bank tags []
certRow f3450s6 on (rf3450 6) using bank tags []
certRow f3450s7 on (rf3450 7) using bank tags []
certRow f3450s8 on (rf3450 8) using bank tags []
certRow f3450s9 on (rf3450 9) using bank tags []
certRow f3450s10 on (rf3450 10) using bank tags []
certRow f3450s11 on (rf3450 11) using bank tags []
theorem f3450 : BadRow (Grammar43.fourRow ⟨1,2,1,6,4,3⟩ [1,0] [0,0,3,0]) :=
  Split43.four_cover 12 (by decide) ⟨1,2,1,6,4,3⟩ [1,0] [0,0,3,0] (.cons (f3450s0) (.cons (f3450s1) (.cons (f3450s2) (.cons (f3450s3) (.cons (f3450s4) (.cons (f3450s5) (.cons (f3450s6) (.cons (f3450s7) (.cons (f3450s8) (.cons (f3450s9) (.cons (f3450s10) (.cons (f3450s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
