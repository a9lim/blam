import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf403 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,3,0,0,0]
certRow f403s0 on (rf403 0) using bank tags [28,28,28,28,28]
certRow f403s1 on (rf403 1) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f403s2 on (rf403 2) using bank tags [28,28,28,28,28,28,28,13,13,13,13,13,13,13,13,13]
certRow f403s3 on (rf403 3) using bank tags [28,28]
certRow f403s4 on (rf403 4) using bank tags [28,28,28,28]
certRow f403s5 on (rf403 5) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f403s6 on (rf403 6) using bank tags [28,28]
certRow f403s7 on (rf403 7) using bank tags [28,28,28,28,28,28,28,28,28,0,18,18,6,0] except [Floor44.e4846199979674,Floor44.e4846166069162]
theorem f403 (hard : BadRow [Floor44.e4846199979674,Floor44.e4846166069162]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,3,0,0,0]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,3,0,0,0] (.cons (f403s0) (.cons (f403s1) (.cons (f403s2) (.cons (f403s3) (.cons (f403s4) (.cons (f403s5) (.cons (f403s6) (.cons (f403s7 (.cons (hard.get (by decide : Floor44.e4846199979674 ∈ [Floor44.e4846199979674,Floor44.e4846166069162])) (.cons (hard.get (by decide : Floor44.e4846166069162 ∈ [Floor44.e4846199979674,Floor44.e4846166069162])) .nil))) .nil))))))))
private abbrev rf404 (i : Nat) := Split43.four 8 i ⟨0,2,0,3,6,4⟩ [0,0] [0,2,0,0,0,2]
certRow f404s0 on (rf404 0) using bank tags [28,28]
certRow f404s1 on (rf404 1) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f404s2 on (rf404 2) using bank tags [28,28,28,28,28,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
certRow f404s3 on (rf404 3) using bank tags [28,28,28,28,28]
certRow f404s4 on (rf404 4) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f404s5 on (rf404 5) using bank tags [28,28,28,28]
certRow f404s6 on (rf404 6) using bank tags [28,28]
certRow f404s7 on (rf404 7) using bank tags [28,28,28,28,28]
theorem f404 : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,2,0,0,0,2]) :=
  Split43.four_cover 8 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,2,0,0,0,2] (.cons (f404s0) (.cons (f404s1) (.cons (f404s2) (.cons (f404s3) (.cons (f404s4) (.cons (f404s5) (.cons (f404s6) (.cons (f404s7) .nil))))))))
end Blc.SelfintSingleObject.Compact44
