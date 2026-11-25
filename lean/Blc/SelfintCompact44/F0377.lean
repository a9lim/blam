import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf3017 (i : Nat) := Split43.four 8 i ⟨1,2,1,4,5,3⟩ [0,1] [0,2,0,1,0]
certRow f3017s0 on (rf3017 0) using bank tags []
certRow f3017s1 on (rf3017 1) using bank tags [3,3,3,3,3,3,3]
certRow f3017s2 on (rf3017 2) using bank tags [3,3]
certRow f3017s3 on (rf3017 3) using bank tags [3,3,3,3]
certRow f3017s4 on (rf3017 4) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f3017s5 on (rf3017 5) using bank tags []
certRow f3017s6 on (rf3017 6) using bank tags [3,3,3,3,3]
certRow f3017s7 on (rf3017 7) using bank tags []
theorem f3017 : BadRow (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,2,0,1,0]) :=
  Split43.four_cover 8 (by decide) ⟨1,2,1,4,5,3⟩ [0,1] [0,2,0,1,0] (.cons (f3017s0) (.cons (f3017s1) (.cons (f3017s2) (.cons (f3017s3) (.cons (f3017s4) (.cons (f3017s5) (.cons (f3017s6) (.cons (f3017s7) .nil))))))))
certRow f3018 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,2,1,0,0]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3019 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [0,3,0,0,0]) using bank tags []
certRow f3020 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [1,0,0,0,2]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3021 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [1,0,0,1,1]) using bank tags []
certRow f3022 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [1,0,0,2,0]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3023 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [1,0,1,0,1]) using bank tags []
certRow f3024 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [1,0,1,1,0]) using bank tags []
certRow f3025 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [1,0,2,0,0]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3026 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [1,1,0,0,1]) using bank tags []
certRow f3027 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [1,1,0,1,0]) using bank tags []
certRow f3028 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [1,1,1,0,0]) using bank tags []
certRow f3029 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [1,2,0,0,0]) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f3030 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [2,0,0,0,1]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3031 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [2,0,0,1,0]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3032 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [2,0,1,0,0]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f3033 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [2,1,0,0,0]) using bank tags [3,3,3,3,3,3,3,3,3]
certRow f3034 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [0,1] [3,0,0,0,0]) using bank tags []
certRow f3035 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [1,0] [0,0,0,0,3]) using bank tags []
certRow f3036 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [1,0] [0,0,0,1,2]) using bank tags []
certRow f3037 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [1,0] [0,0,0,2,1]) using bank tags []
certRow f3038 on (Grammar43.fourRow ⟨1,2,1,4,5,3⟩ [1,0] [0,0,0,3,0]) using bank tags []
end Blc.SelfintSingleObject.Compact44
