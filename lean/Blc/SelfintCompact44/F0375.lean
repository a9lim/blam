import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
certRow f2990 on (Grammar43.fourRow ⟨1,2,0,4,5,4⟩ [0,0] [2,0,2,0,0]) using bank tags []
certRow f2991 on (Grammar43.fourRow ⟨1,2,0,4,5,4⟩ [0,0] [2,1,0,0,1]) using bank tags []
certRow f2992 on (Grammar43.fourRow ⟨1,2,0,4,5,4⟩ [0,0] [2,1,0,1,0]) using bank tags []
certRow f2993 on (Grammar43.fourRow ⟨1,2,0,4,5,4⟩ [0,0] [2,1,1,0,0]) using bank tags []
certRow f2994 on (Grammar43.fourRow ⟨1,2,0,4,5,4⟩ [0,0] [2,2,0,0,0]) using bank tags []
certRow f2995 on (Grammar43.fourRow ⟨1,2,0,4,5,4⟩ [0,0] [3,0,0,0,1]) using bank tags []
certRow f2996 on (Grammar43.fourRow ⟨1,2,0,4,5,4⟩ [0,0] [3,0,0,1,0]) using bank tags []
certRow f2997 on (Grammar43.fourRow ⟨1,2,0,4,5,4⟩ [0,0] [3,0,1,0,0]) using bank tags []
certRow f2998 on (Grammar43.fourRow ⟨1,2,0,4,5,4⟩ [0,0] [3,1,0,0,0]) using bank tags []
certRow f2999 on (Grammar43.fourRow ⟨1,2,0,4,5,4⟩ [0,0] [4,0,0,0,0]) using bank tags []
certRow f3000 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,0,0,0,3]) using bank tags []
certRow f3001 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,0,0,1,2]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3002 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,0,0,2,1]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3003 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,0,0,3,0]) using bank tags []
private abbrev rf3004 (i : Nat) := Split43.four 8 i ⟨1,2,1,4,5,3⟩ [0,1] [0,0,1,0,2]
certRow f3004s0 on (rf3004 0) using bank tags []
certRow f3004s1 on (rf3004 1) using bank tags [3,3,3,3,3]
certRow f3004s2 on (rf3004 2) using bank tags [3,3,3,3,3,3]
certRow f3004s3 on (rf3004 3) using bank tags [3,3]
certRow f3004s4 on (rf3004 4) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3004s5 on (rf3004 5) using bank tags []
certRow f3004s6 on (rf3004 6) using bank tags [3,3,3,3,3,3,3]
certRow f3004s7 on (rf3004 7) using bank tags []
theorem f3004 : BadRow (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,0,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,3⟩ [0,1] [0,0,1,0,2] (.cons (f3004s0) (.cons (f3004s1) (.cons (f3004s2) (.cons (f3004s3) (.cons (f3004s4) (.cons (f3004s5) (.cons (f3004s6) (.cons (f3004s7) .nil))))))))
certRow f3005 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,0,1,1,1]) using bank tags []
certRow f3006 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,0,1,2,0]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
end Blc.SelfintSingleObject.Compact44
