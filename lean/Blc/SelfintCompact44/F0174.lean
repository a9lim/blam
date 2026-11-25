import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf958 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [1,2,1,4]
certRow f958s0 on (rf958 0) using bank tags [28,28,57]
certRow f958s1 on (rf958 1) using bank tags [3,3,3,28,57,1]
certRow f958s2 on (rf958 2) using bank tags [3,3,28]
certRow f958s3 on (rf958 3) using bank tags [3,3,3,3,3,3,3,3,28]
certRow f958s4 on (rf958 4) using bank tags [3,3,3,28,3,28]
certRow f958s5 on (rf958 5) using bank tags [3,3,3,28,28,24,13,24]
certRow f958s6 on (rf958 6) using bank tags []
certRow f958s7 on (rf958 7) using bank tags [3,3]
theorem f958 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,2,1,4]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [1,2,1,4] (.cons (f958s0) (.cons (f958s1) (.cons (f958s2) (.cons (f958s3) (.cons (f958s4) (.cons (f958s5) (.cons (f958s6) (.cons (f958s7) .nil))))))))
private abbrev rf959 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [1,2,2,3]
certRow f959s0 on (rf959 0) using bank tags [3,3,3,28,28,14,25,57]
certRow f959s1 on (rf959 1) using bank tags [3,3,28,28]
certRow f959s2 on (rf959 2) using bank tags [28,28,57,1,1]
certRow f959s3 on (rf959 3) using bank tags [3,3,3,3,28]
certRow f959s4 on (rf959 4) using bank tags [3,3,3,28,57]
certRow f959s5 on (rf959 5) using bank tags [13,24]
certRow f959s6 on (rf959 6) using bank tags [28,14]
certRow f959s7 on (rf959 7) using bank tags []
theorem f959 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,2,2,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [1,2,2,3] (.cons (f959s0) (.cons (f959s1) (.cons (f959s2) (.cons (f959s3) (.cons (f959s4) (.cons (f959s5) (.cons (f959s6) (.cons (f959s7) .nil))))))))
certRow f960 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,2,3,2]) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,25,57,28,28,28,28,57,1,1,13]
certRow f961 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,2,4,1]) using bank tags [3,3,3,3,3,3,28,3,3,28,3,3,3,25,28,24]
certRow f962 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,2,5,0]) using bank tags [28,28,15,28,13]
certRow f963 on (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,3,0,4]) using bank tags [3,3,3,3,3,3,3,3,3,28,28,6,1,13,13]
private abbrev rf964 (i : Nat) := Split43.four 8 i ⟨0,2,0,5,4,8⟩ [0,0] [1,3,1,3]
certRow f964s0 on (rf964 0) using bank tags [3,3,28,28]
certRow f964s1 on (rf964 1) using bank tags [3,3,28,28]
certRow f964s2 on (rf964 2) using bank tags [3,3,1]
certRow f964s3 on (rf964 3) using bank tags [3,3,3,3,3,28]
certRow f964s4 on (rf964 4) using bank tags [3,28]
certRow f964s5 on (rf964 5) using bank tags [3,3,3,3,3,28,24,13]
certRow f964s6 on (rf964 6) using bank tags [3,28]
certRow f964s7 on (rf964 7) using bank tags [3,3]
theorem f964 : BadRow (Grammar43.fourRow ⟨0,2,0,5,4,8⟩ [0,0] [1,3,1,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,5,4,8⟩ [0,0] [1,3,1,3] (.cons (f964s0) (.cons (f964s1) (.cons (f964s2) (.cons (f964s3) (.cons (f964s4) (.cons (f964s5) (.cons (f964s6) (.cons (f964s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
