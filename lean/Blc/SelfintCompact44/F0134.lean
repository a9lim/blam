import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf724 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,3,1,0,2]
certRow f724s0 on (rf724 0) using bank tags [28,28,3]
certRow f724s1 on (rf724 1) using bank tags [28,28,28,28,28,28,28]
certRow f724s2 on (rf724 2) using bank tags [28,3,28,28,3,28]
certRow f724s3 on (rf724 3) using bank tags [3,28,28,28,28,28,28,28,1,1]
certRow f724s4 on (rf724 4) using bank tags [28,28,28,28,28,28,28,28]
certRow f724s5 on (rf724 5) using bank tags [28,28,28,28]
certRow f724s6 on (rf724 6) using bank tags [3,3,28,28]
certRow f724s7 on (rf724 7) using bank tags [28,28,28,28,28,28,13,13,13,24,13,13,24]
theorem f724 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,3,1,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,3,1,0,2] (.cons (f724s0) (.cons (f724s1) (.cons (f724s2) (.cons (f724s3) (.cons (f724s4) (.cons (f724s5) (.cons (f724s6) (.cons (f724s7) .nil))))))))
private abbrev rf725 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,3,1,1,1]
certRow f725s0 on (rf725 0) using bank tags [3,28,28,3]
certRow f725s1 on (rf725 1) using bank tags [28,28,28,28,28,28]
certRow f725s2 on (rf725 2) using bank tags [3,3,3,3,28,28,28,28,28,28,3,28,28,3,28,28,3,28]
certRow f725s3 on (rf725 3) using bank tags [3,3,28,28,28,28,28,28,28,28,28,28]
certRow f725s4 on (rf725 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f725s5 on (rf725 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f725s6 on (rf725 6) using bank tags [3,3,28,28,28,28]
certRow f725s7 on (rf725 7) using bank tags [28,28,28,13,13,13,13,13,13,13,13,13,13]
theorem f725 : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,3,1,1,1]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,3,1,1,1] (.cons (f725s0) (.cons (f725s1) (.cons (f725s2) (.cons (f725s3) (.cons (f725s4) (.cons (f725s5) (.cons (f725s6) (.cons (f725s7) .nil))))))))
private abbrev rf726 (i : Nat) := Split43.four 8 i ⟨0,2,0,4,5,6⟩ [0,0] [0,3,1,2,0]
certRow f726s0 on (rf726 0) using bank tags [28,28,3]
certRow f726s1 on (rf726 1) using bank tags [3,3,28]
certRow f726s2 on (rf726 2) using bank tags [3,3,28,28,28,28,3,28,28,28,28,3,28]
certRow f726s3 on (rf726 3) using bank tags [28,28,28,28,1]
certRow f726s4 on (rf726 4) using bank tags [28,28,3,3,28,0,215] except [Floor44.e4846200013754]
certRow f726s5 on (rf726 5) using bank tags [28,28,28,28,28,28,28]
certRow f726s6 on (rf726 6) using bank tags [3,3,28]
certRow f726s7 on (rf726 7) using bank tags [28,28,28,28,13,24,13,24]
theorem f726 (hard : BadRow [Floor44.e4846200013754]) : BadRow (Grammar43.fourRow ⟨0,2,0,4,5,6⟩ [0,0] [0,3,1,2,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,4,5,6⟩ [0,0] [0,3,1,2,0] (.cons (f726s0) (.cons (f726s1) (.cons (f726s2) (.cons (f726s3) (.cons (f726s4 (.cons (hard.get (by decide : Floor44.e4846200013754 ∈ [Floor44.e4846200013754])) .nil)) (.cons (f726s5) (.cons (f726s6) (.cons (f726s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
