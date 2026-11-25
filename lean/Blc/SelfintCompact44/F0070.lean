import Blc.SelfintCompact44.Base
namespace Blc.SelfintSingleObject.Compact44
open SourceRefutations OperandGrammar RowReplay
set_option maxRecDepth 36000
set_option maxHeartbeats 50000000
set_option Elab.async false
private abbrev rf401 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,2,0,1,0]
certRow f401s0 on (rf401 0) using bank tags [3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,0,0,0,0,0] except [Floor44.e4846212150074,Floor44.e4846212149978,Floor44.e4846212136250,Floor44.e4846212136154,Floor44.e4846212132698]
certRow f401s1 on (rf401 1) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28]
certRow f401s2 on (rf401 2) using bank tags [3,3,3,3,3,28,28,6,6,6,6,6,6]
certRow f401s3 on (rf401 3) using bank tags [3,3,3,3,85,0,0,113,151,70] except [Floor44.e4846201388314,Floor44.e4846201027866]
certRow f401s4 on (rf401 4) using bank tags [3,3,3,3,3,28,28,28,28,28,28,28]
certRow f401s5 on (rf401 5) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f401s6 on (rf401 6) using bank tags [28,28,28,28,28,28,28,28,28,28,28,28,28,28]
certRow f401s7 on (rf401 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3]
certRow f401s8 on (rf401 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28,28]
certRow f401s9 on (rf401 9) using bank tags [28,28,28,28,28,28]
certRow f401s10 on (rf401 10) using bank tags []
certRow f401s11 on (rf401 11) using bank tags [3,3,3,3,3,28,28,28,3,3,3,3,3,3,3,28,28,28,28,28,28]
theorem f401 (hard : BadRow [Floor44.e4846212150074,Floor44.e4846212149978,Floor44.e4846212136250,Floor44.e4846212136154,Floor44.e4846212132698,Floor44.e4846201388314,Floor44.e4846201027866]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,2,0,1,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,2,0,1,0] (.cons (f401s0 (.cons (hard.get (by decide : Floor44.e4846212150074 ∈ [Floor44.e4846212150074,Floor44.e4846212149978,Floor44.e4846212136250,Floor44.e4846212136154,Floor44.e4846212132698,Floor44.e4846201388314,Floor44.e4846201027866])) (.cons (hard.get (by decide : Floor44.e4846212149978 ∈ [Floor44.e4846212150074,Floor44.e4846212149978,Floor44.e4846212136250,Floor44.e4846212136154,Floor44.e4846212132698,Floor44.e4846201388314,Floor44.e4846201027866])) (.cons (hard.get (by decide : Floor44.e4846212136250 ∈ [Floor44.e4846212150074,Floor44.e4846212149978,Floor44.e4846212136250,Floor44.e4846212136154,Floor44.e4846212132698,Floor44.e4846201388314,Floor44.e4846201027866])) (.cons (hard.get (by decide : Floor44.e4846212136154 ∈ [Floor44.e4846212150074,Floor44.e4846212149978,Floor44.e4846212136250,Floor44.e4846212136154,Floor44.e4846212132698,Floor44.e4846201388314,Floor44.e4846201027866])) (.cons (hard.get (by decide : Floor44.e4846212132698 ∈ [Floor44.e4846212150074,Floor44.e4846212149978,Floor44.e4846212136250,Floor44.e4846212136154,Floor44.e4846212132698,Floor44.e4846201388314,Floor44.e4846201027866])) .nil)))))) (.cons (f401s1) (.cons (f401s2) (.cons (f401s3 (.cons (hard.get (by decide : Floor44.e4846201388314 ∈ [Floor44.e4846212150074,Floor44.e4846212149978,Floor44.e4846212136250,Floor44.e4846212136154,Floor44.e4846212132698,Floor44.e4846201388314,Floor44.e4846201027866])) (.cons (hard.get (by decide : Floor44.e4846201027866 ∈ [Floor44.e4846212150074,Floor44.e4846212149978,Floor44.e4846212136250,Floor44.e4846212136154,Floor44.e4846212132698,Floor44.e4846201388314,Floor44.e4846201027866])) .nil))) (.cons (f401s4) (.cons (f401s5) (.cons (f401s6) (.cons (f401s7) (.cons (f401s8) (.cons (f401s9) (.cons (f401s10) (.cons (f401s11) .nil))))))))))))
private abbrev rf402 (i : Nat) := Split43.four 12 i ⟨0,2,0,3,6,4⟩ [0,0] [0,1,2,1,0,0]
certRow f402s0 on (rf402 0) using bank tags [3,3,3,3,3,28,28,28,0,0,0] except [Floor44.e4846212150170,Floor44.e4846212149994,Floor44.e4846212136170]
certRow f402s1 on (rf402 1) using bank tags [3,3,3,3,3,3,3,3,3,3]
certRow f402s2 on (rf402 2) using bank tags [3,3,3,3,3,28,28,18,18,16,16,16]
certRow f402s3 on (rf402 3) using bank tags [3,3,3,3,22,229,113,22]
certRow f402s4 on (rf402 4) using bank tags [3,3,3,28,28,28,28,28,28,28]
certRow f402s5 on (rf402 5) using bank tags [3,3,3,3,3,3,3,3,3,3,28]
certRow f402s6 on (rf402 6) using bank tags [28,28,28,28,28,28,28,28,28]
certRow f402s7 on (rf402 7) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,0] except [Floor44.e4846201401754]
certRow f402s8 on (rf402 8) using bank tags [3,3,3,3,3,3,3,3,3,3,3,3,3,3,28,28,28,28,28]
certRow f402s9 on (rf402 9) using bank tags [28,28,28,28,28]
certRow f402s10 on (rf402 10) using bank tags []
certRow f402s11 on (rf402 11) using bank tags [3,3,3,28,28,3,3,3,3,28,28,28,28]
theorem f402 (hard : BadRow [Floor44.e4846212150170,Floor44.e4846212149994,Floor44.e4846212136170,Floor44.e4846201401754]) : BadRow (Grammar43.fourRow ⟨0,2,0,3,6,4⟩ [0,0] [0,1,2,1,0,0]) :=
  Split43.four_cover 12 (by decide) ⟨0,2,0,3,6,4⟩ [0,0] [0,1,2,1,0,0] (.cons (f402s0 (.cons (hard.get (by decide : Floor44.e4846212150170 ∈ [Floor44.e4846212150170,Floor44.e4846212149994,Floor44.e4846212136170,Floor44.e4846201401754])) (.cons (hard.get (by decide : Floor44.e4846212149994 ∈ [Floor44.e4846212150170,Floor44.e4846212149994,Floor44.e4846212136170,Floor44.e4846201401754])) (.cons (hard.get (by decide : Floor44.e4846212136170 ∈ [Floor44.e4846212150170,Floor44.e4846212149994,Floor44.e4846212136170,Floor44.e4846201401754])) .nil)))) (.cons (f402s1) (.cons (f402s2) (.cons (f402s3) (.cons (f402s4) (.cons (f402s5) (.cons (f402s6) (.cons (f402s7 (.cons (hard.get (by decide : Floor44.e4846201401754 ∈ [Floor44.e4846212150170,Floor44.e4846212149994,Floor44.e4846212136170,Floor44.e4846201401754])) .nil)) (.cons (f402s8) (.cons (f402s9) (.cons (f402s10) (.cons (f402s11) .nil))))))))))))
end Blc.SelfintSingleObject.Compact44
