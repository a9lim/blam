import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3007 (i : Nat) := Split43.four 8 i ⟨1,2,1,4,5,3⟩ [0,1] [0,0,2,0,1]
certRow f3007s0 on (rf3007 0) using bank tags []
certRow f3007s1 on (rf3007 1) using bank tags [3,3,3,3,3]
certRow f3007s2 on (rf3007 2) using bank tags [3,3,3,3,3,3]
certRow f3007s3 on (rf3007 3) using bank tags [3,3]
certRow f3007s4 on (rf3007 4) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3007s5 on (rf3007 5) using bank tags []
certRow f3007s6 on (rf3007 6) using bank tags [3,3,3,3,3,3,3]
certRow f3007s7 on (rf3007 7) using bank tags []
theorem f3007 : BadRow (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,0,2,0,1]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,3⟩ [0,1] [0,0,2,0,1] (.cons (f3007s0) (.cons (f3007s1) (.cons (f3007s2) (.cons (f3007s3) (.cons (f3007s4) (.cons (f3007s5) (.cons (f3007s6) (.cons (f3007s7) .nil))))))))
certRow f3008 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,0,2,1,0]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3009 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,0,3,0,0]) using bank tags []
certRow f3010 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,1,0,0,2]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3011 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,1,0,1,1]) using bank tags []
private abbrev rf3012 (i : Nat) := Split43.four 8 i ⟨1,2,1,4,5,3⟩ [0,1] [0,1,0,2,0]
certRow f3012s0 on (rf3012 0) using bank tags []
certRow f3012s1 on (rf3012 1) using bank tags [3,3,3,3,3,3,3]
certRow f3012s2 on (rf3012 2) using bank tags [3,3]
certRow f3012s3 on (rf3012 3) using bank tags [3,3,3,3]
certRow f3012s4 on (rf3012 4) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f3012s5 on (rf3012 5) using bank tags []
certRow f3012s6 on (rf3012 6) using bank tags [3,3,3,3,3]
certRow f3012s7 on (rf3012 7) using bank tags []
theorem f3012 : BadRow (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,1,0,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,3⟩ [0,1] [0,1,0,2,0] (.cons (f3012s0) (.cons (f3012s1) (.cons (f3012s2) (.cons (f3012s3) (.cons (f3012s4) (.cons (f3012s5) (.cons (f3012s6) (.cons (f3012s7) .nil))))))))
certRow f3013 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,1,1,0,1]) using bank tags []
certRow f3014 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,1,1,1,0]) using bank tags []
certRow f3015 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,1,2,0,0]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3016 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,2,0,0,1]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
end Blc.SelfintSingleObject.Compact44
