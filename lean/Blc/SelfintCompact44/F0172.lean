import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf935 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [0,3,2,3]
certRow f935s0 on (rf935 0) using bank tags [3,3,28,28]
certRow f935s1 on (rf935 1) using bank tags [3,3,3,28,28,28,28,6]
certRow f935s2 on (rf935 2) using bank tags [3,3,3,3,28,6,6]
certRow f935s3 on (rf935 3) using bank tags [3,3,3,28,13,61,11]
certRow f935s4 on (rf935 4) using bank tags [28,28]
certRow f935s5 on (rf935 5) using bank tags [3,28,28,57,3,28,28]
certRow f935s6 on (rf935 6) using bank tags [28,14]
certRow f935s7 on (rf935 7) using bank tags [3]
theorem f935 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,3,2,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [0,3,2,3] (.cons (f935s0) (.cons (f935s1) (.cons (f935s2) (.cons (f935s3) (.cons (f935s4) (.cons (f935s5) (.cons (f935s6) (.cons (f935s7) .nil))))))))
private abbrev rf936 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [0,3,3,2]
certRow f936s0 on (rf936 0) using bank tags [3,3,28]
certRow f936s1 on (rf936 1) using bank tags [3,3,3,28,28,3,3]
certRow f936s2 on (rf936 2) using bank tags [3,3,3,3,28,6]
certRow f936s3 on (rf936 3) using bank tags [3,3,3,28,28,22,6,13,24,11]
certRow f936s4 on (rf936 4) using bank tags [28,28]
certRow f936s5 on (rf936 5) using bank tags [3,28,3,28,28]
certRow f936s6 on (rf936 6) using bank tags [28]
certRow f936s7 on (rf936 7) using bank tags [3]
theorem f936 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,3,3,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [0,3,3,2] (.cons (f936s0) (.cons (f936s1) (.cons (f936s2) (.cons (f936s3) (.cons (f936s4) (.cons (f936s5) (.cons (f936s6) (.cons (f936s7) .nil))))))))
certRow f937 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,3,4,1]) using bank tags [3,28,28,28,3,3,28,3,3,3,28,6,3,28,24]
certRow f938 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,3,5,0]) using bank tags [28,28,28,28,28,13]
certRow f939 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,4,0,4]) using bank tags [28,28,28,28,28,28,28,28,28,1,11]
certRow f940 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,4,1,3]) using bank tags [3,3,28,28,28,3,28,28,3,28,28,28,28,3,3,28,28,28,6,6,3,3,28,13,11,13,13]
certRow f941 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,4,2,2]) using bank tags [3,3,3,28,3,3,28,28,28,28,28,28,28,28,57,6,28,6,6,6,13,13]
certRow f942 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,4,3,1]) using bank tags [3,28,28,28,28,3,28,3,28,3,28,3,28,28,6,3,28,13,18]
certRow f943 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,4,4,0]) using bank tags [28,28,28]
certRow f944 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,5,0,3]) using bank tags [28,28,28,28,28,28,28,28,28,13,13]
certRow f945 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,5,1,2]) using bank tags [28,28,28,28,28,6,6,13,13]
certRow f946 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,5,2,1]) using bank tags [28,28,28,28,57,6,13]
certRow f947 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [0,5,3,0]) using bank tags [28,28,28,28,28,28,13]
end Blc.SelfintSingleObject.Compact44
