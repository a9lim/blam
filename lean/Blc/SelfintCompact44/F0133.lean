import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf720 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,3,0,0,3]
certRow f720s0 on (rf720 0) using bank tags [28]
certRow f720s1 on (rf720 1) using bank tags [28,28,28,28,28]
certRow f720s2 on (rf720 2) using bank tags [28,28]
certRow f720s3 on (rf720 3) using bank tags [28,28,28,28,28]
certRow f720s4 on (rf720 4) using bank tags []
certRow f720s5 on (rf720 5) using bank tags [28,28]
certRow f720s6 on (rf720 6) using bank tags [28,28]
certRow f720s7 on (rf720 7) using bank tags [28,28,28,28,28,28,28,6,22,111,22,22]
theorem f720 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,3,0,0,3]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,3,0,0,3] (.cons (f720s0) (.cons (f720s1) (.cons (f720s2) (.cons (f720s3) (.cons (f720s4) (.cons (f720s5) (.cons (f720s6) (.cons (f720s7) .nil))))))))
private abbrev rf721 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,3,0,1,2]
certRow f721s0 on (rf721 0) using bank tags [3]
certRow f721s1 on (rf721 1) using bank tags [28,28,28,28,28,28,28]
certRow f721s2 on (rf721 2) using bank tags [28,28,28,3,28,28,3,28]
certRow f721s3 on (rf721 3) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28,1]
certRow f721s4 on (rf721 4) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f721s5 on (rf721 5) using bank tags [28,28,28,28,28,28]
certRow f721s6 on (rf721 6) using bank tags [3,3,28,28,28]
certRow f721s7 on (rf721 7) using bank tags [28,28,28,28,28,28,28,28,28,13,13,13,22,13,13,13,13,22,22]
theorem f721 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,3,0,1,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,3,0,1,2] (.cons (f721s0) (.cons (f721s1) (.cons (f721s2) (.cons (f721s3) (.cons (f721s4) (.cons (f721s5) (.cons (f721s6) (.cons (f721s7) .nil))))))))
private abbrev rf722 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,3,0,2,1]
certRow f722s0 on (rf722 0) using bank tags [3]
certRow f722s1 on (rf722 1) using bank tags [28,28,28,28,28,3,3,28]
certRow f722s2 on (rf722 2) using bank tags [28,28,28,3,28,28,3,28,28,28,0,85] except [Floor44.e4846200016326]
certRow f722s3 on (rf722 3) using bank tags [28,28,28,28,28,28,28,28,28,28,1]
certRow f722s4 on (rf722 4) using bank tags [28,28,28,28,28]
certRow f722s5 on (rf722 5) using bank tags [28,28,28,28,28,28,28,28]
certRow f722s6 on (rf722 6) using bank tags [3,3,28,28]
certRow f722s7 on (rf722 7) using bank tags [28,28,28,28,28,28,28,28,28,28,28,13,6,6,13,13,22,111,22,13,13]
theorem f722 (hard : BadRow [Floor44.e4846200016326]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,3,0,2,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,3,0,2,1] (.cons (f722s0) (.cons (f722s1) (.cons (f722s2 (.cons (hard.get (by decide : Floor44.e4846200016326 ∈ [Floor44.e4846200016326])) .nil)) (.cons (f722s3) (.cons (f722s4) (.cons (f722s5) (.cons (f722s6) (.cons (f722s7) .nil))))))))
certRow f723 on (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,3,0,3,0]) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,6,6,111,217,0] except [Floor44.e4846199895162]
end Blc.SelfintSingleObject.Compact44
